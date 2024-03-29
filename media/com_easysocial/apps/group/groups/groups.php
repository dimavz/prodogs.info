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

ES::import('admin:/includes/apps/apps');

class SocialGroupAppGroups extends SocialAppItem
{
	public function onBeforeStorySave($template, $stream)
	{
		if (!$template->cluster_id || !$template->cluster_type) {
			return;
		}

		if ($template->cluster_type != SOCIAL_TYPE_GROUP) {
			return;
		}

		$group = FD::group($template->cluster_id);
		$params = $group->getParams();
		$moderate = (bool) $params->get('stream_moderation', false);

		// If not configured to moderate, skip this altogether
		if (!$moderate) {
			return;
		}

		// If the current user is a site admin or group admin or group owner, we shouldn't moderate anything
		if ($group->isAdmin() || $group->isOwner() || $this->my->isSiteAdmin()) {
			return;
		}

		// When the script reaches here, we're assuming that the group wants to moderate stream items.
		$template->setState(SOCIAL_STREAM_STATE_MODERATE);
	}

	/**
	 * Processes notification for users notification within the group
	 *
	 * @since	1.2
	 * @access	public
	 */
	public function onNotificationLoad(SocialTableNotification &$item)
	{
		$allowed = array('groups.user.rejected', 'groups.promoted', 'groups.user.removed', 'group.invited', 'group.requested', 'group.joined', 'group.leave', 'group.approved');

		if (!in_array($item->cmd, $allowed)) {
			return;
		}

		$hook = $this->getHook('notification', 'group');

		return $hook->execute($item);
	}

	/**
	 * Triggered to validate the stream item whether should put the item as valid count or not.
	 *
	 * @since	1.2
	 * @access	public
	 * @param	jos_social_stream, boolean
	 * @return  0 or 1
	 */
	public function onStreamCountValidation( &$item, $includePrivacy = true )
	{
		// If this is not it's context, we don't want to do anything here.
		if( $item->context_type != 'groups' )
		{
			return false;
		}

		// if this is a cluster stream, let check if user can view this stream or not.
		$params 	= FD::registry( $item->params );
		$group 		= FD::group( $params->get( 'group' ) );

		if( !$group )
		{
			return;
		}

		$item->cnt = 1;

		if (!$group->isPublic() && !$group->isMember()) {
			$item->cnt = 0;
		}

		return true;
	}

	/**
	 * Responsible to return the excluded verb from this app context
	 *
	 * @since	1.2
	 * @access	public
	 */
	public function onStreamVerbExclude(&$exclude)
	{
		// Get app params
		// Get app params
		$params	= $this->getParams();

		$excludeVerb = false;

		if (! $params->get('stream_join', true)) {
			$excludeVerb[] = 'join';
		}

		if (! $params->get('stream_create', true)) {
			$excludeVerb[] = 'created';
		}

		if (! $params->get('stream_leave', true)) {
			$excludeVerb[] = 'leave';
		}

		if (! $params->get('stream_admin', true)) {
			$excludeVerb[] = 'makeadmin';
		}

		if (! $params->get('stream_update', true)) {
			$excludeVerb[] = 'update';
		}

		if ($excludeVerb !== false) {
			$exclude['groups'] = $excludeVerb;
		}
	}

	/**
	 * Responsible to generate the stream items
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function onPrepareStream(SocialStreamItem &$item, $includePrivacy = true)
	{
		// We only want to process related items
		if ($item->context != 'groups') {
			return;
		}

		$group = $item->getCluster();

		// We do not want stream items to contain the repost link
		if (!$group->isMember()) {
			$item->repost = false;
			$item->commentLink = false;
			$item->commentForm = false;
		}

		// Only show Social sharing in public group
		if (!$group->isOpen()) {
			$item->sharing = false;
		}

		// Check if the viewer can view items from this group
		if (!$group->canViewItem()) {
			return;
		}

		$params = $item->getParams();
		$appParams = $this->getParams();

		// We don't want to display groups that are invitation only.
		if ($group->type == SOCIAL_GROUPS_INVITE_TYPE) {
			return;
		}

		// All the streams would require these
		$this->set('item', $item);
		$this->set('group', $group);
		$this->set('actor', $item->actor);

		if ($item->verb == 'join' && $appParams->get('stream_join', true)) {
			$this->prepareJoinStream($item, $group, $params);
		}

		// Only process these item in groups view
		if ($item->getPerspective() == 'GROUPS') {
			if ($item->verb == 'leave' && $appParams->get('stream_leave', true)) {
				$this->prepareLeaveStream($item, $group, $params);
			}

			if ($item->verb == 'makeAdmin' && $appParams->get('stream_promoted', true)) {
				$this->prepareMakeAdminStream($item, $group, $params);
			}

			if ($item->verb == 'update' && $appParams->get('stream_update', true)) {
				$this->prepareUpdateStream($item, $group, $params);
			}
		}

		if ($item->verb == 'create' && $appParams->get('stream_create', true)) {
			$this->prepareCreateStream($item, $group, $params);
		}
	}

	/**
	 * Prepares the stream item when someone leaves the group
	 *
	 * @since	2.0
	 * @access	public
	 */
	private function prepareLeaveStream(SocialStreamItem &$item, SocialGroup $group, $params)
	{
		$item->display = SOCIAL_STREAM_DISPLAY_MINI;
		$item->title = parent::display('themes:/site/streams/groups/leave.title');

		// Append the opengraph tags
		$item->addOgDescription(JText::sprintf('APP_GROUP_GROUPS_STREAM_LEAVED_GROUP', $item->actor->getName(), $group->getName()));
	}

	/**
	 * Prepares the stream item when someone joins the group
	 *
	 * @since	2.0
	 * @access	public
	 */
	private function prepareJoinStream(SocialStreamItem &$item, SocialGroup $group, $params)
	{
		$item->display = SOCIAL_STREAM_DISPLAY_MINI;
		$item->title = parent::display('themes:/site/streams/groups/join.title');

		// Append the opengraph tags
		$item->addOgDescription(JText::sprintf('APP_GROUP_GROUPS_STREAM_HAS_JOIN_GROUP', $item->actor->getName()));
	}

	/**
	 * Prepares the stream item when someone is promoted to be the site admin
	 *
	 * @since	2.0
	 * @access	public
	 */
	private function prepareMakeAdminStream(SocialStreamItem &$item, SocialGroup $group, $params)
	{
		$item->display = SOCIAL_STREAM_DISPLAY_MINI;
		$item->title = parent::display('themes:/site/streams/groups/admin.title');

		// Append the opengraph tags
		$item->addOgDescription(JText::sprintf('APP_GROUP_GROUPS_STREAM_PROMOTED_TO_BE_ADMIN', $item->actor->getName()));
	}

	/**
	 * Prepares the stream item when someone edits the group
	 *
	 * @since	2.0
	 * @access	public
	 */
	private function prepareUpdateStream(SocialStreamItem &$item, SocialGroup $group, $params)
	{
		$item->title = parent::display('themes:/site/streams/groups/update.title');

		if ($item->getPerspective() == 'DASHBOARD') {
			$item->display = SOCIAL_STREAM_DISPLAY_FULL;
			$item->preview = parent::display('themes:/site/streams/groups/preview');
		} else {
			$item->display = SOCIAL_STREAM_DISPLAY_MINI;
		}

		// Append the opengraph tags
		$item->addOgDescription(JText::sprintf('APP_GROUP_GROUPS_STREAM_UPDATED_GROUP', $item->actor->getName()));
	}

	/**
	 * Generates the stream item for new group creation
	 *
	 * @since	2.0
	 * @access	public
	 */
	private function prepareCreateStream(SocialStreamItem &$item, SocialGroup $group, $params)
	{
		$access = $group->getAccess();
		if ($this->my->isSiteAdmin() || $group->isAdmin() || ($access->get('stream.edit', 'admins') == 'members' && $item->actor->id == $this->my->id)) {
			$item->edit_link = $group->getEditPermalink();;
		}

		// If we are in a groups perspective, it should just be a mini stream
		$item->title = parent::display('themes:/site/streams/groups/create.title');

		$item->display = SOCIAL_STREAM_DISPLAY_FULL;
		$item->preview = parent::display('themes:/site/streams/groups/preview');

		// Append the opengraph tags
		$item->addOgDescription(JText::sprintf('APP_GROUP_GROUPS_STREAM_CREATED_GROUP', $item->actor->getName(), $group->getName()));
	}

}
