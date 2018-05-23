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

ES::import('admin:/includes/model');

class EasySocialModelLikes extends EasySocialModel
{
	static $cache = array();

	public function __construct()
	{
		parent::__construct('likes');
	}

	/**
	 * Retrieves reactions listing for the back end
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function getItemsWithState($options = array())
	{
		$db = ES::db();
		$sql = $db->sql();

		$query = array();
		$query[] = 'SELECT a.* FROM `#__social_likes` AS a';

		// Ordering
		$ordering = $this->getState('ordering', 'created');

		if ($ordering) {
			$direction = $this->getState('direction') ? $this->getState('direction') : 'DESC';

			$query[] = 'ORDER BY ' . $ordering . ' ' . $direction;
		}

		$sql->raw($query);

		// Set the total
		$this->setTotal($sql->getTotalSql());

		$result = parent::getData($sql->getSql());
		$this->pagination = parent::getPagination();

		if (!$result) {
			return $result;
		}

		return $result;
	}


	private function _getLikesCount($uid, $type)
	{
		static $counts 	= array();

		$key 	= $uid . $type;

		if( !isset( $counts[ $key ] ) )
		{
			$db		= FD::db();
			$sql	= $db->sql();

			$sql->select( '#__social_likes' )
				->column( '1', '', 'count', true )
				->where( 'type', $type )
				->where( 'uid', $uid );

			$db->setQuery( $sql );
			$cnt   = $db->loadResult();

			$counts[ $key ]	= $cnt;
		}

		return $counts[ $key ];
	}


	public function setCommentLikesBatch( $data )
	{
		$config = FD::config();
		$db = FD::db();
		$sql = $db->sql();


		$dataset = array();

		// Go through each of the items
		foreach ($data as $item) {
			// Get related items
			$uid = $item->id;

			// pre-fill the array 1st;
			$key = $uid . '.comments.user.like';

			self::$cache[$key] = array();

			$dataset[] = $uid;
		}

		// lets build the sql now.
		if ($dataset) {

			$query 	= "SELECT a.* FROM `#__social_likes` AS a";
			$query	.= " INNER JOIN `#__users` AS b";
			$query 	.= " ON a.`created_by` = b.`id`";

			if ($config->get('users.blocking.enabled') && !JFactory::getUser()->guest) {
				// user block
				$query .= ' LEFT JOIN ' . $db->nameQuote( '#__social_block_users' ) . ' as bus';
				$query .= ' ON b.' . $db->nameQuote( 'id' ) . ' = bus.' . $db->nameQuote( 'user_id' ) ;
				$query .= ' AND bus.' . $db->nameQuote( 'target_id' ) . ' = ' . $db->Quote( JFactory::getUser()->id ) ;
			}

			$query 	.= " WHERE a.uid IN (" . implode(',' , $dataset). ")";
			$query 	.= " AND a.`type` = 'comments.user.like'";
			$query 	.= " AND b.`block` = " . $db->Quote(0);

			if ($config->get('users.blocking.enabled') && !JFactory::getUser()->guest) {
				// user block continue here
				$query .= ' AND bus.' . $db->nameQuote( 'id' ) . ' IS NULL';
			}

			$sql->raw( $query );
			$db->setQuery( $sql );

			$result = $db->loadObjectList();

			if ($result) {

				foreach ($result as $row) {

					$key = $row->uid . '.comments.user.like';

					$table = ES::table('Likes');
					$table->bind($row);

					$this->insertCache($key, $table);
				}
			}
		}
	}

	/**
	 * Allows caller to prepopulate data
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function setStreamLikesBatch($data)
	{
		$config = ES::config();
		$db = ES::db();
		$sql = $db->sql();

		$model = ES::model('Stream');
		$dataset = array();

		if (!$data) {
			return false;
		}

		// Initialize the cache structure
		foreach ($data as $item) {
			$uid = $item->id;

			// If there's no context_id, skip this.
			if (!$uid) {
				continue;
			}

			$key = $item->id . '.stream';

			self::$cache[$key] = array();

			$dataset[] = $uid;
		}

		// Build the main query
		if ($dataset) {

			$mainSQL = '';

			$query 	= "SELECT a.* FROM `#__social_likes` AS a";
			$query	.= " INNER JOIN `#__users` AS b";
			$query 	.= " ON a.`created_by` = b.`id`";

			if ($config->get('users.blocking.enabled') && !JFactory::getUser()->guest) {
				// user block
				$query .= ' LEFT JOIN ' . $db->nameQuote( '#__social_block_users' ) . ' as bus';
				$query .= ' ON b.' . $db->nameQuote( 'id' ) . ' = bus.' . $db->nameQuote( 'user_id' ) ;
				$query .= ' AND bus.' . $db->nameQuote( 'target_id' ) . ' = ' . $db->Quote( JFactory::getUser()->id ) ;
			}

			$query 	.= " WHERE a.stream_id IN (" . implode(',' , $dataset). ")";
			$query 	.= " AND b.`block` = " . $db->Quote(0);

			// user block continue here
			if ($config->get('users.blocking.enabled') && !JFactory::getUser()->guest) {
				$query .= ' AND bus.' . $db->nameQuote( 'id' ) . ' IS NULL';
			}

			$sql->raw($query);
			$db->setQuery($sql);

			$result = $db->loadObjectList();

			if ($result) {

				foreach ($result as $row) {

					$table = ES::table('Likes');
					$table->bind($row);

					$key = $row->stream_id . '.stream';

					$this->insertCache($key, $table);
				}
			}
		}

		return true;
	}

	/**
	 * Inserts a new item into the cache
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function insertCache($key, $table)
	{
		// If the cache structure doesn't exist yet, create one
		if (!isset(self::$cache[$key])) {
			self::$cache[$key] = array();
		}

		self::$cache[$key][$table->created_by] = $table;

		return true;
	}

	/**
	 * Removes a like data from the cache
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function removeCache($key, $userId)
	{
		// Test if the item really exists
		if (!isset(self::$cache[$key][$userId])) {
			return false;
		}

		unset(self::$cache[$key][$userId]);

		return true;
	}

	/**
	 * Delete likes related to an object
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function delete( $uid , $type )
	{
		$db 	= FD::db();
		$sql 	= $db->sql();

		$sql->delete( '#__social_likes' );
		$sql->where( 'uid' , $uid );
		$sql->where( 'type' , $type );

		$db->setQuery( $sql );

		$db->Query();

		return true;
	}

	/**
	 * Retrieves likes statistics
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getLikeStats($dates, $userId)
	{
		$db = ES::db();
		$likes = array();

		foreach ($dates as $date) {
			// Registration date should be Y, n, j
			$date	= FD::date( $date )->format( 'Y-m-d' );

			$query 		= array();
			$query[] 	= 'SELECT `a`.`id`, COUNT( `a`.`id`) AS `cnt` FROM `#__social_likes` AS a';
			$query[]	= 'WHERE `a`.`created_by`=' . $db->Quote( $userId );
			$query[]	= 'AND DATE_FORMAT( `a`.`created`, GET_FORMAT( DATE , "ISO") ) = ' . $db->Quote( $date );
			$query[]    = 'group by a.`created_by`';


			$query 		= implode( ' ' , $query );
			$sql		= $db->sql();
			$sql->raw( $query );

			$db->setQuery( $sql );

			$items				= $db->loadObjectList();

			// There is nothing on this date.
			if( !$items )
			{
				$likes[]	= 0;
				continue;
			}

			foreach( $items as $item )
			{
				$likes[]	= $item->cnt;
			}
		}

		// Reset the index.
		$likes 	= array_values( $likes );

		return $likes;
	}

	/**
	 * $uuid - the unique id of the liked item
	 * $uType - the item type being liked - stream type (status, groups, photos ), comment etc.
	 *
	 * return - int
	 */

	public function getLikesCount($uid, $type)
	{
		$likes = $this->getItems($uid, $type);
		$likeCount = count($likes);

		return (empty($likeCount)) ? 0 : $likeCount;
	}

	/**
	 * Retrieve the likes
	 *
	 * @since	2.0
	 * @access	public
	 */
	private function getItems($id, $type, $debug = false)
	{
		// Build the index for the like
		$key = $id . '.' . $type;

		if (!isset(self::$cache[$key])) {

			$db = FD::db();
			$sql = $db->sql();

			$sql->select('#__social_likes', 'a');
			$sql->join('#__users', 'b', 'INNER');
			$sql->on('a.created_by', 'b.id', '=');

			if (FD::config()->get('users.blocking.enabled') && !JFactory::getUser()->guest) {
				$sql->leftjoin( '#__social_block_users' , 'bus');

				$sql->on( 'b.id' , 'bus.target_id' );
				$sql->on( 'bus.user_id', JFactory::getUser()->id );

				$sql->isnull('bus.id');
			}

			if ($type == 'stream') {
				$sql->where('a.stream_id' , $id );
			} else {
				$sql->where('a.uid' , $id );
				$sql->where('a.type' , $type );
			}
			$sql->where('b.block', 0);
			$sql->order('a.id', 'DESC');

			$db->setQuery( $sql );

			$result = $db->loadObjectList();

			// Initialize the items at index
			self::$cache[$key] = array();

			// Pre-load the users for the liked items
			if ($result) {

				foreach ($result as $row) {
					$table = FD::table('Likes');
					$table->bind($row);

					$this->insertCache($key, $table);
				}
			}
		}

		$result = self::$cache[$key];
		$result = is_array($result) ? $result : array($result);

		return $result;
	}

	/**
	 * Retrieves likes for a particular item
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getLikes($id, $type, $debug = false)
	{
		$likes = $this->getItems($id, $type, $debug);

		return $likes;
	}

	/**
	 * Retrieves user ids who liked the item
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getLikerIds($id, $type, $exclude = array())
	{
		$likes = $this->getItems($id, $type);

		$likers = array();

		if ($likes) {
			foreach ($likes as $like) {
				if ($exclude && !in_array($like->created_by, $exclude)) {
					$likers[] = $like->created_by;
				} else {
					$likers[] = $like->created_by;
				}
			}
		}

		return $likers;
	}

	/**
	 * Retrieves a list of reactions
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function getReactions()
	{
		$db = ES::db();

		$query = array();
		$query[] = 'SELECT * FROM `#__social_reactions` WHERE `published`=' . $db->Quote(1);

		$sql = $db->sql();
		$sql->raw($query);

		$db->setQuery($sql);

		$rows = $db->loadObjectList();

		if (!$rows) {
			return $rows;
		}

		$reactions = array();

		foreach ($rows as $row) {
			$reactions[] = ES::reaction($row);
		}

		return $reactions;
	}

	/**
	 * Retrieves a list of reactions and it's count for a particular item
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function getReactionsResult($id, $type, $reaction = null)
	{
		$db = ES::db();
		$sql = $db->sql();

		$query = array();
		$query[] = 'SELECT a.*, COUNT(b.`id`) AS `total` FROM `#__social_reactions` AS a';

		if ($reaction) {
			$query[] = 'INNER JOIN `#__social_likes` AS b';
		} else {
			$query[] = 'LEFT JOIN `#__social_likes` AS b';
		}

		$query[] = 'ON b.`reaction` = a.`action`';

		if ($type == 'stream') {
			$query[] = 'AND b.`stream_id`=' . $db->Quote($id);
		}

		if ($type != 'stream') {
			$query[] = 'AND b.`uid`=' . $db->Quote($id);
			$query[] = 'AND b.`type`=' . $db->Quote($type);
		}

		if ($reaction) {
			$query[] = 'WHERE b.`reaction`=' . $db->Quote($reaction);
		}

		$query[] = 'GROUP BY a.`action`';
		$query[] = 'ORDER BY a.`id` ASC';

		$sql->raw($query);
		$db->setQuery($sql);


		$rows = $db->loadObjectList();

		if (!$rows) {
			return $rows;
		}

		$reactions = array();

		foreach ($rows as $row) {
			$reaction = ES::reaction($row);
			$reaction->setTotal($row->total);

			$reactions[] = $reaction;
		}

		return $reactions;
	}

	/**
	 * Retrieves a list of reactions and it's count for a particular item
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function getReactionsUsers($id, $type, $reaction)
	{
		$db = ES::db();
		$sql = $db->sql();

		$query = array();
		$query[] = 'SELECT a.`created_by` FROM `#__social_likes` AS a';
		$query[] = 'WHERE a.`reaction`=' . $db->Quote($reaction);

		if ($type == 'stream') {
			$query[] = 'AND a.`stream_id`=' . $db->Quote($id);
		}

		if ($type != 'stream') {
			$query[] = 'AND a.`uid`=' . $db->Quote($id);
			$query[] = 'AND a.`type`=' . $db->Quote($type);
		}

		$query[] = 'ORDER BY a.`created` ASC';

		$sql->raw($query);
		$db->setQuery($sql);

		$rows = $db->loadColumn();

		if (!$rows) {
			return $rows;
		}

		$users = array();

		foreach ($rows as $row) {
			$user = ES::user($row);
			$users[] = $user;
		}

		return $users;
	}
	/**
	 * Retrieves the reaction of the user against a particular object
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function getUserReaction($id, $type, $userId, $streamId = null)
	{
		$db = ES::db();
		$sql = $db->sql();

		$query = array();
		$query[] = 'SELECT `reaction` FROM `#__social_likes`';
		$query[] = 'WHERE `created_by`=' . $db->Quote($userId);
		$query[] = 'AND `uid` = ' . $db->Quote($id);
		$query[] = 'AND `type` = ' . $db->Quote($type);

		if ($streamId) {
			$query[] = 'AND `stream_id`=' . $db->Quote($streamId);
		}

		$sql->raw($query);
		$db->setQuery($sql);

		$row = $db->loadResult();

		if (!$row) {
			return false;
		}

		$reaction = ES::reaction($row);

		return $reaction;
	}

	/**
	 * Determines if a user has already liked an item.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function hasLiked($id , $type , $userId, $useStreamId = false)
	{
		$likes = null;

		if ($useStreamId) {
			$likes = $this->getItems( $useStreamId, 'stream' );
		} else {
			$likes = $this->getItems( $id, $type );
		}

		if ($likes) {
			foreach ($likes as $like) {

				if ($like->created_by == $userId) {
					return true;
				}
			}
		}

		return false;
	}

	/**
	 * Inserts a new reaction
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function react($id, $type, $userId, $reaction = 'like', $streamId = null, $uri = '')
	{
		$table = ES::table('Likes');

		// There is instances where the user just updated their reaction
		$options = array('uid' => $id, 'type' => $type, 'created_by' => $userId);

		// Try to load the reaction instead
		$table->load($options);

		$table->uid = $id;
		$table->type = $type;
		$table->created_by = $userId;
		$table->stream_id = $streamId;
		$table->reaction = $reaction;
		$table->created = JFactory::getDate()->toSql();
		$table->uri = $uri;

		$state = $table->store();

		// If there's an error storing, log this down.
		if (!$state) {
			$this->setError($table->getError());
			return false;
		}

		// Updated the key
		$key = $id . '.' . $type;

		// Remove from the cache if it exists
		$this->removeCache($key, $userId);
		$this->insertCache($key, $table);

		return $state;
	}

	/**
	 * Deprecated. Use @react instead
	 *
	 * @deprecated	2.1
	 */
	public function like($id, $type, $userId, $streamId = null)
	{
		return $this->react($id, $type, $userId, 'like', $streamId);
	}

	/**
	 * Deprecated. Use @withdraw instead
	 *
	 * @deprecated	2.1
	 */
	public function unlike($id, $type, $userId, $streamId = null)
	{
		return $this->withdraw($id, $type, $userId, $streamId);
	}

	/**
	 * Withdraws a reaction
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function withdraw($id, $type, $userId, $streamId = null)
	{
		$table = ES::table('Likes');
		$options = array('uid' => $id, 'type' => $type, 'created_by' => $userId);

		if ($streamId) {
			$options['stream_id'] = $streamId;
		}

		$exists = $table->load($options);

		if (!$exists) {
			$this->setError('COM_EASYSOCIAL_LIKES_OBJECT_DOES_NOT_EXIST');
			return false;
		}

		// Delete the table now
		$state = $table->delete();

		// Set the error to the model.
		if (!$state) {
			$this->setError($table->getError());
			return false;
		}

		//update like static variable
		$key = $id . '.' . $type;
		$this->removeCache($key, $userId);

		return $state;
	}

	/**
	 * Retrieve the user mode based on user's reaction on specific lapsed time.
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function getUserMood($userId, $lapsed_period)
	{
		$db = ES::db();
		$now = ES::date()->toSql();

		$query = "SELECT a.`reaction`, count(1) AS `count`";
		$query .= " FROM `#__social_likes` AS `a`";
		$query .= " WHERE a.`created_by` = " . $db->Quote($userId);
		$query .= " AND a.`created` > DATE_SUB(" . $db->Quote($now) . ", INTERVAL " . $lapsed_period . " DAY)";
		$query .= " group by a.`reaction`";
		$query .= " order by `count` desc, a.`created` desc";
		$query .= " limit 1";

		$db->setQuery($query);
		$result = $db->loadObject();

		return $result;
	}
}
