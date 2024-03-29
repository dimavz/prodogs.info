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

class SocialLikes extends EasySocial
{
	public $data = array();
	public $uid = null;
	public $element = null;
	public $group = null;
	public $verb = null;
	public $options = array();
	public $stream_id = null;
	public $uri = null;

	// Determines if anyone reacted to the current item
	private $hasReaction = false;

	public function __construct($uid = null, $element = null, $verb = null, $group = SOCIAL_APPS_GROUP_USER, $streamId = null, $options = array())
	{
		parent::__construct();

		$this->uid = $uid;
		$this->element = $element;
		$this->group = $group;
		$this->verb = $verb;
		$this->stream_id = $streamId;

		if (!empty($options['clusterId'])) {
			$this->setOption('clusterId', $options['clusterId']);
			$this->setOption('clusterType', $group);
		}

		if (!empty($options['uri'])) {
			$this->uri = $options['uri'];
		}

		if (!is_null($uid) && !is_null($element)) {
			$this->get($uid, $element, $verb, $group, $streamId, $options);
		}
	}

	public static function factory($uid = null, $element = null, $verb = null, $group = SOCIAL_APPS_GROUP_USER, $streamId = null, $options = array())
	{
		return new self($uid, $element, $verb, $group, $streamId, $options);
	}

	/**
	 * Determines if the provided user has liked the object.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function hasLiked($uid = null, $element = null, $verb = null, $group = SOCIAL_APPS_GROUP_USER, $userId = null)
	{
		if (is_null($uid)) {
			$uid = $this->uid;
		}

		if (is_null($element)) {
			$element = $this->element;
		}

		if (is_null($verb)) {
			$verb = $this->verb;
		}


		if (is_null($userId)) {
			$userId = $this->my->id;
		}

		if ($this->group) {
			$group = $this->group;
		}

		// Form the key
		$key = $this->formKeys($element, $group, $verb);

		$model = ES::model('Likes');
		$hasLiked = $model->hasLiked($uid, $key, $userId);

		return $hasLiked;
	}

	/**
	 * Get's the likes data for a particular item.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getCount($uid = null, $element = null, $verb = null, $group = null)
	{
		if (is_null($uid)) {
			$uid = $this->uid;
		}

		if (is_null($element)) {
			$element = $this->element;
		}

		if (is_null($verb)) {
			$verb = $this->verb;
		}

		if (is_null($group)) {
			$group = $this->group;
		}

		if (empty($group)) {
			$group = SOCIAL_APPS_GROUP_USER;
		}

		$key = $this->formKeys($element, $group, $verb);

		$model = ES::model('Likes');
		$count = $model->getLikesCount($uid, $key);

		return $count;
	}

	/**
	 * Get's the likes data for a particular item.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function get($id, $element, $verb = null, $group = SOCIAL_APPS_GROUP_USER, $streamId = false, $options = array(), $debug = false)
	{
		$model = ES::model('Likes');

		// Get the likes
		if ($streamId) {
			$this->reactions = $model->getReactionsResult($streamId, 'stream');
			$this->stream_id = $streamId;
			$this->data = $model->getLikes($streamId, 'stream');
		} else {
			$key = $this->formKeys($element, $group, $verb);
			$this->reactions = $model->getReactionsResult($id, $key);
			$this->data = $model->getLikes($id, $key);
		}

		// Determines if there are any reactions
		foreach ($this->reactions as $reaction) {
			if ($reaction->getTotal() > 0) {
				$this->hasReaction = true;
				break;
			}
		}

		if (!empty($options['clusterId'])) {
			$this->setOption('clusterId', $options['clusterId']);
			$this->setOption('clusterType', $group);
		}

		$this->uid = $id;
		$this->element = $element;
		$this->group = $group;
		$this->verb = $verb;

		return $this;
	}

	/**
	 * Reloads the data
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function refresh()
	{
		$this->get($this->uid, $this->element, $this->verb, $this->group);
	}

	/**
	 * Get's the likes data based on stream item.
	 *
	 * @since	1.2
	 * @access	public
	 */
	public function getStreamLike( $streamId )
	{
		$model 			= FD::model( 'Likes' );
		$this->data		= $model->getLikes( $streamId , 'stream' );

		if ($this->data) {
			$tmp = $this->data[0];

			$tmpData = explode( '.', $tmp->type);

			$this->uid		= $tmp->uid;
			$this->element	= $tmpData[0];
			$this->group	= $tmpData[1];

			unset($tmpData[0]);
			unset($tmpData[1]);

			$this->verb		= implode('.', $tmpData);
		}
	}

	/**
	 * Generates the key for likes
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	private function formKeys($element, $group, $verb = '')
	{
		$key = $element . '.' . $group;

		if ($verb) {
			$key = $key . '.' . $verb;
		}

		return $key;
	}

	public function setOption( $key, $value )
	{
		$this->options[ $key ] = $value;
	}

	/**
	 * Construct the key for this likes object
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getKey()
	{
		// Build the key for likes
		$key = $this->element . '.' . $this->group;

		if ($this->verb) {
			$key = $key . '.' . $this->verb;
		}

		return $key;
	}

	/**
	 * Determines if we should use the stream id based on the current type
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getStreamId()
	{
		if ($this->element == 'albums') {
			return '';
		}

		return $this->stream_id;
	}

	/**
	 * Retrieves the like table object
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function getUserReaction($uid = null, $element = null, $verb = null, $group = SOCIAL_APPS_GROUP_USER, $userId = null)
	{
		if (is_null($uid)) {
			$uid = $this->uid;
		}

		if (is_null($element)) {
			$element = $this->element;
		}

		if (is_null($verb)) {
			$verb = $this->verb;
		}


		if (is_null($userId)) {
			$userId = $this->my->id;
		}

		if ($this->group) {
			$group = $this->group;
		}

		// Form the key
		$key = $this->formKeys($element, $group, $verb);

		$table = ES::table('Likes');
		$table->load(array('type' => $key, 'created_by' => $userId, 'uid' => $uid));

		return $table;
	}

	/**
	 * Generates the like link.
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function button($buttonStyle = false)
	{
		ES::language()->loadSite();
		$model = ES::model('Likes');

		// We should respect the stream id or if it is photos, we won't use the stream id
		$streamId = !$this->stream_id || $this->element == 'photos' ? false : $this->stream_id;

		// Get a list of reactions
		$reactions = $model->getReactions();

		// We need to get the reaction of the user against this object
		$selectedReaction = $model->getUserReaction($this->uid, $this->formKeys($this->element, $this->group, $this->verb), $this->my->id, $streamId);

		// Should we inject the stream id
		$streamid = $this->stream_id;

		if (!empty($this->options['streamid'])) {
			$streamid = $this->options['streamid'];
		}

		$clusterId = '';

		if (!empty($this->options['clusterId'])) {
			$clusterId = $this->options['clusterId'];
		}

		$theme = ES::themes();
		$theme->set('selectedReaction', $selectedReaction);
		$theme->set('reactions', $reactions);
		$theme->set('buttonStyle', $buttonStyle);
		$theme->set('uid', $this->uid);
		$theme->set('element', $this->element);
		$theme->set('group', $this->group);
		$theme->set('verb', $this->verb);
		$theme->set('streamid', $streamid);
		$theme->set('clusterId', $clusterId);

		$output = $theme->output('site/likes/action');

		return $output;
	}

	/**
	 * Generates the likes output
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function html()
	{
		ES::language()->loadSite();

		$type = SOCIAL_TYPE_STREAM;

		if ($this->element == SOCIAL_TYPE_COMMENTS) {
			$type = SOCIAL_TYPE_COMMENTS;
		}

		// We only need the reactions list for activity stream
		$text = '';

		if ($type == SOCIAL_TYPE_STREAM) {
			$text = $this->hasReaction ? $this->toString() : '';
		}

		$theme = ES::themes();
		$theme->set('totalReactions', count($this->data));
		$theme->set('hasReaction', $this->hasReaction);
		$theme->set('reactions', $this->reactions);
		$theme->set('text', $text);
		$theme->set('uid', $this->uid);
		$theme->set('element', $this->element);
		$theme->set('group', $this->group);
		$theme->set('verb', $this->verb);
		$theme->set('type', $type);

		$namespace = 'site/likes/item.' . $type;

		$output = $theme->output($namespace);

		return $output;
	}

	/**
	 * Deprecated. Use $likes->html();
	 *
	 * @deprecated 1.4
	 */
	public function toHTML()
	{
		return $this->html();
	}

	/**
	 * Retrieves the likes text
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function toString($viewerId = null, $plaintext = false, $useSimple = false)
	{
		// Default return text.
		$text = '';

		// If there's no likes at all, we should just return an empty string.
		if (!$this->data) {
			return $text;
		}

		// Get current logged in user as we need to know if the viewer is themselves or not.
		$viewer = ES::user($viewerId);

		// Ensure that the data is an array
		$data = !is_array($this->data) ? array($this->data) : $this->data;

		// List of users which liked this item.
		$users = array();
		$cluster = false;

		// [Page Compatibility] check if this like object is from page
		if (isset($this->options['clusterType']) && $this->options['clusterType'] == SOCIAL_TYPE_PAGE) {
			$cluster = ES::page($this->options['clusterId']);
		}

		// Retrieve only users
		foreach ($data as $like) {
			$users[] = $like->created_by;
		}

		$users = array_unique($users);

		// Determines if we should use the term YOU in the language string
		$useYou = in_array($viewer->id, $users);

		// Default to use 3rd party view of likes
		$language = 'COM_ES_USER_';

		// Unique the result
		$users = array_unique($users);

		// Get the total users in the likes
		$total = count($users);
		$remainder = 0;

		// Simple text
		if ($useSimple) {
			return JText::sprintf('COM_ES_TOTAL_REACTIONS', $total);
		}

		// If we need to use "you" within the language string
		if ($useYou) {
			$language 	= 'COM_ES_YOU_';
		}

		// Possibilities
		// 1. You reacted to this
		if ($total == 1 && $useYou) {
			$language 	.= 'REACTED_TO_THIS';
		}

		// Possibilities
		// 1. user1 reacted to this
		if ($total == 1 && !$useYou) {
			$language 	.= 'REACTED_TO_THIS';
		}

		// Possibilities
		// 1. You and user1 reacted to this
		// 2. user1 and user2 reacted to this
		if ($total == 2) {
			$language .= 'AND_1USER_REACTED';
		}

		// Possibilities
		// 1. You,user1 and user2 likes this
		// 2. user1 , user2 and user3 likes this
		if ($total == 3) {
			$language .= 'AND_2USERS_REACTED';
		}

		// Possibilities
		// 1. You,user1, user2 and user3 likes this
		// 2. user1, user2, user3 and user4 likes this
		if ($total == 4) {
			$language .= 'AND_3USERS_REACTED';
		}

		// Possibilities
		// 1. You, user1, user2 and 24 others like this
		// 2. user1, user2, user3 and 24 others like this
		if ($total > 4) {
			$language .= 'AND_OTHERS_REACTED';

			$remainder = $total - 3;
		}

		// If user is in the list, we need to relocate the viewer to the first index
		if ($useYou) {
			// Get the current viewer
			$key = array_search($viewer->id, $users);

			if ($key !== false) {
				unset($users[$key]);

				array_unshift($users, $viewer->id);
			}
		}

		// Get users
		$userlist = ES::user($users);

		// somehow FD::users messed up the user ordering.
		// let resort the user list.
		$tmpUsers = array();
		foreach ($users as $id) {
			if ($cluster && $cluster->isAdmin($id)) {
				$tmpUsers[] = $cluster;
			} else {
				$tmpUsers[] = ES::user($id);
			}
		}

		$users = $tmpUsers;

		if ($total < 1) {
			return;
		}


		$theme = ES::themes();
		$theme->set('total', $total);
		$theme->set('language', $language);
		$theme->set('users', $users);
		$theme->set('verb', $this->verb);
		$theme->set('uid', $this->uid);
		$theme->set('element', $this->element);
		$theme->set('group', $this->group);
		$theme->set('remainder', $remainder);

		$text = $theme->output('site/likes/string');

		return $text;
	}

	public function toArray()
	{
		return $this->data;
	}

	/**
	 * Allows 3rd party implementation to delete likes related to an object
	 *
	 * @since	1.0
	 * @access	public
	 * @param	int			The unique item id that is being liked
	 * @param	string		The unique item element that is being liked
	 * @param	int 		The current user that liked the item
	 * @return 	boolean 	true or false.
	 */
	public function delete( $uid = null , $element = null, $verb = null, $group = SOCIAL_APPS_GROUP_USER, $userId = null )
	{
		if( is_null( $uid ) )
		{
			$uid = $this->uid;
		}

		if( is_null( $element ) )
		{
			$element = $this->element;
		}

		if( is_null( $verb ) )
		{
			$verb = $this->verb;
		}

		if( is_null( $userId ) )
		{
			$userId = FD::user()->id;
		}

		$like 	= FD::table( 'Likes' );

		// Check if the user has already liked this item before.
		$exists = $like->load( array( 'uid' => $uid , 'type' => $this->formKeys( $element, $group, $verb ) , 'created_by' => $userId ) );

		// If item has been liked before, return false.
		if( !$exists )
		{
			return false;
		}

		$state 	= $like->delete();

		if( !$state )
		{
			return false;
		}

		$key = $uid . '.' . $this->formKeys( $element, $group, $verb );
		$model = ES::model('Likes');
		$model->removeCache($key, $userId);

		return true;
	}

	/**
	 * Allows 3rd party implementation to toggle likes to an object
	 *
	 * @since	1.0
	 * @access	public
	 * @param	int			The unique item id that is being liked
	 * @param	string		The unique item element that is being liked
	 * @param	int 		The current user that liked the item
	 * @return	SocialTableLikes
	 */
	public function toggle( $uid = null , $element = null , $verb = null, $group = SOCIAL_APPS_GROUP_USER, $userId = null )
	{
		if( is_null( $uid ) )
		{
			$uid = $this->uid;
		}

		if( is_null( $element ) )
		{
			$element = $this->element;
		}

		if( is_null( $verb ) )
		{
			$verb = $this->verb;
		}

		if( is_null( $userId ) )
		{
			$userId = FD::user()->id;
		}

		$like 	= FD::table( 'Likes' );

		// Check if the user has already liked this item before.
		$exists = $like->load( array( 'uid' => $uid , 'type' => $this->formKeys( $element, $group, $verb ) , 'created_by' => $userId ) );

		// If item has been liked before, return false.
		if( $exists )
		{
			$state 	= $this->delete( $uid , $element , $verb, $group, $userId );

			return $state;
		}

		return $this->add( $uid , $element , $verb, $group, $userId );
	}

	/**
	 * Allows 3rd party implementation to add likes to an object
	 *
	 * @since	1.0
	 * @access	public
	 * @param	int			The unique item id that is being liked
	 * @param	string		The unique item element that is being liked
	 * @param	int 		The current user that liked the item
	 * @return	SocialTableLikes
	 */
	public function add( $uid = null , $element = null , $verb = null, $group = SOCIAL_APPS_GROUP_USER, $userId = null )
	{
		if( is_null( $uid ) )
		{
			$uid = $this->uid;
		}

		if( is_null( $element ) )
		{
			$element = $this->element;
		}

		if( is_null( $verb ) )
		{
			$verb = $this->verb;
		}

		if( is_null( $userId ) )
		{
			$userId = FD::user()->id;
		}

		$like 	= FD::table( 'Likes' );

		// Check if the user has already liked this item before.
		$exists = $like->load( array( 'uid' => $uid , 'type' => $this->formKeys( $element, $group, $verb ) , 'created_by' => $userId ) );

		// If item has been liked before, return false.
		if( $exists )
		{
			return false;
		}

		$like->uid 	= $uid;
		$like->type = $this->formKeys( $element, $group, $verb );
		$like->created_by  = $userId;

		$state 	= $like->store();

		if( !$state )
		{
			return false;
		}

		// add into static variable
		$key = $uid . '.' . $this->formKeys($element, $group, $verb);

		$model = ES::model('Likes');
		$model->insertCache($key, $like);

		return $like;
	}

	/**
	 * Retrieve a list of users who liked this item
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getParticipants( $userObject = true )
	{
		$model = FD::model( 'likes' );
		$users = $model->getLikerIds( $this->uid, $this->formKeys( $this->element, $this->group, $this->verb ) );

		$objects = array();

		if( $users && $userObject )
		{
			foreach( $users as $user )
			{
				$objects[] = FD::user( $user );
			}

			return $objects;
		}

		return $users;
	}

	/**
	 * Allows caller to react to an item
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function react($reaction = 'like')
	{
		$key = $this->getKey();
		$streamId = $this->getStreamId();

		$model = ES::model('Likes');
		$state = $model->react($this->uid, $key, $this->my->id, $reaction, $streamId, $this->uri);

		if (!$state) {
			$this->setError($model->getError());
			return false;
		}

		// Refresh the data
		$this->refresh();

		if (!$streamId) {
			// Add custom points that are not related with streamid
			$this->processPoints('like');
			return $state;
		}

		// Now we need to update the associated stream id from the liked object
		$updateStream = $this->config->get('stream.pushtop.reactions', 1);

		if ($updateStream && $this->element == 'photos') {
			$streamModel = ES::model('Stream');
			$totalItem = $streamModel->getStreamItemsCount($streamId);

			if ($totalItem > 1) {
				$updateStream = false;
			}
		}

		if ($updateStream) {
			$stream = ES::stream();
			$stream->updateModified($streamId, $this->my->id, SOCIAL_STREAM_LAST_ACTION_LIKE);
		}

		// Assign like points to the stream author.
		$streamActor = $stream->getStreamActor($streamId);

		// Check if user trying to like his own post, do not add points.
		if ($streamActor->id != $this->my->id) {
			ES::points()->assign('post.like', 'com_easysocial', $streamActor->id);
		}

		return true;
	}

	/**
	 * Allows caller to withdraw a reaction
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function withdraw()
	{
		$key = $this->getKey();
		$streamId = $this->getStreamId();

		$model = ES::model('Likes');
		$state = $model->withdraw($this->uid, $key, $this->my->id, $streamId);

		if (!$state) {
			$this->setError($model->getError());
			return false;
		}

		// Refresh the data
		$this->refresh();

		if (!$streamId) {

			// Add custom points that are not related with streamid
			$this->processPoints('unlike');
			return $state;
		}

		// we need to revert the last action of this stream.
		if ($state && $streamId) {
			$stream = ES::stream();
			$stream->revertLastAction($streamId, $this->my->id, SOCIAL_STREAM_LAST_ACTION_LIKE);

			// Assign unlike points to the stream author.
			$streamActor = $stream->getStreamActor($streamId);

			// Check if user trying to unlike his own post, do not deduct the points.
			if ($streamActor->id != $this->my->id) {
				ES::points()->assign('post.unlike', 'com_easysocial', $streamActor->id);
			}
		}

		return true;
	}

	/**
	 * Process points integration that are associated with likes
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function processPoints($type)
	{
		// Add points for discussion apps
		if ($this->element == 'discussion') {

			// Get discussion data
			$discussion = ES::table('Discussion');
			$discussion->load($this->uid);

			if (!$discussion->id) {
				return;
			}

			// liked or unliked
			$likeType = $type . 'd';

			// groups.discussion.reply.liked
			$rule = $this->group . '.discussion.' . $likeType;

			// Reply
			if ($discussion->parent_id > 0) {
				$rule = $this->group . '.discussion.reply.' . $likeType;
			}

			// Give points and badges to the post author
			if ($discussion->created_by != $this->my->id) {

				// Assign points.
				ES::points()->assign($rule, 'com_easysocial', $discussion->created_by);

				// Assign badges.
				ES::badges()->log('com_easysocial', $rule, $discussion->created_by, '');
			}
		}
	}

	/**
	 * Deprecated. Use @react instead
	 *
	 * @deprecated	2.1
	 */
	public function like()
	{
		return $this->react();
	}

	/**
	 * Deprecated. Use @withdraw instead
	 *
	 * @deprecated	2.1
	 */
	public function unlike()
	{
		return $this->withdraw();
	}
}
