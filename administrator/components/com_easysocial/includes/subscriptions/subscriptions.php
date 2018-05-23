<?php
/**
* @package		EasySocial
* @copyright	Copyright (C) 2010 - 2016 Stack Ideas Sdn Bhd. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* EasySocial is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined('_JEXEC') or die('Unauthorized Access');

class SocialSubscriptions extends EasySocial
{
	public $table = null;

	public function __construct()
	{
		parent::__construct();
		
		// Assign the table
		$this->table = ES::table("Subscription");
	}

	/**
	 * Loads a subscription record
	 *
	 * @since	2.0
	 * @access	public
	 * @param	string
	 * @return	
	 */
	public function load($uid, $type, $group, $userId = null)
	{
		if (is_null($userId)) {
			$userId = $this->my->id;
		}

		$exists = $this->table->load(array('uid' => $uid, 'type' => $type . '.' . $group, 'user_id' => $userId));


		return $exists;
	}

	/**
	 * Magic methods to bind subscription properties to the table
	 *
	 * @since	2.0
	 * @access	public
	 * @param	string
	 * @return	
	 */
	public function set($key, $value)
	{
		$this->table->$key = $value;
	}

	/**
	 * Magic method to get properties which don't exist on this object but on the table
	 *
	 * @since	2.0
	 * @access	public
	 * @param	string
	 * @return
	 */
	public function __get($key)
	{
		if (isset($this->table->$key)) {
			return $this->table->$key;
		}

		if (isset($this->$key)) {
			return $this->$key;
		}

		return $this->table->$key;
	}

	/**
	 * Allows caller to subscribe a person
	 *
	 * @since	2.0
	 * @access	public
	 * @param	string
	 * @return	
	 */
	public function subscribe($uid, $type, $group)
	{
		// User should never be allowed to follow themselves.
		if ($this->my->id == $uid) {
			$this->setError('COM_EASYSOCIAL_FOLLOWERS_NOT_ALLOWED_TO_FOLLOW_SELF');
			return false;
		}

		// Determine if the current user is already a follower
		$subscribed = $this->isSubscribed($uid, $type, $group);

		// If it's already following, throw proper message
		if ($subscribed) {
			$this->setError('COM_EASYSOCIAL_SUBSCRIPTIONS_ERROR_ALREADY_FOLLOWING_USER');
			return false;
		}

		// If the user isn't alreayd following, create a new subscription record.
		$this->table->uid = $uid;
		$this->table->type = $type . '.' . $group;
		$this->table->user_id = $this->my->id;

		// Try to save the subscription now
		$state = $this->table->store();

		if (!$state) {
			$this->setError($this->table->getError());
			return false;
		}

		// Get the target user
		$user = ES::user($uid);

		// @badge: followers.follow
		ES::badges()->log('com_easysocial', 'followers.follow', $this->my->id, 'COM_EASYSOCIAL_FOLLOWERS_BADGE_FOLLOWING_USER');
		ES::badges()->log('com_easysocial', 'followers.followed', $user->id, 'COM_EASYSOCIAL_FOLLOWERS_BADGE_FOLLOWED');

		// @points: profile.follow
		ES::points()->assign('profile.follow', 'com_easysocial', $this->my->id);
		ES::points()->assign('profile.followed', 'com_easysocial', $user->id);


		// Share this on the stream.
		$stream = ES::stream();
		$streamTemplate = $stream->getTemplate();

		// Set the actor.
		$streamTemplate->setActor($this->my->id, SOCIAL_TYPE_USER);
		$streamTemplate->setContext($this->table->id , SOCIAL_TYPE_FOLLOWERS);
		$streamTemplate->setVerb('follow');
		$streamTemplate->setAccess('followers.view');
		$stream->add($streamTemplate);

        // Set the email options
        $emailOptions   = array(
            'title'     	=> 'COM_EASYSOCIAL_EMAILS_NEW_FOLLOWER_SUBJECT',
            'template'		=> 'site/followers/new.followers',
            'actor'     	=> $this->my->getName(),
            'actorAvatar'   => $this->my->getAvatar(SOCIAL_AVATAR_SQUARE),
            'actorLink'     => $this->my->getPermalink(true, true),
            'target'		=> $user->getName(),
            'targetLink'	=> $user->getPermalink(true, true),
            'totalFriends'		=> $this->my->getTotalFriends(),
            'totalFollowing'	=> $this->my->getTotalFollowing(),
            'totalFollowers'	=> $this->my->getTotalFollowers()
        );

        // Notify the target
		$state = ES::notify('profile.followed' , array($user->id), $emailOptions, array('url' => $this->my->getPermalink(false, false, false), 'actor_id' => $this->my->id , 'uid' => $uid));

		return true;
	}

	/**
	 * Allows caller to unsubscribe from an object
	 *
	 * @since	2.0
	 * @access	public
	 * @param	string
	 * @return	
	 */
	public function unsubscribe()
	{
		// Check if this record really exists
		if (!$this->table->id) {
			return false;
		}

		// Try to delete the record from the table first
		if (!$this->table->delete()) {
			$this->setError($this->table->getError());
			return false;
		}

		// Once unfollowed a user, delete the previously created streams
		$stream	= ES::stream();
		$stream->delete($this->table->id, SOCIAL_TYPE_FOLLOWERS);

		// Points integrations
		ES::points()->assign('profile.unfollow', 'com_easysocial', $this->table->user_id);
		ES::points()->assign('profile.unfollowed','com_easysocial', $this->table->uid);

		return true;
	}

	/**
	 * Determines if the user has already subscribed before
	 *
	 * @since	2.0
	 * @access	public
	 * @param	string
	 * @return	
	 */
	public function isSubscribed($uid, $element, $group = SOCIAL_APPS_GROUP_USER, $userId = null)
	{
		if (is_null($userId)) {
			$userId = ES::user()->id;
		}

		// This is the key of the subscriptions
		$key = $element . '.' . $group;

		$model = ES::model("Subscriptions");
		return $model->isFollowing($uid, $key, $userId);
	}

	/**
	 * Gets the target object of the subscription record
	 *
	 * @since	2.0
	 * @access	public
	 * @param	string
	 * @return	
	 */
	public function getTarget()
	{
		$target = ES::user($this->uid);

		return $target;
	}
}
