<?php
/**
* @package      EasySocial
* @copyright    Copyright (C) 2010 - 2014 Stack Ideas Sdn Bhd. All rights reserved.
* @license      GNU/GPL, see LICENSE.php
* EasySocial is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined('_JEXEC') or die('Unauthorized Access');

class SocialEventAppDiscussionsHookNotificationComments
{
    public function execute(&$item)
    {
        // Get comment participants
        $model = FD::model('Comments');
        $users = $model->getParticipants($item->uid, $item->context_type);

        // Include the actor of the stream item as the recipient
        $users = array_merge(array($item->actor_id), $users);

        // Ensure that the values are unique
        $users = array_unique($users);
        $users = array_values($users);

        // Exclude myself from the list of users.
        $index = array_search(ES::user()->id, $users);

        // If the skipExcludeUser is true, we don't unset myself from the list
        if (isset($item->skipExcludeUser) && $item->skipExcludeUser) {
            $index = false;
        }

        if ($index !== false) {
            unset($users[$index]);
            $users = array_values($users);
        }

        // Convert the names to stream-ish
        $names  = FD::string()->namesToNotifications($users);

        // $item->uid is coming from comment->uid
        // $item->uid is also the stream id
        $stream = FD::table('Stream');
        $stream->load($item->uid);
        $streamItems = $stream->getItems();

        $discussion = FD::table('Discussion');
        $discussion->load($streamItems[0]->context_id);

        $event = FD::event($discussion->uid);

        // By default content is always empty;
        $content = '';

        // Only show the content when there is only 1 user
        if (count($users) == 1 && !empty($item->content)) {
            $content = JString::substr(strip_tags($item->content), 0, 30);

            if (JString::strlen($item->content) > 30) {
                $content .= JText::_('COM_EASYSOCIAL_ELLIPSES');
            }
        }

        $item->content = $content;

        $isOwner = $discussion->created_by == $item->target_id && $item->target_type == SOCIAL_TYPE_USER;

        if ($item->context_type === 'discussions.event.create') {

            if ($isOwner) {
                $string = FD::string()->computeNoun('APP_EVENT_DISCUSSIONS_USER_COMMENTED_ON_YOUR_DISCUSSION', count($users));
                $item->title = JText::sprintf($string, $names, $event->getName());
            } else {
                $string = FD::string()->computeNoun('APP_EVENT_DISCUSSIONS_USER_COMMENTED_ON_USERS_DISCUSSION', count($users));
                $item->title = JText::sprintf($string, $names, FD::user($discussion->created_by)->getName(), $event->getName());
            }
        }

        if ($item->context_type === 'discussions.event.reply') {
            if ($isOwner) {
                $string = FD::string()->computeNoun('APP_EVENT_DISCUSSIONS_USER_COMMENTED_ON_YOUR_REPLY', count($users));
                $item->title = JText::sprintf($string, $names, $event->getName());
            } else {
                $string = FD::string()->computeNoun('APP_EVENT_DISCUSSIONS_USER_COMMENTED_ON_USERS_REPLY', count($users));
                $item->title = JText::sprintf($string, $names, FD::user($discussion->created_by)->getName(), $event->getName());
            }
        }
    }
}
