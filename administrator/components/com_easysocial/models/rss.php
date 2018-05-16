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

jimport('joomla.application.component.model');

FD::import('admin:/includes/model');

class EasySocialModelRss extends EasySocialModel
{
	public function __construct($config = array())
	{
		parent::__construct('rss', $config);
	}

	/**
	 * Retrieves a list of feeds created by a particular user.
	 *
	 * @since	1.0
	 * @access	public
	 * @param	int		$userId		The user's / creator's id.
	 *
	 * @return	Array				A list of notes item.
	 */
	public function getItems($id, $type)
	{
		$db 	= FD::db();
		$sql 	= $db->sql();

		$sql->select('#__social_rss');
		$sql->where('uid', $id);
		$sql->where('type', $type);
		$sql->order('created', 'DESC');
		$db->setQuery($sql);

		$result = $db->loadObjectList();

		return $result;
	}

	public function getItem($id)
	{
		$db = $this->db;

		$sql = "SELECT * FROM `#__social_rss` where `id` = " . $db->Quote($id);

		$db->setQuery($sql);
		$result = $db->loadObject();

		return $result;
	}

	/**
	 * Initializes the parser
	 *
	 * @since	2.0
	 * @access	public
	 * @param	string
	 * @return
	 */
	public function getParser($url)
	{
		// Setup the outgoing connection to the feed source
		$connector = ES::connector();

		// Trim extra spacing in url so that the connector can reach the target url correctly.
		$feedUrl = trim($url);

		$connector->addUrl($feedUrl);
		$connector->connect();

		// Get the contents
		$contents = $connector->getResult($feedUrl);

		// If contents is empty, we know something failed
		if (!$contents) {
			return ES::exception(JText::sprintf('COM_EASYSOCIAL_FEEDS_UNABLE_TO_REACH_TARGET_URL', $feedUrl), ES_ERROR);
		}

		// Get the cleaner to clean things up
		$contents = $this->cleanup($contents);

		jimport('simplepie.simplepie');

		// Load up the xml parser
		$parser = new SimplePie();
		$parser->strip_htmltags(false);
		$parser->set_raw_data($contents);
		@$parser->init();
		
		return $parser;
	}

	public function cleanup($contents)
	{
		// Cleanup the contents by ensuring that there's no whitespaces or any funky chars before the xml tag
		$pattern = '/(.*?)<\?xml version/is';
		$replace = '<?xml version';

		$contents = preg_replace($pattern, $replace, $contents, 1);

		// If there's a missing xml definition because some sites are just messed up, manually prepend them
		if (strpos($contents, '<?xml version') === false) {
			$contents = '<?xml version="1.0" encoding="utf-8"?>' . $contents;
		}

		return $contents;
	}

}
