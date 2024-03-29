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

class MembersViewGroups extends SocialAppsView
{
	public function display($groupId = null, $docType = null)
	{
		$options = array();

		$this->setTitle('APP_MEMBERS_APP_TITLE');

		$group = ES::group($groupId);

		// Get the pagination settings
		$themes = ES::themes();
		$appParam	= $this->app->getParams();
		$limit = (int) $appParam->get('member.limit', 10);
		$sorting = $appParam->get('member.sorting');
		$ordering = $appParam->get('member.ordering');

		// Members sorting and ordering
		$options['ordering'] = $sorting;
		$options['direction'] = $ordering;


		// Members to display per page.
		$options['limit'] = $limit;

		// Get the current filter.
		$filter = $this->input->get('filter', '', 'word');

		// List only group admins
		if ($filter == 'admin') {
			$options['admin'] = true;
		}

		// List only pending users
		if ($filter == 'pending') {
			$options['state']	= SOCIAL_GROUPS_MEMBER_PENDING;
		}

		$model = FD::model('Groups');
		$users = $model->getMembers($group->id, $options);

		// Set pagination properties
		$pagination	= $model->getPagination();
		$pagination->setVar('view', 'groups');
		$pagination->setVar('layout', 'item');
		$pagination->setVar('id', $group->getAlias() );
		$pagination->setVar('appId', $this->app->getAlias());
		$pagination->setVar('Itemid', ESR::getItemId('groups', 'item', $group->id ) );

		if ($pagination && $filter) {
			$pagination->setVar('filter', $filter);
		}

		// Redirection url when an action is performed on a group member
		$redirectOptions = array('layout' => "item", 'id' => $group->getAlias(), 'appId' => $this->app->getAlias());

		if ($filter) {
			$redirectOptions['filter'] = $filter;
		}

		$returnUrl = ESR::groups($redirectOptions, false);
		$returnUrl = base64_encode($returnUrl);

		$counters = array();
		$counters['total'] = $group->getTotalMembers();
		$counters['admins'] = $group->getTotalAdmins();
		$counters['members'] = $counters['total'] - $counters['admins'];
		$counters['pending'] = 0;

		if ($group->isAdmin()) {
			$counters['pending'] = $group->getTotalPendingMembers();
		}

		$this->set('counters', $counters);
		$this->set('returnUrl', $returnUrl);
		$this->set('active', $filter);
		$this->set('group', $group);
		$this->set('users', $users);
		$this->set('pagination', $pagination);
		$this->set('emptyText', 'APP_GROUP_MEMBERS_EMPTY');

		echo parent::display('groups/default');
	}

}
