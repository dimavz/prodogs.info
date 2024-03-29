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

class SocialAppHookNotificationComments
{
	/**
	 * Processes likes notifications
	 *
	 * @since   1.2
	 * @access  public
	 */
	public function execute(&$item)
	{
		 // Get comment participants
		$model = ES::model('Comments');
		$users = $model->getParticipants($item->uid, $item->context_type);

		// Include the actor of the stream item as the recipient
		$users = array_merge(array($item->actor_id), $users);

		// Ensure that the values are unique
		$users = array_unique($users);
		$users = array_values($users);

		// Exclude myself from the list of users.
		$index = array_search(ES::user()->id , $users);

		if ($index !== false) {
			unset($users[$index]);
			$users = array_values($users);
		}

		// Convert the names to stream-ish
		$names = ES::string()->namesToNotifications($users);

		// Load the comment object since we have the context_ids
		$comment = ES::table('Comments');
		$comment->load($item->uid);

		switch ($item->cmd) {
			case 'comments.like':
				$item->title = JText::sprintf('COM_EASYSOCIAL_COMMENTS_LIKES_SYSTEM_TITLE', $names);
				break;
			case 'comments.tagged':
				if (!isset($item->content) || !$item->content) {
					$item->content = $comment->comment;
				}

				$item->title = JText::sprintf('COM_EASYSOCIAL_COMMENTS_TAGGED_SYSTEM_TITLE', $names);
				break;
			case 'comments.item':
			case 'comments.involved':
			default:
				if (!isset($item->content) || !$item->content) {
					$item->content = $comment->comment;
				}

				if ($item->title) {
					$item->title = JText::sprintf($item->title, $names);
				} else {
					$item->title = JText::sprintf('COM_EASYSOCIAL_COMMENTS_ITEM_SYSTEM_TITLE', $names);
				}
				break;
		}

		return;
	}
}