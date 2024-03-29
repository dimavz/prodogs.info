<?php
/**
* @package      EasySocial
* @copyright    Copyright (C) 2010 - 2015 Stack Ideas Sdn Bhd. All rights reserved.
* @license      GNU/GPL, see LICENSE.php
* EasySocial is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined( '_JEXEC' ) or die( 'Unauthorized Access' );

jimport('joomla.application.component.model');

FD::import('admin:/includes/model');

class EasySocialModelPolls extends EasySocialModel
{
	public function __construct($config = array())
	{
		parent::__construct('polls', $config);
	}

	public function isVoted($pollId, $userId) {

		$db = ES::db();
		$sql = $db->sql();

		$query = "select count(1) from `#__social_polls_users`";
		$query .= " where `poll_id` = " . $db->Quote($pollId);
		$query .= " and `user_id` = " . $db->Quote($userId);

		$sql->raw($query);
		$db->setQuery($sql);

		$result = $db->loadResult();

		return ($result) ? true : false;
	}

	/**
	 * Retrieves the total number of votes made on a poll
	 *
	 * @since   2.0
	 * @access  public
	 */
	public function getTotalVotes($pollId)
	{
		$db = ES::db();

		$query = array();
		$query[] = 'SELECT COUNT(1) FROM ' . $db->qn('#__social_polls_users');
		$query[] = 'WHERE ' . $db->qn('poll_id') . '=' . $db->Quote($pollId);
		$query[] = 'AND ' . $db->qn('state') . '=' . $db->Quote(1);

		$query = implode(' ', $query);

		$db->setQuery($query);

		return $db->loadResult();
	}

	public function getAllPolls()
	{
		$db = ES::db();
		$sql = $db->sql();

		$my = ES::user();

		$query = "select * from `#__social_polls`";

		// Determines if we need to search for something
		$search = $this->getState( 'search' );

		if ($search) {
			$query .= "WHERE `title` LIKE " . $db->Quote($search);
		}

		$sql->raw($query);

		$db->setQuery($sql);

		$results = $db->loadObjectList();

		return $results;
	}

	/**
	 * Retrieves a list of polls created on the site
	 *
	 * @since   2.0
	 * @access  public
	 */
	public function getPolls($options = array())
	{
		$config = ES::config();
		$db = ES::db();
		$sql = $db->sql();

		$my = ES::user();

		$limit = isset($options['limit']) ? $options['limit'] : 0;
		$clusterId = isset($options['cluster_id']) ? $options['cluster_id'] : 0;

		$excludeSiteAdmin = $config->get('stream.exclude.admin') ? true : false;


		$query = "select a.* from `#__social_polls` as a";
		$query .= " inner join `#__social_stream` as b on a.`uid` = b.`id` and a.`element` = " . $db->Quote('stream');
		$query .= " where (a.`cluster_id` is null";
		$query .= " or ((select count(1) from `#__social_clusters` as c where c.`id` = a.`cluster_id`) > 0))";

		if ($clusterId) {
			$query .= " and a.`cluster_id` = " . $clusterId;
		}

		$userId = $this->normalize($options, 'user_id', '');

		if ($userId) {
			$query .= ' AND `created_by`=' . $db->Quote($userId);
		}

		// permission here.
		if ($my->guest) {
			$query .= ' AND b.`access` = ' . $db->Quote('0');

			// For guest, we need to check for cluster as well
			$query .= ' AND (';
			$query .= ' (b.`cluster_id`= 0) OR';
			$query .= ' (b.`cluster_id` > 0 and b.`cluster_access` = 1)';
			$query .= ')';
		} else if (!$my->isSiteAdmin()) {

			$streamLib = ES::stream();

			$viewer = $my->id;

			// group privacy
			$query .= ' AND (';
			$query .= ' (b.`cluster_id`= 0) OR';
			$query .= ' (b.`cluster_id` > 0 and b.`cluster_access` = 1)';
			$query .= ' OR (b.`cluster_id` > 0 and b.`cluster_access` > 1 and ' . $viewer . ' IN (select scn.`uid` from `#__social_clusters_nodes` as scn where (scn.`cluster_id` = b.`cluster_id`) and scn.`type` = ' . $db->Quote(SOCIAL_TYPE_USER) . ' and scn.`state` = 1))';
			$query .= ')';


			if ($config->get('privacy.enabled')) {

				// user privacy.
				$query .= ' AND (';

				//public
				$query .= ' (b.`access` = ' . $db->Quote(SOCIAL_PRIVACY_PUBLIC) . ') OR';

				//member
				$query .= ' ((b.`access` = ' . $db->Quote(SOCIAL_PRIVACY_MEMBER) . ') AND (' . $viewer . ' > 0)) OR ';

				if ($config->get('friends.enabled')) {
					//friends of friends
					$query .= ' ((b.`access` = ' . $db->Quote(SOCIAL_PRIVACY_FRIENDS_OF_FRIEND) . ') AND ((' . $streamLib->generateMutualFriendSQL($viewer, 'b.`actor_id`') . ') > 0)) OR ';

					//friends
					$query .= ' ((b.`access` = ' . $db->Quote(SOCIAL_PRIVACY_FRIENDS_OF_FRIEND) . ') AND ((' . $streamLib->generateIsFriendSQL('b.`actor_id`', $viewer) . ') > 0)) OR ';

					//friends
					$query .= ' ((b.`access` = ' . $db->Quote(SOCIAL_PRIVACY_FRIEND) . ') AND ((' . $streamLib->generateIsFriendSQL('b.`actor_id`', $viewer) . ') > 0)) OR ';
				} else {
					$query .= ' ((b.`access` = ' . $db->Quote(SOCIAL_PRIVACY_FRIENDS_OF_FRIEND) . ') AND (' . $viewer . ' > 0)) OR ';
					$query .= ' ((b.`access` = ' . $db->Quote(SOCIAL_PRIVACY_FRIEND) . ') AND (' . $viewer . ' > 0)) OR ';
				}

				//only me
				$query .= ' ((b.`access` = ' . $db->Quote(SOCIAL_PRIVACY_ONLY_ME) . ') AND (b.`actor_id` = ' . $viewer . ')) OR ';

				// custom
				$query .= ' ((b.`access` = ' . $db->Quote(SOCIAL_PRIVACY_CUSTOM) . ') AND (b.`custom_access` LIKE ' . $db->Quote('%,' . $viewer . ',%') . '   )) OR ';

				// field
				if ($config->get('users.privacy.field')) {
					$fieldPrivacyQuery = '(select count(1) from `#__social_stream_privacy_field` as fa';
					$fieldPrivacyQuery .= ' inner join `#__social_fields` as ff on fa.`field_key` = ff.`unique_key`';
					$fieldPrivacyQuery .= ' inner join `#__social_fields_data` as fd on ff.`id` = fd.`field_id`';
					$fieldPrivacyQuery .= ' where fa.`stream_id` = b.`id`';
					$fieldPrivacyQuery .= ' and fd.`uid` = ' . $db->Quote($viewer);
					$fieldPrivacyQuery .= ' and fd.`type` = ' . $db->Quote('user');
					$fieldPrivacyQuery .= ' and fd.`raw` = fa.`field_value`)';

					$query .= ' ((b.`access` = ' . $db->Quote(SOCIAL_PRIVACY_FIELD) . ') AND (b.`field_access` <= ' . $fieldPrivacyQuery . ')) OR ';
				} else {
					$query .= ' ((b.`access` = ' . $db->Quote(SOCIAL_PRIVACY_FIELD) . ') AND (' . $viewer . ' > 0)) OR ';
				}

				// my own items.
				$query .= ' (b.`actor_id` = ' . $viewer . ')';

				// privacy checking end here.
				$query .= ')';

			}
		}

		// if stream setting configured to not show site admin items, then polls belong to site admin shouldn't be displayed as well.
		if ($excludeSiteAdmin && !$my->isSiteAdmin()) {
			// Get a list of site administrators from the site.
			$userModel = ES::model('Users');
			$admins = $userModel->getSiteAdmins();

			if ($admins) {
				$ids = array();

				foreach ($admins as $admin) {
					if ($my->id == $admin->id) {
						continue;
					}

					$ids[] = $admin->id;
				}

				if ($ids) {
					$query .= ' AND b.' . $db->nameQuote('actor_id') . ' NOT IN (' . implode(',', $ids) . ')';
				}
			}
		}

		// get the count without order by
		$counterSQL = $query;

		// now append the order by condition.
		$query .= " order by a.`created` desc";

		$limit = $this->normalize($options, 'limit', ES::getLimit());

		$this->setState( 'limit' , $limit );

		// Get the limitstart.
		$limitstart = $this->getUserStateFromRequest( 'limitstart' , 0 );
		$limitstart = ( $limit != 0 ? ( floor( $limitstart / $limit ) * $limit ) : 0 );

		$this->setState('limitstart', $limitstart);

		// Set the total number of items.
		$this->setTotal($counterSQL, true);

		$polls = $this->getData($query);

		$items = array();

		if ($polls) {
			$ids = array();
			$userIds = array();
			// lets get the polls items
			foreach($polls as $ps) {
				$ids[] = $ps->id;
				$userIds[] = $ps->created_by;
			}

			// preload users
			ES::user($userIds);

			$query = "select a.*";
			$query .= ", (select sum(b.`count`) from `#__social_polls_items` as b where b.`poll_id` = a.`poll_id`) as `total`";
			$query .= " from `#__social_polls_items` as a";
			$query .= " where a.`poll_id` IN (" . implode(',', $ids) . ")";

			$sql->clear();
			$sql->raw($query);

			$db->setQuery($sql);
			$resultItems = $db->loadObjectList();

			if ($resultItems) {
				for($i = 0; $i < count($resultItems); $i++) {
					$ri =& $resultItems[$i];
					if ($ri->total) {
						$ri->percentage = round(($ri->count / $ri->total) * 100);
					} else {
						$ri->percentage = 0;
					}

					$items[$ri->poll_id][] = $ri;
				}
			}

			// now lets merge the items into polls container
			for($i = 0; $i < count($polls); $i++) {
				$p =& $polls[$i];

				$p->items = array();
				if (isset($items[$p->id])) {
					$p->items = $items[$p->id];
				}
			}
		}

		return $polls;
	}

	public function getItems($pollId)
	{
		$db = ES::db();
		$sql = $db->sql();

		$my = ES::user();

		$query = "select a.*";
		$query .= ", (select sum(b.`count`) from `#__social_polls_items` as b where b.`poll_id` = a.`poll_id`) as `total`, u.`id` as `voted`, u.`state` as `user_state`";
		$query .= " from `#__social_polls_items` as a";
		$query .= " left join `#__social_polls_users` as u on u.`poll_itemid` = a.`id` and u.`user_id` = " . $db->Quote($my->id);
		$query .= " where a.`poll_id` = " . $db->Quote($pollId);
		$query .= " order by a.`id` asc";

		$sql->raw($query);

		$db->setQuery($sql);

		$results = $db->loadObjectList();

		if ($results) {
			for($i = 0; $i < count($results); $i++) {
				$item =& $results[$i];
				if ($item->total) {
					$item->percentage = round(($item->count / $item->total) * 100);
				} else {
					$item->percentage = 0;
				}
			}
		}

		return $results;
	}

	public function getVoterIds($pollId, $pollItemId = '')
	{
		$db = ES::db();
		$sql = $db->sql();

		$query = "select `user_id` from `#__social_polls_users`";
		$query .= " where `poll_id` = " . $db->Quote($pollId);
		$query .= " and `state` = " . $db->Quote(SOCIAL_STATE_PUBLISHED);

		if ($pollItemId) {
			$query .= " and `poll_itemid` = " . $db->Quote($pollItemId);
		}

		$sql->raw($query);
		$db->setQuery($sql);

		$results = $db->loadColumn();

		return $results;
	}

	public function updateStreamPrivacy($streamId, $privacyId)
	{
		$db = ES::db();
		$sql = $db->sql();

		$query = "update #__social_stream set privacy_id = " . $db->Quote($privacyId);
		$query .= " where id = " . $db->Quote($streamId);

		$sql->raw($query);
		$db->setQuery($sql);

		$state = $db->query();

		return $state;
	}

	public function deleteItemUsers($pollItemId)
	{
		$db = ES::db();
		$sql = $db->sql();

		$query = "delete from `#__social_polls_users` where `poll_itemid` = " . $db->Quote($pollItemId);
		$sql->raw($query);

		$db->setQuery($sql);
		$state = $db->query();

		return $state;
	}

	public function deletePollStreams($pollId)
	{
		$db = FD::db();
		$sql = $db->sql();

		$query = "delete a, b from `#__social_stream` as a";
		$query .= "     inner join `#__social_stream_item` as b on a.`id` = b.`uid`";
		$query .= " where a.`context_type` = 'polls'";
		$query .= " and b.`context_id` = '$pollId'";

		$sql->raw($query);
		$db->setQuery($sql);

		$db->query();

		return true;
	}
}
