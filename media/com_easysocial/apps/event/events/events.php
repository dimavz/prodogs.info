<?php
/**
* @package      EasySocial
* @copyright    Copyright (C) 2010 - 2017 Stack Ideas Sdn Bhd. All rights reserved.
* @license      GNU/GPL, see LICENSE.php
* EasySocial is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined('_JEXEC') or die('Unauthorized Access');

class SocialEventAppEvents extends SocialAppItem
{
	public function onStreamVerbExclude(&$exclude)
	{
		$params = $this->getParams();

		$excludeVerb = array();

		if (!$params->get('stream_create', true)) {
			$excludeVerb[] = 'create';
		}

		$excludeVerb[] = 'update';
		$exclude['events'] = $excludeVerb;

		// since we are remmoving these stream setting from user app, for site that upgraded from 1.4, we still
		// need to exclude these items.
		$excludeVerb = array();

		if (!$params->get('stream_going', true)) {
			$excludeVerb[] = 'going';
		}

		$excludeVerb[] = 'feature';
		$excludeVerb[] = 'update';
		$excludeVerb[] = 'makeadmin';
		$excludeVerb[] = 'notgoing';

		$exclude['guests'] = $excludeVerb;

	}

	/**
	 * Prepares the stream item
	 *
	 * @since   2.0
	 * @access  public
	 */
	public function onPrepareStream(SocialStreamItem &$item, $includePrivacy = true)
	{
		// We only want to process related items
		if ($item->cluster_type !== SOCIAL_TYPE_EVENT || empty($item->cluster_id)) {
			return;
		}

		// Context are split into events and nodes
		// "events" context are stream items that are related to event item
		// "guests" context are stream items that are related to guests of the event
		// Only process "events" context here
		// "guests" context are processed in the app/event/guests app
		if ($item->context !== 'events') {
			return;
		}

		$event = $item->getCluster();

		// Only show Social sharing in public group
		if (!$event->isOpen()) {
			$item->sharing = false;
		}

		if (!$event->canViewItem()) {
			return;
		}

		// If the event is pending and is a new item, this means this event is created from the story form, and we want to show a message stating that the event is in pending
		if ($event->isPending()) {

			// Newly created event from story panel
			if (!empty($item->isNew)) {
				$item->title = JText::_('APP_USER_EVENTS_STREAM_EVENT_PENDING_APPROVAL');
				$item->display = SOCIAL_STREAM_DISPLAY_MINI;
			}

			return;
		}

		if (!$this->getParams()->get('stream_' . $item->verb, true)) {
			return;
		}

		$access = $event->getAccess();
		if ($item->verb == 'create' && ($this->my->isSiteAdmin() || $event->isAdmin() || ($access->get('stream.edit', 'admins') == 'members' && $item->actor->id == $this->my->id))) {
			$item->edit_link = $event->getEditPermalink();;
		}

		// There are possibility that this is a cluster event
		if ($event->isGroupEvent()) {
			$this->set('group', $event->getGroup());
		}

		if ($event->isPageEvent()) {
			$page = $event->getPage();
			$this->set('page', $page);

			// For Page, we need to manually ceate the likes and comments object
			$item->likes = ES::likes($item->contextId , $item->context, $item->verb, SOCIAL_APPS_GROUP_PAGE, $item->uid, array('clusterId' => $page->id));

			$commentParams = array('url' => ESR::stream(array('layout' => 'item', 'id' => $item->uid)), 'clusterId' => $page->id);
			$item->comments = ES::comments($item->contextId, $item->context, $item->verb, SOCIAL_APPS_GROUP_PAGE, $commentParams, $item->uid);

			// Set an alias for actor
			// This is to change the actor avatar to use Page's avatar
			$item->setActorAlias($page);
		}

		$this->set('event', $event);
		$this->set('actor', $item->actor);

		$item->display = SOCIAL_STREAM_DISPLAY_FULL;

		if ($item->verb == 'going' || $item->verb == 'update') {
			$item->display = SOCIAL_STREAM_DISPLAY_MINI;
		}

		$item->title = parent::display('themes:/site/streams/events/' . $item->verb . '.title');
		$item->preview = parent::display('themes:/site/streams/events/preview');

		// APP_EVENT_EVENTS_STREAM_OPENGRAPH_UPDATE
		// APP_EVENT_EVENTS_STREAM_OPENGRAPH_CREATE
		// APP_EVENT_EVENTS_STREAM_OPENGRAPH_FEATURE
		// Append the opengraph tags
		$item->addOgDescription(JText::sprintf('APP_EVENT_EVENTS_STREAM_OPENGRAPH_' . strtoupper($item->verb), $item->actor->getName(), $event->getName()));
	}

	public function onNotificationLoad(SocialTableNotification &$item)
	{
		$allowedCmd = array('likes.item', 'likes.involved', 'comments.item', 'comments.involved');

		if (!in_array($item->cmd, $allowedCmd)) {
			return;
		}

		$allowedContext = array('events.event.create', 'events.event.featured', 'events.event.update');

		if (!in_array($item->context_type, $allowedContext)) {
			return;
		}

		$event = ES::event($item->uid);
		$actor = ES::user($item->actor_id);

		$hook = $this->getHook('notification', $item->type);
		$hook->execute($item);

		return;
	}

	public function onAfterCommentSave($comment)
	{
		$segments = explode('.', $comment->element);

		if (count($segments) !== 3 || $segments[1] !== SOCIAL_TYPE_EVENT) {
			return;
		}

		list($element, $group, $verb) = explode('.', $comment->element);

		if ($element !== 'events') {
			return;
		}

		// Get the actor
		$actor = ES::user($comment->created_by);

		$event = ES::event($comment->uid);

		$stream = ES::table('Stream');
		$stream->load($comment->stream_id);

		$owner = ES::user($stream->actor_id);

		// APP_USER_EVENTS_EMAILS_FEATURE_COMMENT_ITEM_SUBJECT
		// APP_USER_EVENTS_EMAILS_CREATE_COMMENT_ITEM_SUBJECT
		// APP_USER_EVENTS_EMAILS_UPDATE_COMMENT_ITEM_SUBJECT
		// APP_USER_EVENTS_EMAILS_FEATURE_COMMENT_INVOLVED_SUBJECT
		// APP_USER_EVENTS_EMAILS_CREATE_COMMENT_INVOLVED_SUBJECT
		// APP_USER_EVENTS_EMAILS_UPDATE_COMMENT_INVOLVED_SUBJECT

		// apps/user/events/feature.comment.item
		// apps/user/events/create.comment.item
		// apps/user/events/update.comment.item
		// apps/user/events/feature.comment.involved
		// apps/user/events/create.comment.involved
		// apps/user/events/update.comment.involved

		$emailOptions = array(
			'title' => 'APP_USER_EVENTS_EMAILS_' . strtoupper($verb) . '_COMMENT_ITEM_SUBJECT',
			'template' => 'apps/user/events/' . $verb . '.comment.item',
			'permalink' => $stream->getPermalink(true, true),
			'actor' => $actor->getName(),
			'actorAvatar' => $actor->getAvatar(SOCIAL_AVATAR_SQUARE),
			'actorLink' => $actor->getPermalink(true, true),
			'comment' => $comment->comment
		);

		 $systemOptions  = array(
			'context_type' => $comment->element,
			'content' => $comment->comment,
			'url' => $stream->getPermalink(false, false, false),
			'actor_id' => $comment->created_by,
			'uid' => $comment->uid,
			'aggregate' => true
		);

		 // Notify the owner first
		 if ($comment->created_by != $owner->id) {
			ES::notify('comments.item', array($owner->id), $emailOptions, $systemOptions);
		 }

		 // Get a list of recipients to be notified for this stream item
		 // We exclude the owner of the discussion and the actor of the comment here
		 $recipients = $this->getStreamNotificationTargets($comment->uid, $element, $group, $verb, array(), array($owner->id, $comment->created_by));

		 $emailOptions['title'] = 'APP_USER_EVENTS_EMAILS_' . strtoupper($verb) . '_COMMENT_INVOLVED_SUBJECT';
		 $emailOptions['template'] = 'apps/user/events/' . $verb . '.comment.involved';

		 // Notify other participating users
		 ES::notify('comments.involved', $recipients, $emailOptions, $systemOptions);
	}

	public function onAfterLikeSave($likes)
	{
		$segments = explode('.', $likes->type);

		if (count($segments) !== 3 || $segments[1] !== SOCIAL_TYPE_EVENT) {
			return;
		}

		list($element, $group, $verb) = explode('.', $likes->type);

		if ($element !== 'events') {
			return;
		}

		$actor = ES::user($likes->created_by);
		$event = ES::event($likes->uid);

		$stream = ES::table('Stream');
		$stream->load($likes->stream_id);

		$owner = ES::user($stream->actor_id);

		$systemOptions = array(
			'context_type' => $likes->type,
			'url' => FRoute::stream(array('layout' => 'item', 'id' => $likes->stream_id, 'sef' => false)),
			'actor_id' => $likes->created_by,
			'uid' => $likes->uid,
			'aggregate' => true
		);

		// Notify the owner first
		if ($likes->created_by != $owner->id) {
			ES::notify('likes.item', array($owner->id), false, $systemOptions);
		}

		// Get a list of recipients to be notified for this stream item
		// We exclude the guest and the actor of the like here
		$recipients = $this->getStreamNotificationTargets($likes->uid, $element, $group, $verb, array(), array($owner->id, $likes->created_by));

		ES::notify('likes.involved', $recipients, false, $systemOptions);
	}
}
