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

ES::import('admin:/tables/table');

class SocialTableLink extends SocialTable
{
	/**
	 * The unique id
	 * @var int
	 */
	public $id = null;

	/**
	 * The unique url string (MD5-ed)
	 * @var string
	 */
	public $hash = null;

	/**
	 * Stores the data about the URL in JSON format
	 * @var string
	 */
	public $data = null;

	/**
	 * The time this url was logged
	 * @var datetime
	 */
	public $created = null;

	public function __construct($db)
	{
		parent::__construct('#__social_links', 'id', $db);
	}

	/**
	 * Loads a given record given the link
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function loadByLink($link)
	{
		$hash = md5($link);

		return $this->load(array('hash' => $hash));
	}

	/**
	 * Converts the data into a proper object
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getData()
	{
		static $objects = array();

		if (!isset($objects[$this->id])) {
			$data = json_decode($this->data);

			$objects[$this->id]	= $data;
		}

		return $objects[$this->id];
	}

	/**
	 * Retrieves the image for the link object
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getImage($assets)
	{
		$config = ES::config();

		// Get the image file
		$image = $assets->get('image');
		$cachePath = ltrim($config->get('links.cache.location'), '/');

		// @since 1.3.8
		// This block of code should be removed later.
		// FIX Older images where 'cached' state is not stored.
		// Check if the image string contains the cached storage path
		if (!$assets->get('cached') && (stristr($image, '/media/com_easysocial/cache') !== false)) {
			$assets->set('cached', true);
		}

		// Dirty way of checking
		// If the image is cached, we need to get the correct path
		if ($assets->get('cached')) {

			// First we try to load the image from the image link table
			$linkImage = ES::table('LinkImage');
			$exists = $linkImage->load(array('internal_url' => $image));

			// Default
			$image = rtrim(JURI::root(), '/') . '/' . $cachePath . '/' . basename($image);

			if ($exists) {
				$image = $linkImage->getUrl();
			}
		}

		return $image;
	}

	/**
	 * Retrieve the oembed object from the data
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getOembed()
	{
		$data = $this->getData();
		$oembed = isset($data->oembed) ? $data->oembed : false;

		if (!$oembed) {
			return false;
		}

		if (!is_object($oembed)) {
			return false;
		}
		
		if (!isset($oembed->isArticle)) {
			$oembed->isArticle = false;
		}

		// Fix video issues with youtube when site is on https
		if (isset($oembed->provider_url) && $oembed->provider_url == 'http://www.youtube.com/') {
			$oembed->html = JString::str_ireplace('http://', 'https://', $oembed->html);
			$oembed->thumbnail = str_ireplace('http://', 'https://', $oembed->thumbnail);
		}

		return $oembed;
	}

	/**
	 * function to determine if this embed is a facebook video or not.
	 *
	 * @since	2.0
	 * @access	public
	 * @param	string
	 * @return
	 */
	public function isFacebookEmbed()
	{
		$oembed = $this->getOembed();

		if ($oembed !== false) {
			if (isset($oembed->provider_url) && stristr($oembed->provider_url, '://www.facebook.com') !== false) {
				return true;
			}
		}

		return false;
	}

	public function isSquareRatio()
	{
		$oembed = $this->getOembed();

		$width = $oembed->width;
		$height = $oembed->height;

		return $width == $height;
	}

	public function getRatioString()
	{
		$oembed = $this->getOembed();

		$width = $oembed->width;
		$height = $oembed->height;

		if ($width == $height) {
			return 'is-1by1';
		}

		// for now we assume if height is greatr than width, its 9x16 format.
		if ($height > $width) {
			return 'is-9by16';
		}

		return '';
	}

	/**
	 * Function to determine if this embed is a wordpress oembed
	 *
	 * @since	3.0
	 * @access	public
	 */
	public function isWordpressEmbed()
	{
		$oembed = $this->getOembed();

		if (isset($oembed->isWordpress) && $oembed->isWordpress) {
			return true;
		}

		return false;
	}
}
