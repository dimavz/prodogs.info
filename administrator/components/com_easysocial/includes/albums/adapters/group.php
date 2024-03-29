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

require_once(__DIR__ . '/abstract.php');

class SocialAlbumsAdapterGroup extends SocialAlbumsAdapter
{
	private $group 	= null;

	public function __construct(SocialAlbums $lib)
	{
		$this->group = ES::group($lib->uid);

		parent::__construct($lib);
	}

	/**
	 * Generates the mini header of the albums area
	 *
	 * @since	2.0
	 * @access	public
	 * @return	string
	 */
	public function heading()
	{
		$theme = ES::themes();
		$theme->set('group', $this->group);

		$output = $theme->output('site/albums/miniheaders/group');

		return $output;
	}

	public function isValidNode()
	{
		if (!$this->group->id) {
			$this->lib->setError(JText::_('COM_EASYSOCIAL_GROUPS_GROUP_NOT_VALID'));
			return false;
		}

		if (ES::user()->id != $this->group->creator_uid) {
			if(ES::user()->isBlockedBy($this->group->creator_uid)) {
				return JError::raiseError(404, JText::_('COM_EASYSOCIAL_GROUPS_GROUP_NOT_FOUND'));
			}
		}

		return true;
	}

	/**
	 * Retrieve the album link
	 *
	 * @since   2.0
	 * @access  public
	 * @param   string
	 * @return
	 */
	public function getViewAlbumsLink($xhtml = true)
	{
		$url = ESR::albums(array('uid' => $this->group->getAlias(), 'type' => SOCIAL_TYPE_GROUP), $xhtml);
		return $url;
	}

	public function getCoreAlbumsTitle()
	{
		return 'COM_EASYSOCIAL_ALBUMS_GROUP_ALBUMS';
	}

	public function getMyAlbumsTitle()
	{
		return 'COM_EASYSOCIAL_ALBUMS_GROUP_MY_ALBUMS';
	}

	/**
	 * Retrieve the page title
	 *
	 * @since   2.0
	 * @access  public
	 * @param   string
	 * @return
	 */
	public function getPageTitle($layout, $prefix = true)
	{
		if ($layout == 'item') {
			$title = $this->lib->data->get('title');
		}

		if ($layout == 'form') {
			$title = JText::_('COM_EASYSOCIAL_PAGE_TITLE_CREATE_ALBUM');
		}

		if ($layout == 'default') {
			$title = JText::_('COM_EASYSOCIAL_PAGE_TITLE_ALBUMS');
		}

		if ($prefix) {
			$title = $this->group->getName() . ' - ' . $title;
		}

		return $title;
	}

	/**
	 * Determines if the current viewer can view the album
	 *
	 * @since	1.2
	 * @access	public
	 * @param	string
	 * @return
	 */
	public function viewable()
	{
		// Public group should be accessible.
		if ($this->group->isOpen()) {
			return true;
		}

		// Group members should be allowed
		if ($this->group->isMember()) {
			return true;
		}

		return false;
	}

	/**
	 * Determines if the current viewer can delete the album
	 *
	 * @since	1.2
	 * @access	public
	 * @param	string
	 * @return
	 */
	public function deleteable()
	{
		// If this is a core album, it should never be allowed to delete
		if ($this->album->isCore()) {
			return false;
		}

		$my = ES::user();

		// Super admins and  Group admin are allowed to edit
		if ($my->isSiteAdmin() || $this->group->isAdmin()) {
			return true;
		}

		// Owner of the albums are allowed to edit
		if ($my->id == $this->album->user_id) {
			return true;
		}

		return false;
	}

	/**
	 * Determines if the viewer can edit the album
	 *
	 * @since	1.2
	 * @access	public
	 * @param	string
	 * @return
	 */
	public function editable()
	{
		// Perhaps the person is creating a new album
		if (!$this->album->id) {
			return true;
		}

		$my = ES::user();

		// Super admins and  Group admin are allowed to edit
		if ($my->isSiteAdmin() || $this->group->isAdmin()) {
			return true;
		}

		// If user is a member, allow them to edit
		if ($this->group->isMember()) {
			return true;
		}

		// Owner of the albums are allowed to edit
		if ($my->id == $this->album->user_id) {
			return true;
		}

		return false;
	}

	/**
	 * Set the breadcrumb for the page
	 *
	 * @since   2.0
	 * @access  public
	 * @param   string
	 * @return
	 */
	public function setBreadcrumbs($layout)
	{
		// Set the link to the groups
		$this->document->breadcrumb($this->group->getName(), ESR::groups(array('layout' => 'item', 'id' => $this->group->getAlias())));

		if ($layout == 'form') {
			$this->document->breadcrumb($this->getPageTitle('default', false));
		}

		if ($layout == 'item') {
			$this->document->breadcrumb($this->getPageTitle('default', false), ESR::albums(array('uid' => $this->group->id, 'type' => SOCIAL_TYPE_GROUP)));
		}

		// Set the albums breadcrumb
		$this->document->breadcrumb($this->getPageTitle($layout, false));
	}

	public function setPrivacy($privacy, $customPrivacy)
	{
		// We don't really need to use the privacy library here.
	}

	/**
	 * Determine whether the user able to create album or not
	 *
	 * @since   2.0
	 * @access  public
	 * @param   string
	 * @return
	 */
	public function canCreateAlbums()
	{
		// Site admin's are always allowed
		$my = ES::user();

		// Super admins are allowed to edit
		if ($my->isSiteAdmin()){
			return true;
		}

		// @TODO: Add additional group access checks
		if ($this->group->canCreatePhotos() && $my->getAccess()->get('photos.create') && $my->getAccess()->get('albums.create') && $this->group->getCategory()->getAcl()->get('photos.enabled', true)) {
			return true;
		}

		return false;
	}

	public function canViewAlbum()
	{
		// Public group should be accessible.
		if ($this->group->isOpen()) {
			return true;
		}

		if ($this->my->isSiteAdmin()) {
			return true;
		}

		if ($this->group->isAdmin()) {
			return true;
		}

		// Group members are allowed to upload and collaborate in albums
		if ($this->group->isMember()) {
			return true;
		}


		return false;
	}

	/**
	 * Determine whether the user able to upload a photo or not
	 *
	 * @since   2.0
	 * @access  public
	 * @param   string
	 * @return
	 */
	public function canUpload()
	{
		$my = ES::user();

		if (!$my->getAccess()->get('photos.create')) {
			return false;
		}

		if ($this->group->isAdmin()) {
			return true;
		}

		// Group members are allowed to upload and collaborate in albums
		if ($this->group->isMember()) {
			return true;
		}

		if ($this->lib->data->user_id == $my->id) {
			return true;
		}

		return false;
	}

	public function exceededLimits()
	{
		// @TODO: Check for group limits

		return false;
	}

	public function getExceededHTML()
	{
		$theme = ES::themes();
		$theme->set('user', $my);
		$html = $theme->output('site/albums/exceeded');

		return $this->output($html, $album->data);
	}

	/**
	 * Determine whether user can set a cover or not
	 *
	 * @since   2.0
	 * @access  public
	 * @param   string
	 * @return
	 */
	public function canSetCover()
	{
		// Super admins and  Group admin are allowed to edit
		if ($this->my->isSiteAdmin() || $this->group->isAdmin()) {
			return true;
		}

		// If the user is the owner, they are allowed
		if ($this->album->user_id == $this->my->id) {
			return true;
		}

		return false;
	}

	/**
	 * Determine if the user is owner of this album
	 *
	 * @since   2.0
	 * @access  public
	 * @param   string
	 * @return
	 */
	public function isOwner()
	{
		// Super admins and Group admin are always the owner
		if ($this->my->isSiteAdmin() || $this->group->isAdmin()) {
			return true;
		}

		if ($this->album->user_id == $this->my->id) {
			return true;
		}

		return false;
	}

	/**
	 * Determines if should show My Albums or not
	 *
	 * @since	2.0
	 * @access	public
	 * @param	string
	 * @return
	 */
	public function showMyAlbums()
	{
		if ($this->my->guest) {
			return false;
		}
		
		return true;
	}

	public function allowMediaBrowser()
	{
		// Super admins and Group admin are allowed
		if ($this->my->isSiteAdmin() || $this->group->isAdmin()) {
			return true;
		}

		return false;
	}

	public function hasPrivacy()
	{
		return false;
	}

	public function getCreateLink()
	{
		$options = array('layout' => 'form', 'uid' => $this->group->getAlias(), 'type' => SOCIAL_TYPE_GROUP);

		return ESR::albums($options);
	}

	public function getUploadLimit()
	{
		$access = $this->group->getAccess();

		return $access->get('photos.maxsize') . 'M';
	}

	public function isBlocked()
	{
		if (ES::user()->id != $this->group->creator_uid) {
			return ES::user()->isBlockedBy($this->group->creator_uid);
		}
		return false;
	}

	/**
	 * Determine whether hits should be incremented.
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function hit()
	{
		// Applying hit to the cluster.
		$this->group->hit();

		// Applying hit to the album item.
		$this->lib->data->hit();
	}
}
