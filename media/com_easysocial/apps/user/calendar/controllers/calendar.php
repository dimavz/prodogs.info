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

class CalendarControllerCalendar extends SocialAppsController
{
	/**
	 * Displays the create new schedule form
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function form()
	{
		ES::checkToken();
		ES::requireLogin();

		// Determines if item is being edited
		$id = $this->input->get('id', 0, 'int');

		$calendar = ES::table('Calendar');
		$calendar->load($id);

		if ($id && $calendar->id && $calendar->user_id != $this->my->id) {
			return $this->ajax->reject();
		}

		// Get the start and end date
		$start = $this->input->get('start', '', 'default');
		$end = $this->input->get('end', '', 'default');
		$calendar->all_day = $this->input->get('allday', false, 'bool');

		$format = 'YYYY-MM-DD HH:mm:ss';

		// The date values are already populated with the timezone based on the browser.
		// We need to remove the offset before saving later
		if ($start) {
			$startDate = ES::date($start);
			$calendar->date_start = $startDate->toMySQL();
		}
		
		if ($end) {
			$endDate = ES::date($end);
			$calendar->date_end = $endDate->toMySQL();
		}

		// Get the app params
		$params = $this->getParams();

		// Load up the theme
		$theme = ES::themes();
		$theme->set('params', $params);
		$theme->set('calendar', $calendar);
		$theme->set('format', $format);

		$output	= $theme->output('apps/user/calendar/canvas/dialog.create');

		return $this->ajax->resolve($output);
	}

	/**
	 * Deletes an item
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function delete()
	{
		// Check for request forgeries
		FD::checkToken();

		// Ensure that the user is logged in
		FD::requireLogin();

		// Load up ajax library
		$ajax 	= FD::ajax();

		// Load up the table
		$calendar 	= FD::table('Calendar');

		// Get current logged in user
		$my 	= FD::user();

		// Determines if the calendar is being edited
		$id 	= JRequest::getInt( 'id' );
		$calendar->load( $id );

		if( !$id )
		{
			return $ajax->reject();
		}

		if( $calendar->user_id != $my->id )
		{
			return $ajax->reject();
		}

		$state 	= $calendar->delete();

		return $ajax->resolve();
	}

	/**
	 * Renders a single appointment item
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function confirmDelete()
	{
		// Check for request forgeries
		FD::checkToken();

		// Ensure that the user is logged in
		FD::requireLogin();

		// Load up ajax library
		$ajax 	= FD::ajax();

		// Load up the table
		$calendar 	= FD::table('Calendar');

		// Get current logged in user
		$my 	= FD::user();

		// Determines if the calendar is being edited
		$id 	= JRequest::getInt( 'id' );
		$calendar->load( $id );

		if( !$id )
		{
			return $ajax->reject();
		}

		if( $calendar->user_id != $my->id )
		{
			return $ajax->reject();
		}

		// Load up the theme
		$theme 	= FD::themes();
		$theme->set( 'calendar'	, $calendar );

		$output	= $theme->output( 'apps/user/calendar/canvas/dialog.delete' );

		return $ajax->resolve( $output );
	}

	/**
	 * Renders a single appointment item
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function view()
	{
		// Check for request forgeries
		FD::checkToken();

		// Ensure that the user is logged in
		FD::requireLogin();

		// Load up ajax library
		$ajax 	= FD::ajax();

		// Load up the table
		$calendar 	= FD::table('Calendar');

		// Get current logged in user
		$my 	= FD::user();

		// Determines if the calendar is being edited
		$id 	= JRequest::getInt( 'id' );
		$calendar->load( $id );

		if( !$id )
		{
			return $ajax->reject();
		}

		$user 	= FD::user( $calendar->user_id );
		$app	= $this->getApp();

		$params = $this->getParams();

		// Load up the theme
		$theme 	= FD::themes();
		$theme->set( 'calendar'	, $calendar );
		$theme->set( 'user'		, $user );
		$theme->set( 'app'		, $app );
		$theme->set( 'params'	, $params );

		$output	= $theme->output( 'apps/user/calendar/canvas/dialog.view' );

		return $ajax->resolve( $output );
	}

	/**
	 * Saves the schedule
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function store()
	{
		// Check for request forgeries
		FD::checkToken();

		// Ensure that the user is logged in
		FD::requireLogin();

		// Load up ajax library
		$ajax 	= FD::ajax();

		// Load up the table
		$table 	= FD::table('Calendar');

		// Get current logged in user
		$my 	= FD::user();

		// Determines if the calendar is being edited
		$id 	= JRequest::getInt( 'id' );
		$table->load( $id );

		// If this is being edited, double check the permissions
		if( $id && $table->id )
		{
			if( $table->user_id != $my->id )
			{
				return $ajax->reject( JText::_( 'APP_CALENDAR_NOT_ALLOWED_TO_EDIT' ) , SOCIAL_MSG_ERROR );
			}
		}

		// Get the starting and ending date
		$start 	= JRequest::getVar( 'startVal' );
		$end 	= JRequest::getVar( 'endVal' );

		$startDate 	= FD::date( $start , false );
		$endDate 	= FD::date( $end , false );

		// Get the posted data
		$post 		= JRequest::get( 'post' );

		// Bind the posted data
		$table->bind( $post );

		$table->date_start 	= $startDate->toMySQL();
		$table->date_end	= $endDate->toMySQL();
		$table->user_id 	= FD::user()->id;

		// Determines if we should publish this on the stream
		$publishStream 	= JRequest::getBool( 'stream' );

		$state	= $table->store();

		if( !$state )
		{
			return $ajax->reject( $table->getError() , SOCIAL_MSG_ERROR );
		}

		if( $publishStream )
		{
			$verb 	= $id ? 'update' : 'create';

			$table->createStream( $verb );
		}


		return $ajax->resolve( $table->id );
	}
}
