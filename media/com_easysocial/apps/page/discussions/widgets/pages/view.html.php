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

class DiscussionsWidgetsPages extends SocialAppsWidgets
{
	/**
	 * Renders the menu link to start a new discussion
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function pageAdminStart($page)
	{
		if (!$page->getParams()->get('discussions', true)) {
		    return;
		}

		$access = $page->getAccess();

		if (!$access->get('discussions.enabled', true)) {
			return;
		}

		$theme = FD::themes();
		$theme->set('page', $page);
		$theme->set('app', $this->app);

		echo $theme->output('themes:/apps/page/discussions/widgets/widget.menu');
	}

	/**
	 * Generates the page statistics for discussions
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function pageStatsEnd($page)
	{
		if (!$page->getParams()->get('discussions', true)) {
			return;
		}

		$access = $page->getAccess();

		if (!$access->get('discussions.enabled', true)) {
			return;
		}

		$model = ES::model('Discussions');
		$total = $model->getTotalDiscussions($page->id, SOCIAL_TYPE_PAGE);
		$permalink = $page->getAppPermalink('discussions');

		$theme = ES::themes();
		$theme->set('permalink', $permalink);
		$theme->set('total', $total);

		$output = $theme->output('themes:/site/discussions/widgets/stats');

		echo $output;
	}
}
