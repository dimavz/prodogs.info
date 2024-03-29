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

class ThemesHelperHeader extends ThemesHelperAbstract
{
	/**
	 * Renders an object header
	 *
	 * @since	2.0
	 * @access	public
	 * @param	string
	 * @return	
	 */
	public function groupCategory(SocialTableGroupCategory $category)
	{
		$theme = ES::themes();

		$theme->set('category', $category);

		$output = $theme->output('site/helpers/header/group.category');

		return $output;
	}

	/**
	 * Renders an object header
	 *
	 * @since	2.0
	 * @access	public
	 * @param	string
	 * @return	
	 */
	public function pageCategory(SocialTablePageCategory $category)
	{
		$theme = ES::themes();
		$theme->set('category', $category);

		$output = $theme->output('site/helpers/header/page.category');

		return $output;
	}
}
