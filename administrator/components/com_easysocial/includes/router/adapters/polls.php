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

class SocialRouterPolls extends SocialRouterAdapter
{
	/**
	 * Constructs polls urls
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function build(&$menu , &$query)
	{
		$segments = array();

		$userId = isset($query['userid']) ? $query['userid'] : null;

		if (!is_null($userId)) {
			$segments[] = $query['userid'];
			unset($query['userid']);
		}

		// If there is a menu but not pointing to the profile view, we need to set a view
		if ($menu && $menu->query['view'] != 'polls') {
			$segments[]	= $this->translate($query['view']);
		}

		// If there's no menu, use the view provided
		if (!$menu) {
			$segments[]	= $this->translate($query['view']);
		}
		unset($query['view']);

		// Polls may have layout
		$layout = isset($query['layout']) ? $query['layout'] : null;

		if ($layout) {
			$segments[] = $this->translate('polls_layout_' . $layout);
			unset($query['layout']);
		}

		$filter = isset($query['filter']) ? $query['filter'] : null;
		$menuFilter = isset($menu->query['filter']) ? $menu->query['filter'] : null;
		$addFilter = false;

		if (is_null($menuFilter)) {
			if (!is_null($filter)) {
				$addFilter = true;
			}
		} else {
			if(!is_null($filter) && $filter != $menuFilter) {
				$addFilter = true;
			}
		}

		if ($addFilter) {
			$segments[]	= $this->translate('polls_filter_' . $query['filter']);
		}
		unset($query['filter']);

		return $segments;
	}

	/**
	 * Translates the SEF url to the appropriate url
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function parse(&$segments)
	{
		$vars = array();
		$total = count($segments);

		// Coming from profile page
		if ($total > 1 && $segments[1] == 'user') {
			$vars['view'] = 'polls';
			$vars['userid'] = $this->getUserId($segments[2]);

			return $vars;
		}

		if ($total == 1) {
			$vars['view'] = 'polls';
			return $vars;
		}

		// layout=create
		if ($total == 2 && $segments[1] == $this->translate('polls_layout_create')) {
			$vars['view'] = 'polls';
			$vars['layout'] = 'create';

			return $vars;
		}

		if ($total == 2 && $segments[1] == $this->translate('polls_filter_all')) {
			$vars['view'] = 'polls';
			$vars['filter'] = 'all';

			return $vars;
		}

		if ($total == 2 && $segments[1] == $this->translate('polls_filter_mine')) {
			$vars['view'] = 'polls';
			$vars['filter'] = 'mine';

			return $vars;
		}

		return $vars;
	}
}
