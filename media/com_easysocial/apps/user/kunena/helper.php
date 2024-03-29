<?php
/**
* @package      EasySocial
* @copyright    Copyright (C) 2010 - 2016 Stack Ideas Sdn Bhd. All rights reserved.
* @license      GNU/GPL, see LICENSE.php
* EasySocial is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined('_JEXEC') or die('Unauthorized Access');
jimport( 'joomla.filesystem.file' );

/**
 * Kunena Helper
 *
 * @since	1.0
 */
class KunenaHelper
{
	/**
	 * Class constructor.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function __construct()
	{
		parent::__construct();
	}

	/**
	 * Determines if Kunena exists on the site
	 *
	 * @since	1.0
	 * @access	public
	 * @param	string
	 * @return
	 */
	public static function exists()
	{
		$file = JPATH_ROOT . '/components/com_kunena/kunena.php';

		if (!JFile::exists($file)) {
			return false;
		}

		return true;
	}
}
