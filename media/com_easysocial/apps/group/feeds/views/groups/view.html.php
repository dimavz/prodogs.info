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

class FeedsViewGroups extends SocialAppsView
{
	/**
	 * Renders the list of feeds from a group
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function display($groupId = null, $docType = null )
	{
		$group = ES::group($groupId);

		if (!$group->canAccessFeeds()) {
			return JError::raiseError(404, 'Feeds has been disabled');
		}

		$this->setTitle('APP_FEEDS_APP_TITLE');
		
		// Get the app params
		$params = $this->app->getParams();
		$limit 	= $params->get('total', 5);

		// Render the rss model
		$model = FD::model('RSS');
		$result = $model->getItems($group->id, SOCIAL_TYPE_GROUP);

		// If there are tasks, we need to bind them with the table.
		$feeds = array();

		if ($result) {
			foreach ($result as $row) {
				$table = ES::table('Rss');
				$table->bind($row);

				$feeds[] = $table;
			}
		}

		$this->set('totalDisplayed', $limit);
		$this->set('appId', $this->app->id);
		$this->set('feeds', $feeds);
		$this->set('cluster', $group);
		$this->set('user', $this->my);

		echo parent::display('themes:/site/feeds/default/default');
	}
}
