<?php
/**
* @package		EasySocial
* @copyright	Copyright (C) 2010 - 2017 Stack Ideas Sdn Bhd. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* EasySocial is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined('_JEXEC') or die('Unauthorized Access');

require_once(__DIR__ . '/helper.php');

class SocialGroupAppLinks extends SocialAppItem
{
	public function onNotificationLoad(SocialTableNotification &$item)
	{
		return false;
	}

	/**
	 * Fixed legacy issues where the app is displayed on apps list of a group.
	 *
	 * @since	1.2
	 * @access	public
	 */
	public function appListing( $view , $id , $type )
	{
		return false;
	}

	/**
	 * Processes a saved story.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function onAfterStorySave( &$stream , &$streamItem , &$template )
	{
		// Get the link information from the request
		$link 		= JRequest::getVar( 'links_url' , '' );
		$title 		= JRequest::getVar( 'links_title' , '' );
		$content 	= JRequest::getVar( 'links_description' , '' );
		$image 		= JRequest::getVar( 'links_image' , '' );
		$video 		= JRequest::getVar( 'links_video' , '' );

		// If there's no data, we don't need to store in the assets table.
		if( empty( $title ) && empty( $content ) && empty( $image ) )
		{
			return;
		}

		$registry		= FD::registry();
		$registry->set( 'title'		, $title );
		$registry->set( 'content'	, $content );
		$registry->set( 'image'		, $image );
		$registry->set( 'link'		, $link );

		return true;
	}

	/**
	 * Triggered to validate the stream item whether should put the item as valid count or not.
	 *
	 * @since	1.2
	 * @access	public
	 */
	public function onStreamCountValidation( &$item, $includePrivacy = true )
	{
		// If this is not it's context, we don't want to do anything here.
		if( $item->context_type != 'links' )
		{
			return false;
		}

		// if this is a cluster stream, let check if user can view this stream or not.
		$params = FD::registry( $item->params );
		$group = FD::group( $params->get( 'group' ) );

		if (!$group) {
			return;
		}

		$item->cnt = 1;

		$my = FD::user();

		if ($group->type != SOCIAL_GROUPS_PUBLIC_TYPE && !$group->isMember($my->id)) {
			$item->cnt = 0;
		}

		return true;
	}

	/**
	 * Generates the stream item for links shared within a group
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function onPrepareStream(SocialStreamItem &$stream, $includePrivacy = true)
	{
		if ($stream->context != 'links') {
			return;
		}

		// Ensure that the viewer can really view the item
		$group = $stream->getCluster();

		if (!$group) {
			return;
		}

		if (!$group->canViewItem()) {
			return;
		}

		//get links object, in this case, is the stream_item
		$uid = $stream->uid;

		// Apply likes on the stream
		$stream->likes = ES::likes($stream->uid, $stream->context, $stream->verb, SOCIAL_APPS_GROUP_GROUP, $stream->uid);
		$stream->comments = ES::comments($stream->uid, $stream->context, $stream->verb, SOCIAL_APPS_GROUP_GROUP , array('url' => $stream->getPermalink()), $stream->uid);
		$stream->repost = ES::repost($stream->uid, SOCIAL_TYPE_STREAM, SOCIAL_APPS_GROUP_GROUP);
		$stream->display = SOCIAL_STREAM_DISPLAY_FULL;

		$assets = $stream->getAssets();

		if (empty($assets)) {
			return;
		}

		$access = $group->getAccess();
		if ($this->my->isSiteAdmin() || $group->isAdmin() || ($access->get('stream.edit', 'admins') == 'members' && $stream->actor->id == $this->my->id)) {
			$stream->editable = true;
			$stream->appid = $this->getApp()->id;
		}

		$assets = $assets[0];
		// Load the link object

		$link = ES::table('Link');
		$link->loadByLink($assets->get('link'));

		$oembed = $link->getOembed();
		$image = $link->getImage($assets);

		// Get app params
		$params = $this->getParams();

		// If necessary, feed in our own proxy to avoid http over https issues.
		$uri = JURI::getInstance();

		if ($params->get('stream_link_proxy', false) && ($oembed || $assets->get('image')) && $uri->getScheme() == 'https') {

			// Check if there are any http links
			if (isset($oembed->thumbnail) && $oembed->thumbnail && stristr($oembed->thumbnail, 'http://') !== false) {
				$oembed->thumbnail = FD::proxy($oembed->thumbnail);
			}

			if ($image && stristr($image, 'http://') !== false) {
				$image = FD::proxy($image);
			}
		}

		// Get the contents and truncate accordingly
		$content = $assets->get('content', '');

		if ($params->get('stream_link_truncate')) {
			$content = JString::substr(strip_tags($content), 0, $params->get('stream_link_truncate_length', 250)) . JText::_('COM_EASYSOCIAL_ELLIPSES');
		}

		// Append the opengraph tags
		if ($image) {
			$stream->addOgImage($image);
		}

		// Always add the opengraph contents
		$stream->addOgDescription($content);

		// If the content is empty, try to get the stream content
		if (!$content && $stream->content) {
			$stream->addOgDescription($stream->content);
		}

		// Fall back to use title as the opengraph description
		if (!$content && !$stream->content) {
			$stream->addOgDescription($stream->title);
		}

		$this->set('image', $image);
		$this->set('content', $content);
		$this->set('params', $params);
		$this->set('oembed', $oembed);
		$this->set('assets', $assets);
		$this->set('actor', $stream->actor);
		$this->set('stream', $stream);
		$this->set('group', $group);
		$this->set('link', $link);


		$stream->title = parent::display('themes:/site/streams/links/group/title');
		$stream->preview = parent::display('themes:/site/streams/links/preview');
	}


	/**
	 * Responsible to generate the activity logs.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function onPrepareActivityLog( SocialStreamItem &$item, $includePrivacy = true )
	{
		if ($item->context != 'links') {
			return;
		}

		//get story object, in this case, is the stream_item
		$tbl = ES::table('StreamItem');
		$tbl->load($item->uid);

		$uid = $tbl->uid;

		$privacy = $this->my->getPrivacy();

		$actor = $item->actor;
		$target = count( $item->targets ) > 0 ? $item->targets[0] : '';
		$assets = $item->getAssets($uid);

		if (!$assets) {
			return;
		}

		$assets = $assets[0];

		$this->set( 'assets', $assets );
		$this->set( 'actor' , $actor );
		$this->set( 'target', $target );
		$this->set( 'stream', $item );


		$item->display = SOCIAL_STREAM_DISPLAY_MINI;
		$item->title = parent::display( 'logs/' . $item->verb );

		return true;

	}

	/**
	 * Prepares the links in the story edit form
	 *
	 * @since	2.1
	 * @access	public
	 */
	public function onPrepareStoryEditForm(&$story, &$stream)
	{
		// preparing data for story edit.
		$data = array();

		// get all photos from this stream uid.
		$model = ES::model('Links');
		$link = $model->getStreamLink($stream->id);

		if ($link) {
			$data['link'] = $link;
		}

		$plugin = $this->onPrepareStoryPanel($story, true, $data);

		$story->panelsMain = array($plugin);
		$story->panels = array($plugin);
		$story->plugins = array($plugin);

		$contents = $story->editForm(false, $stream->id);

		return $contents;
	}

	/**
	 * Processes a story edit save.
	 *
	 * @since	2.1
	 * @access	public
	 */
	public function onAfterStoryEditSave(SocialTableStream &$stream)
	{
		// Only process links
		if ($stream->context_type != 'links') {
			return;
		}

		$data = array();
		$data['description'] = $this->input->get('links_description', '', 'default');
		$data['image'] = $this->input->get('links_image', '', 'default');
		$data['title'] = $this->input->get('links_title', '', 'default');
		$data['url'] = $this->input->get('links_url', '', 'default');
		// $data['video'] = $this->input->get('links_video', '', 'default');

		$model = ES::model('Links');
		$state = $model->updateStreamLink($stream->id, $data);

		return true;
	}

	/**
	 * Prepares what should appear in the story form.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function onPrepareStoryPanel($story, $isEdit = false, $data = array())
	{
		$params = $this->getParams();

		// Determine if we should attach ourselves here.
		$group = ES::group($story->cluster);

		if (!$params->get('story_links', true) || !$this->getApp()->hasAccess($group->category_id)) {
			return;
		}

		// Create plugin object
		$plugin = $story->createPlugin('links', 'panel');

		$title = JText::_('COM_EASYSOCIAL_STORY_LINK');
		$plugin->title = $title;

		// We need to attach the button to the story panel
		$theme = ES::themes();
		$theme->set('title', $plugin->title);

		$button = $theme->output('site/story/links/button');
		$form = $theme->output('site/story/links/form', array('data' => $data, 'isEdit' => $isEdit));

		$link = new stdClass();
		$link->url = null;

		if (isset($data['link'])) {
			$link = $data['link'];
		}

		// Attach the scripts
		$script = ES::script();
		$script->set('link', $link);
		$script->set('isEdit', $isEdit);
		$scriptFile = $script->output('site/story/links/plugin');

		$plugin->setHtml($button, $form);
		$plugin->setScript($scriptFile);

		return $plugin;
	}
}
