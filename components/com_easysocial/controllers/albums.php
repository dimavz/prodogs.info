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

ES::import('site:/controllers/controller');

class EasySocialControllerAlbums extends EasySocialController
{
	public function __construct()
	{
		parent::__construct();

		$this->registerTask('create', 'store');
		$this->registerTask('update', 'store');
	}

	/**
	 * Retrieves a play list for an album
	 *
	 * @since	1.2
	 * @access	public
	 */
	public function playlist()
	{
		ES::checkToken();

		// Retrieve the album data
		$id = $this->input->get('albumId', 0, 'int');
		$streamId = $this->input->get('streamId', 0, 'int');

		// Load the album
		$album = ES::table('Album');
		$album->load($id);

		if (!$id || !$album->id) {
			$this->view->setMessage('COM_EASYSOCIAL_ALBUMS_INVALID_ALBUM_ID_PROVIDED', ES_ERROR);
			return $this->view->call(__FUNCTION__);
		}

		$model = ES::model('Photos');
		$options = array('album_id' => $album->id, 'pagination' => false);

		if ($streamId) {
			$options['streamId'] = $streamId;
		}

		$items = $model->getPhotos($options);

		// Only pick items that the user really can see
		$photos = array();

		foreach ($items as $item) {
			if ($item->viewable()) {
				$photos[] = $item;
			}
		}

		return $this->view->call(__FUNCTION__, $photos);
	}

	/**
	 * Custom implementation of favourite for albums
	 *
	 * @since	1.4
	 * @access	public
	 */
	public function favourite()
	{
		// Only registered users are allowed to like an album
		ES::requireLogin();

		ES::checkToken();

		// Get the album id.
		$id = JRequest::getInt( 'id' );

		// Load up album
		$album = ES::table('Album');
		$album->load($id);

		if (!$id || !$album->id) {
			$this->view->setMessage(JText::_('COM_EASYSOCIAL_ALBUMS_INVALID_ALBUM_ID_PROVIDED'), ES_ERROR);
			return $this->view->call(__FUNCTION__);
		}

		$model = ES::model('Albums');
		$exists = $model->isFavourite($album->id, $this->my->id);

		// If already favourited, unfavourite it
		if ($exists) {
			$state = $model->removeFavourite($album->id, $this->my->id);
		} else {
			$state = $model->addFavourite($album->id, $this->my->id);

			if ($this->my->id != $album->user_id) {
				// Email template
				$emailOptions = array(
										'actor'		=> $this->my->getName(),
										'title'		=> 'COM_EASYSOCIAL_EMAILS_ALBUM_FAVOURITE_SUBJECT',
										'template'	=> 'site/albums/new.favourite',
										'permalink' 	=> $album->getPermalink(true, true),
										'albumTitle'	=> $album->get('title'),
										'albumPermalink' => $album->getPermalink(false, true),
										'albumCover'	=> $album->getCover(),
										'actorAvatar'   => $this->my->getAvatar(SOCIAL_AVATAR_SQUARE),
										'actorLink'     => $this->my->getPermalink(true, true)
								);

				$systemOptions = array(
										'context_type'  => 'albums.user.favourite',
										'context_ids'	=> $album->id,
										'url'           => $album->getPermalink(false, false, 'item', false),
										'actor_id'      => $this->my->id,
										'uid'           => $album->id,
										'aggregate'     => true
									);

				ES::notify('albums.favourite', array($album->user_id), $emailOptions, $systemOptions);

			}

		}

		if ($state === false) {
			$this->view->setMessage(JText::_( 'COM_EASYSOCIAL_ALBUMS_ERROR_SAVING_FAVOURITE'), ES_ERROR);
			return $this->view->call( __FUNCTION__ );
		}

		return $this->view->call( __FUNCTION__, $state );
	}

	/**
	 * Retrieve a list of albums on the site.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getAlbums()
	{
		ES::checkToken();

		// To get the referer url for sorting purpose
		$callback = ESR::referer();

		// Default sorting value
		$ordering = $this->input->get('sort', 'latest', 'cmd');

		$filter = $this->input->get('filter', '', 'cmd');

		// Get a list of normal albums
		$options = array(
							'pagination' => true,
							'order' => 'assigned_date',
							'direction' => 'DESC',
							'core' => false
						);

		if ($filter == 'all') {
			$options['privacy'] = true;
		}

		if ($filter == 'favourite' && $this->my->id) {
			$options['favourite'] = true;
			$options['userFavourite'] = $this->my->id;
		} else {
			$filter = '';
		}

		if ($ordering == 'alphabetical') {
			$options['order'] = 'title';
			$options['direction'] = 'ASC';
		}

		if ($ordering == 'popular') {
			$options['order'] = 'hits';
			$options['direction'] = 'DESC';
		}

		if ($ordering == 'likes') {
			$options['order'] = 'likes';
			$options['direction'] = 'DESC';
		}

		$model = ES::model('Albums');
		$model->initStates();
		$albums = $model->getAlbums('' , SOCIAL_TYPE_USER , $options);

		// we will get the photos here
		$photos = array();

		if ($albums) {

			$ids = array();
			for ($i = 0; $i < count($albums); $i++) {
				$album =& $albums[$i];

				// tagging
				$album->tags = $album->getTags(true, 3);
				$ids[] = $album->id;
			}

			if ($ids) {
				$pModel = ES::model('Photos');
				$photos = $pModel->getAlbumPhotos($ids, 5);
			}
		}



		$pagination = $model->getPagination();
		$pagination->setVar('view', 'albums');
		$pagination->setVar('sort', $ordering);

		if ($filter == 'favourite') {
			$pagination->setVar('layout', 'favourite');
		}

		return $this->view->call(__FUNCTION__, $albums, $photos, $pagination);
	}

	/**
	 * Retrieve album object.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getAlbum()
	{
		ES::checkToken();

		$id = $this->input->get('id', 0, 'int');

		if ($id === 0) {
			$this->view->setMessage('COM_EASYSOCIAL_ALBUMS_INVALID_ALBUM_ID_PROVIDED', ES_ERROR);
			return $this->view->call(__FUNCTION__, false);
		}

		// Load the album object
		$album = ES::table('Album');
		$album->load( $id );

		return $this->view->call(__FUNCTION__, $album);
	}

	/**
	 * Allows caller to save an album
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function store()
	{
		ES::requireLogin();
		ES::checkToken();

		$uid = $this->input->get('uid', 0, 'int');
		$type = $this->input->get('type', SOCIAL_TYPE_USER);

		// Get the data from request.
		$post = $this->input->getArray('post');
		$id = $this->input->get('id', 0, 'int');

		// Check if the albums is fully created for notification purpose
		$finalized = $this->input->get('finalized', 0, 'int');

		// Load the album
		$album = ES::table('Album');
		$album->load($id);

		// Determine if this item is a new item
		$isNew = true;

		if ($album->id) {
			$isNew = false;
		}

		// Load the album's library
		$lib = ES::albums($uid, $type, $id);

		// Check if the person is allowed to create albums
		if ($isNew && !$lib->canCreateAlbums()) {
			return $this->view->exception('COM_EASYSOCIAL_ALBUMS_ACCESS_NOT_ALLOWED');
		}

		// Set the album uid and type
		$album->uid = $uid;
		$album->type = $type;

		// Determine if the user has already exceeded the album creation
		if ($isNew && $lib->exceededLimits()) {
			$this->view->setMessage('COM_EASYSOCIAL_ALBUMS_ACCESS_EXCEEDED_LIMIT', ES_ERROR);
			return $this->view->call(__FUNCTION__);
		}

		// Set the album creation alias
		$album->assigned_date = ES::date()->toMySQL();

		// Set custom date
		if (isset($post['date'])) {
			$album->assigned_date = $post['date'];

			unset($post['date']);
		}

		// do not bind the finalized flag
		unset($post['finalized']);

		// Map the remaining post data with the album.
		$album->bind($post);

		// Set the user creator
		if (!$album->id) {
			$album->user_id = $this->my->id;

			// Set notified state to get ready.
			$album->notified = SOCIAL_ALBUM_READY_TO_NOTIFY;
		}

		// hold the previous finalized flag. used in later photo processing.
		$previousFinalized = null;

		// get the previoous finalized flag
		if ($album->id) {
			$previousFinalized = $album->finalized;
		}

		// set the finalized flag
		$album->finalized = $finalized;

		// Try to store the album
		$state = $album->store();

		// Throw error when there's an error saving album
		if (!$state) {
			$this->view->setMessage($album->getError(), ES_ERROR);

			return $this->view->call(__FUNCTION__);
		}

		// if this is a new album, we need to reset the lib so that the album property in the lib will have the correct album id. #5448
		if ($isNew) {
			$lib = ES::albums($uid, $type, $album);
		}

		// Detect for location
		if ($this->config->get('photos.location')) {
			$address = $this->input->get('address', '', 'string');
			$latitude = $this->input->get('latitude', '', 'default');
			$longitude = $this->input->get('longitude', '', 'default');

			$album->bindLocation($address, $latitude, $longitude);
		}

		// Set the privacy for the album
		$privacy = $this->input->get('privacy', '', 'word');
		$customPrivacy = $this->input->get('privacyCustom', '', 'string');

		// this happen when user upload a photo before they create album.
		// By setting the privacy to onlyme, the site will not render the photo stream for this albums.
		// For now we use this finalized identifier to determine if this album save is from photo upload or not.
		// #5617

		$finalized = $this->input->get('finalized', 0, 'int');
		if ($isNew && !$finalized) {
			$privacy = 'only_me';
		}

		// Set the privacy through our library
		$lib->setPrivacy($privacy, $customPrivacy);

		$albumPhotos = array();

		if (isset($post['photos'])) {

			// Save individual photos
			foreach($post['photos'] as $photo) {
				$photo = (object) $photo;

				// Load the photo object
				$photoTable	= ES::table('photo');
				$photoTable->load( $photo->id );

				$photoTable->album_id = $album->id;
				$photoTable->title = $photo->title;
				$photoTable->caption = $photo->caption;

				if (isset($post['ordering']) && isset($post['ordering'][$photo->id])) {
					$photoTable->ordering = $post['ordering'][$photo->id];
				}

				if (isset($photo->date) && !empty($photo->date)) {
					$photoTable->assigned_date = ES::date($photo->date)->toMySQL();
				}

				// Throw error when there's an error saving photo
				if (!$photoTable->store()) {
					$this->view->setMessage($photoTable->getError(), ES_ERROR);

					return $this->view->call(__FUNCTION__);
				}

				// Add stream item for the photos.
				$createStream = $this->input->getBool('createStream');

				$streamExist = ES::stream()->exists($photoTable->id, 'photos', 'create', $this->my->id);

				if (($createStream && !$streamExist) || ($album->finalized && $album->finalized != $previousFinalized)) {
					$photoTable->addPhotosStream('create');
				}

				// reset the photo privacy once if this is a finalizing step
				if ($album->finalized && $album->finalized != $previousFinalized) {

					$plib = $this->my->getPrivacy();

					// default photo privacy.
					$photoPrivacyValue = $plib->getValue('photos', 'view');
					$photoPrivacyKey = $plib->getKey($photoPrivacyValue);

					$plib->add('photos.view', $photo->id, 'photos', $photoPrivacyKey, null);
				}

				// Store / update photo location when necessary
				if ($this->config->get('photos.location') && !empty($photo->address) && !empty($photo->latitude) && !empty($photo->longitude)) {

					$location = ES::table('Location');
					$location->load(array('uid' => $photo->id, 'type' => SOCIAL_TYPE_PHOTO));

					$location->uid = $photo->id;
					$location->type = SOCIAL_TYPE_PHOTO;
					$location->user_id = $this->my->id;
					$location->address = $photo->address;
					$location->latitude = $photo->latitude;
					$location->longitude = $photo->longitude;

					$location->store();
				}

				$albumPhotos[] = $photoTable;
			}
		}

		// Assign the photos back to the album object
		if (!empty($albumPhotos)) {
			$album->photos = $albumPhotos;
		}

		// Let's send the notification if the album is finalized and the notification is not being sent yet.
		// This is only apply in group only currently.
		if ($finalized && $album->notified == SOCIAL_ALBUM_READY_TO_NOTIFY) {
			$album->notify();
		}

		return $this->view->call(__FUNCTION__, $album);
	}

	/**
	 * Delete albums
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function delete()
	{
		ES::requireLogin();
		ES::checkToken();

		// Get the id of the album
		$id = $this->input->get('id', 0, 'int');

		$album = ES::table('Album');
		$album->load($id);

		if (!$id || !$album->id) {
			$this->view->setMessage('COM_EASYSOCIAL_ALBUMS_INVALID_ALBUM_ID_PROVIDED', ES_ERROR);
			return $this->view->call(__FUNCTION__, false);
		}

		// Load up albums library
		$lib = ES::albums($album->uid, $album->type, $album->id);

		// Checks if the user can delete
		if (!$lib->deleteable()) {
			$this->view->setMessage('COM_EASYSOCIAL_ALBUMS_NO_PERMISSIONS_TO_DELETE_ALBUM', ES_ERROR);
			return $this->view->call(__FUNCTION__, false);
		}

		// Try to delete the album
		$state = $album->delete();

		if (!$state) {
			$this->view->setMessage($album->getError(), ES_ERROR);
			return $this->view->call(__FUNCTION__, false);
		}

		// @points: photos.albums.delete
		// Deduct points from creator when his album is deleted.
		$album->assignPoints('photos.albums.delete', $album->uid);

		$this->view->setMessage('COM_EASYSOCIAL_ALBUMS_ALBUM_DELETED_SUCCESSFULLY', SOCIAL_MSG_SUCCESS);

		return $this->view->call(__FUNCTION__, $lib->getViewAlbumsLink(false));
	}

	/**
	 * Allows caller to set a cover photo for the album
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function setCover()
	{
		ES::requireLogin();
		ES::checkToken();

		$id = $this->input->get('albumId', 0, 'int');

		$album = ES::table('Album');
		$album->load($id);

		if (!$id || !$album->id) {
			$this->view->setMessage('COM_EASYSOCIAL_ALBUMS_INVALID_ALBUM_ID_PROVIDED', ES_ERROR);
			return $this->view->call(__FUNCTION__, false);
		}

		// Load up the album library
		$lib = ES::albums($album->uid, $album->type, $album);

		// Check if the person is allowed to set a cover album
		if (!$lib->canSetCover()) {
			$this->view->setMessage('COM_EASYSOCIAL_ALBUMS_NOT_ALLOWED_TO_SET_COVER', ES_ERROR);
			return $this->view->call(__FUNCTION__, false);
		}

		// Get the object to be used as the album's cover
		$photoId = $this->input->get('coverId', 0, 'int');

		$photo = ES::table('Photo');
		$photo->load($photoId);

		if (!$photoId || !$photo->id) {
			$this->view->setMessage('COM_EASYSOCIAL_INVALID_COVER_ID', ES_ERROR);
			return $this->view->call(__FUNCTION__, false);
		}

		// Check if the photo is within the same album
		if ($photo->album_id != $album->id) {
			$this->view->setMessage('COM_EASYSOCIAL_PHOTO_NOT_IN_THIS_ALBUM', ES_ERROR);
			return $this->view->call(__FUNCTION__, false);
		}

		// Set the new cover id
		$album->cover_id = $photo->id;

		// Try to save the album
		$result = $album->store();

		if (!$result) {
			$this->view->setMessage('COM_EASYSOCIAL_UNABLE_TO_SAVE_COVER_ID', ES_ERROR);
			return $this->view->call(__FUNCTION__, false);
		}

		return $this->view->call(__FUNCTION__, $photo);
	}


	/**
	 * Displays paginated photos within an album
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function loadMore()
	{
		ES::checkToken();

		// Get params
		$id = $this->input->get('albumId', 0, 'int');
		$start = $this->input->get('start', 0, 'int');

		if ($start == '-1') {
			return $this->view->call(__FUNCTION__, '', $start);
		}

		// Load up the album
		$album = ES::table("Album");
		$album->load($id);

		// If the album id is invalid, we should skip this
		if (!$id || !$album->id) {
			$this->view->setMessage(JText::_('COM_EASYSOCIAL_ALBUMS_INVALID_ALBUM_ID_PROVIDED'), ES_ERROR);
			return $this->view->call(__FUNCTION__);
		}

		// Load up our albums library
		$lib = ES::albums($album->uid, $album->type, $album);
		$respectPrivacy = true;

		// Privacy should only be respected when the album type is a user type
		if ($album->type != SOCIAL_TYPE_USER) {
			$respectPrivacy = false;
		}

		$result = $lib->getPhotos($album->id, array('start' => $start, 'privacy' => $respectPrivacy, 'sort' => $this->config->get('photos.layout.ordering')));

		return $this->view->call(__FUNCTION__, $result['photos'], $result['nextStart']);
	}
}
