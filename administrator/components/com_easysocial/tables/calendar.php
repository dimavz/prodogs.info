<?php
/**
* @package		EasySocial
* @copyright	Copyright (C) 2010 - 2018 Stack Ideas Sdn Bhd. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* EasySocial is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined('_JEXEC') or die('Unauthorized Access');

ES::import('admin:/tables/table');

class SocialTableCalendar extends SocialTable
{
	public $id = null;
	public $uid = null;
	public $type = null;
	public $title = null;
	public $description = null;
	public $reminder = null;
	public $date_start = null;
	public $date_end = null;
	public $user_id	= null;
	public $all_day	= null;

	/**
	 * Class Constructor.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function __construct(& $db)
	{
		parent::__construct('#__social_apps_calendar', 'id', $db);
	}

	public function getStartDate()
	{
		static $dates = array();

		if (!isset($dates[$this->id])) {
			$dates[$this->id] = ES::date($this->date_start, false);
		}

		return $dates[$this->id];
	}

	public function getEndDate()
	{
		static $dates = array();

		if (!isset($dates[$this->id])) {
			$dates[$this->id] = ES::date($this->date_end);
		}

		return $dates[$this->id];
	}

	/**
	 * Publishes into the stream
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function createStream($verb = 'create')
	{
		// Add activity logging when a new schedule is created
		// Activity logging.
		$stream	= ES::stream();
		$streamTemplate	= $stream->getTemplate();

		// Set the actor.
		$streamTemplate->setActor($this->user_id, SOCIAL_TYPE_USER);

		// Set the context.
		$streamTemplate->setContext($this->id, 'calendar');

		// Set the verb.
		$streamTemplate->setVerb($verb);

		$streamTemplate->setPublicStream('core.view');

		// Create the stream data.
		$stream->add($streamTemplate);
	}

	public function getApp()
	{
		static $app;

		if (empty($app)) {
			$app = ES::table('app');
			$options = array('type' => SOCIAL_TYPE_APPS, 'group' => SOCIAL_APPS_GROUP_USER, 'element' => 'calendar');

			$app->load($options);
		}

		return $app;
	}

	public function getPermalink($external = false, $xhtml = true, $sef = true)
	{
		$userAlias = ES::user($this->user_id)->getAlias();
		$options = array('uid' => $userAlias, 'type' => SOCIAL_TYPE_USER, 'customView' => 'item', 'schedule_id' => $this->id, 'external' => $external, 'sef' => $sef);

		$permalink = $this->getApp()->getCanvasUrl($options, $xhtml);

		return $permalink;
	}
}
