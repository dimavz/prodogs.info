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

class ThemesHelperForm extends ThemesHelperAbstract
{
	/**
	 * Generates a hidden input to store the active tab
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function activeTab($active = '')
	{
		$theme = ES::themes();
		$theme->set('active', $active);
		$output = $theme->output('admin/html/form/active.tab');

		return $output;
	}

	/**
	 * Renders a colour picker input
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function colorpicker($name, $value = '', $revert = '')
	{
		static $script = null;
		$loadScript = false;
		
		if (is_null($script)) {
			$loadScript = true;
			$script = true;
		}

		JHTML::_('behavior.colorpicker');

		$theme = ES::themes();
		$theme->set('loadScript', $loadScript);
		$theme->set('name', $name);
		$theme->set('value', $value);
		$theme->set('revert', $revert);

		$output = $theme->output('admin/html/form/colorpicker');

		return $output;
	}

	/**
	 * Generates token for the form.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function token()
	{
		$token = FD::token();

		$theme = ES::themes();
		$theme->set('token', $token);

		$content = $theme->output('admin/html/form/token');

		return $content;
	}

	/**
	 * Allows caller to generically load up a form action which includes the generic data
	 *
	 * @since	1.4
	 * @access	public
	 */
	public function action($controller, $task = '', $view = '')
	{
		$theme = ES::themes();

		$theme->set('controller', $controller);
		$theme->set('task', $task);
		$theme->set('view', $view);

		$output = $theme->output('admin/html/form/action');

		return $output;
	}

	/**
	 * Generates a location form
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function location($location, $options = '', $type = '')
	{
		$uid = uniqid();
		$classname = 'es-location-' . $uid;
		$selectorName = '';
		$selector  = '.' . $classname;

		if (isset($options['selectorName']) && $options['selectorName']) {
			$selectorName = $options['selectorName'];
			$selector = '[' . $selectorName . ']';
		}

		if (empty($location)) {
			$location = ES::table('Location');
		}

		$theme = ES::themes();
		$theme->set('uid', $uid);
		$theme->set('classname', $classname);
		$theme->set('selector', $selector);
		$theme->set('selectorName', $selectorName);
		$theme->set('location', $location);

		$namespace = 'site/helpers/form/location';
		if ($type) {
			$namespace .= '.' . $type;
		}

		return $theme->output($namespace);
	}

	/**
	 * Generates the item id
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function itemid( $itemid = null )
	{
		// Check for the current itemid in the request
		if( is_null( $itemid ) )
		{
			$itemid		= JRequest::getInt( 'Itemid' , 0 );
		}

		if( !$itemid )
		{
			return;
		}

		$theme	= FD::themes();

		$theme->set( 'itemid'	, $itemid );

		$content = $theme->output('admin/html/form/itemid');

		return $content;
	}


	/**
	 * Renders a WYSIWYG editor that is configured in Joomla
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function editor( $name , $value = '' , $id = '' , $editor = '' )
	{
		// Get the editor
		$editor = JFactory::getEditor('tinymce');

		$theme = FD::themes();

		$theme->set( 'editor'	, $editor );
		$theme->set( 'name'		, $name );
		$theme->set( 'content'	, $value );
		$content 	= $theme->output('admin/html/form/editor');

		return $content;
	}

	/**
	 * Renders the popover html contents
	 *
	 * @since	4.0
	 * @access	public
	 */
	public function label($label, $columns = 3, $help = true, $desc = '')
	{
		if (!$desc) {
			$desc = $label . '_DESC';
			$desc = JText::_($desc);
		}

		$label = JText::_($label);

		$theme = ES::themes();
		$theme->set('columns', $columns);
		$theme->set('help', $help);
		$theme->set('label', $label);
		$theme->set('desc', $desc);

		return $theme->output('site/helpers/form/label');
	}
	/**
	 * Renders a user group select list
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function usergroups( $name , $selected = '' )
	{
		$model = FD::model('Users');
		$groups = $model->getUserGroups();

		$theme = FD::themes();

		$theme->set( 'name', $name );
		$theme->set( 'selected', $selected );
		$theme->set( 'groups', $groups );

		$output = $theme->output('admin/html/form/usergroups');

		return $output;
	}

	/**
	 * Renders a calendar input
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function calendar($name, $value = '', $id = '', $attributes = '', $time = false, $format = 'DD-MM-YYYY', $language = false, $restrictMinDate = true, $fullWidth = false)
	{
		if (is_array($attributes)) {
			$attributes	= implode(' ', $attributes);
		}

		$theme = ES::themes();
		$uuid = uniqid();

		if (!$language) {
			$language = JFactory::getDocument()->getLanguage();
		}

		$theme->set('fullWidth', $fullWidth);
		$theme->set('language', $language);
		$theme->set('time', $time);
		$theme->set('uuid', $uuid);
		$theme->set('format', $format);
		$theme->set('name', $name);
		$theme->set('value', $value);
		$theme->set('id', $id);
		$theme->set('attributes', $attributes);
		$theme->set('restrictMinDate', $restrictMinDate);

		return $theme->output('admin/html/form/calendar');
	}

	/**
	 * Renders a select list for editors on the site
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function editors($name, $value = '', $id = '', $attributes = '', $inherit = true)
	{
		if (is_array($attributes)) {
			$attributes	= implode(' ', $attributes);
		}

		$theme = ES::themes();

		// Get list of editors on the site first.
		$editors = self::getEditors();

		$theme->set('inherit', $inherit);
		$theme->set('editors', $editors);
		$theme->set('name', $name);
		$theme->set('value', $value);
		$theme->set('id', $id);
		$theme->set('attributes', $attributes);

		return $theme->output('admin/html/form/editors');
	}

	/**
	 * Displays the text input
	 *
	 * @since	1.4
	 * @access	public
	 */
	public function text($name, $id = null, $value = '', $options)
	{
		$class = 'o-form-control';
		$placeholder = '';
		$attributes = '';

		if (isset($options['attr']) && $options['attr']) {
			$attributes = $options['attr'];
		}

		if (isset($options['class']) && $options['class']) {
			$class = $options['class'];
		}

		if (isset($options['placeholder']) && $options['placeholder']) {
			$placeholder = JText::_($options['placeholder']);
		}

		$theme = ES::themes();
		$theme->set('attributes', $attributes);
		$theme->set('name', $name);
		$theme->set('id', $id);
		$theme->set('value', $value);
		$theme->set('class', $class);
		$theme->set('placeholder', $placeholder);

		return $theme->output('admin/html/form/text');
	}

	/**
	 * Displays the textarea input
	 *
	 * @since	1.4
	 * @access	public
	 */
	public function textarea($name, $id = null, $value = '', $options)
	{
		$class = 'o-form-control';
		$placeholder = '';

		if (isset($options['class']) && $options['class']) {
			$class = $options['class'];
		}

		if (isset($options['placeholder']) && $options['placeholder']) {
			$placeholder = JText::_($options['placeholder']);
		}

		$theme = ES::themes();
		$theme->set('name', $name);
		$theme->set('id', $id);
		$theme->set('value', $value);
		$theme->set('class', $class);
		$theme->set('placeholder', $placeholder);

		return $theme->output('admin/html/form/textarea');
	}


	/**
	 * Retrieve list of editors from the site
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getEditors()
	{
		$db 	= FD::db();
		$sql 	= $db->sql();

		$sql->select( '#__extensions' );
		$sql->column( 'element' , 'value' );
		$sql->column( 'name' , 'text' );
		$sql->where( 'folder' , 'editors' );
		$sql->where( 'type' , 'plugin' );
		$sql->where( 'enabled' , SOCIAL_STATE_PUBLISHED );

		$db->setQuery( $sql );
		$editors 	= $db->loadObjectList();

		// Load the language file of each editors
		$lang 	= JFactory::getLanguage();

		foreach( $editors as &$editor )
		{
			$lang->load( $editor->text . '.sys' , JPATH_ADMINISTRATOR , null , false , false );

			$editor->text 	= JText::_( $editor->text );
		}

		return $editors;
	}

	/**
	 * Displays a dropdown list for profile type selection
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function profiles($name, $id = '', $selected = null, $attributes = array())
	{
		// If the id is empty, we'll re-use the name as the id.
		$id = !$id ? $name : $id;

		// Get the list of profiles on the site
		$model = ES::model('Profiles');
		$profiles = $model->getProfiles();

		$multiple = isset($attributes['multiple']) ? $attributes['multiple'] : false;

		// Determines if we should add a default profile into the dropdown
		$default = false;
		if (isset($attributes['default']) && $attributes['default']) {
			$default = true;
			unset($attributes['default']);
		}

		$attributes	= ES::makeArray($attributes);
		$attributes	= implode(' ', $attributes);

		$theme = ES::themes();
		$theme->set('default', $default);
		$theme->set('multiple', $multiple);
		$theme->set('name', $name);
		$theme->set('attributes', $attributes);
		$theme->set('profiles', $profiles);
		$theme->set('id', $id);
		$theme->set('selected', $selected);

		$output = $theme->output('admin/html/form/profiles');

		return $output;
	}

	/**
	 * Displays a pull down select list to select a profile type
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function groupcategories($name, $id = '', $selected = null, $attributes = array())
	{
		// If the id is empty, we'll re-use the name as the id.
		$id = !$id ? $name : $id;

		// Get the list of group categories
		$model = ES::model('GroupCategories');
		$categories = $model->getCategories();

		$multiple = isset($attributes['multiple']) ? $attributes['multiple'] : false;

		$attributes	= FD::makeArray( $attributes );
		$attributes	= implode( ' ' , $attributes );

		$theme = ES::themes();
		$theme->set('multiple', $multiple);
		$theme->set('name', $name );
		$theme->set('attributes', $attributes );
		$theme->set('categories', $categories);
		$theme->set('id', $id );
		$theme->set('selected', $selected);

		$output = $theme->output('admin/html/form/group.categories');

		return $output;
	}

	/**
	 * Displays a pull down select list to select a profile type
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function eventcategories($name, $id = '', $selected = null, $attributes = array())
	{
		// If the id is empty, we'll re-use the name as the id.
		$id = !$id ? $name : $id;

		// Get the list of group categories
		$model = ES::model('EventCategories');
		$categories = $model->getCategories();

		$multiple = isset($attributes['multiple']) ? $attributes['multiple'] : false;

		$attributes	= FD::makeArray( $attributes );
		$attributes	= implode( ' ' , $attributes );

		$theme = ES::themes();
		$theme->set('multiple', $multiple);
		$theme->set('name', $name );
		$theme->set('attributes', $attributes );
		$theme->set('categories', $categories);
		$theme->set('id', $id );
		$theme->set('selected', $selected);

		$output = $theme->output('admin/html/form/event.categories');

		return $output;
	}

	/**
	 * Renders pagination settings
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function pagination($name, $id = '')
	{
		$options = array(
						array('value' => '5', 'text' => 'COM_EASYSOCIAL_STREAM_SETTINGS_5_ITEMS'),
						array('value' => '10', 'text' => 'COM_EASYSOCIAL_STREAM_SETTINGS_10_ITEMS'),
						array('value' => '15', 'text' => 'COM_EASYSOCIAL_STREAM_SETTINGS_15_ITEMS'),
						array('value' => '20', 'text' => 'COM_EASYSOCIAL_STREAM_SETTINGS_20_ITEMS'),
						array('value' => '25', 'text' => 'COM_EASYSOCIAL_STREAM_SETTINGS_25_ITEMS'),
						array('value' => '30', 'text' => 'COM_EASYSOCIAL_STREAM_SETTINGS_30_ITEMS'),
						array('value' => '35', 'text' => 'COM_EASYSOCIAL_STREAM_SETTINGS_35_ITEMS'),
						array('value' => '40', 'text' => 'COM_EASYSOCIAL_STREAM_SETTINGS_40_ITEMS'),
						array('value' => '45', 'text' => 'COM_EASYSOCIAL_STREAM_SETTINGS_45_ITEMS'),
						array('value' => '50', 'text' => 'COM_EASYSOCIAL_STREAM_SETTINGS_50_ITEMS')
					);

		$selected = $this->config->get($name);

		$theme = ES::themes();
		$output = $theme->html('grid.selectlist', $name, $selected, $options);

		return $output;
	}

	/**
	 * Displays a pull down select list to select a profile type
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function pagecategories($name, $id = '', $selected = null, $attributes = array())
	{
		// If the id is empty, we'll re-use the name as the id.
		$id = !$id ? $name : $id;

		// Get the list of page categories
		$model = ES::model('PageCategories');
		$categories = $model->getCategories();

		$multiple = isset($attributes['multiple']) ? $attributes['multiple'] : false;

		$attributes	= ES::makeArray( $attributes);
		$attributes	= implode(' ', $attributes);

		$theme = ES::themes();
		$theme->set('multiple', $multiple);
		$theme->set('name', $name );
		$theme->set('attributes', $attributes );
		$theme->set('categories', $categories);
		$theme->set('id', $id );
		$theme->set('selected', $selected);

		$output = $theme->output('admin/html/form/page.categories');

		return $output;
	}

	/**
	 * Displays a list of menu forms
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function menus( $name , $selected , $menus = array() )
	{
		require_once realpath(JPATH_ADMINISTRATOR . '/components/com_menus/helpers/menus.php');

		$items 	= MenusHelper::getMenuLinks();

		// Build the groups arrays.
		foreach ($items as $menu)
		{
			// Initialize the group.
			$menus[$menu->menutype] = array();

			// Build the options array.
			foreach ($menu->links as $link)
			{
				$menus[$menu->menutype][] = JHtml::_( 'select.option' , $link->value , $link->text );
			}
		}

		$theme 	= FD::themes();

		$theme->set( 'name'		, $name );
		$theme->set( 'menus'	, $menus );
		$theme->set( 'selected' , $selected );
		$output = $theme->output('admin/html/form/menus');

		return $output;
	}

	/**
	 * Generates a on / off switch
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function toggler($name, $enabled = false, $id = '', $attributes = '')
	{
		if (is_array($attributes)) {
			$attributes = implode(' ', $attributes);
		}

		if (!$id) {
			$id = $name;
		}

		$theme = ES::themes();
		$theme->set('id', $id);
		$theme->set('name', $name);
		$theme->set('enabled', $enabled);
		$theme->set('attributes', $attributes);

		$output = $theme->output('site/helpers/form/toggler');

		return $output;
	}

	/**
	 * Generates a popdown selection
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function popdown($name, $selected = '', $options = array(), $direction = 'right')
	{
		$selectedHtml = '';

		if (!$selected) {
			$selectedHtml = $options[0];

			if (is_object($selectedHtml)) {
				$selectedHtml = $selectedHtml->selected;
			}
			
		} else {

			foreach ($options as $option) {
				if ($option->value != $selected) {
					continue;
				}

				$selectedHtml = $option->selected;
			}
		}

		$theme = ES::themes();
		$theme->set('selected', $selected);
		$theme->set('selectedHtml', $selectedHtml);
		$theme->set('options', $options);
		$theme->set('name', $name);
		$theme->set('direction', $direction);

		$output = $theme->output('site/helpers/form/popdown');

		return $output;
	}

	/**
	 * Generates a popdown option
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function popdownOption($value, $title, $description, $icon = '', $attributes = array(), $url = 'javascript:void(0);')
	{
		$title = JText::_($title);
		$description = JText::_($description);

		if ($attributes && is_array($attributes)) {
			$attributes = implode(' ', $attributes);
		}

		if (!$attributes) {
			$attributes = '';
		}

		$theme = ES::themes();
		$theme->set('value', $value);
		$theme->set('title', $title);
		$theme->set('description', $description);
		$theme->set('icon', $icon);
		$theme->set('selected', false);
		$theme->set('attributes', $attributes);
		$theme->set('url', $url);

		$data = new stdClass();
		$data->html = $theme->output('site/helpers/form/popdown.option');
		$data->value = $value;
		$data->icon = $icon;

		// To get the selected html output
		$theme->set('selected', true);
		$data->selected = $theme->output('site/helpers/form/popdown.option');

		return $data;
	}

	/**
	 * Allows caller to select the actor for action on the site
	 * For now this only applicable for Page
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function postAs($values = array())
	{
		if (!$values) {
			return;
		}

		$items = array();

		foreach ($values as $key => $value) {
			if ($key == SOCIAL_TYPE_PAGE) {
				$item = ES::cluster($value);
			} else {
				$item = ES::user($value);
			}

			$items[] = $item;
		}

		$theme = ES::themes();

		$theme->set('default', 'page');
		$theme->set('items', $items);

		$output = $theme->output('site/helpers/form/post.as');

		return $output;
	}

	/**
	 * Renders a form title
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function title($text, $heading = 'h2')
	{
		$theme = ES::themes();

		$text = JText::_($text);
		$theme->set('heading', $heading);
		$theme->set('text', $text);
		$output = $theme->output('site/helpers/form/title');

		return $output;
	}

	/**
	 * Renders a workflow dropdown
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function workflows($name, $type = SOCIAL_TYPE_USER, $selected = '')
	{
		$model = ES::model('Workflows');
		$workflows = $model->getWorkflowByType($type);

		$theme = ES::themes();
		$theme->set('name', $name);
		$theme->set('workflows', $workflows);
		$theme->set('selected', $selected);

		$output = $theme->output('admin/html/form/workflows');

		return $output;
	}
}