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
ES::import('admin:/includes/indexer/indexer');

require_once(__DIR__ . '/helpers/joomla.php');

class SocialUser extends JUser
{
	/**
	 * The user's unique id.
	 * @var int
	 */
	public $id = null;

	/**
	 * The user's name which is stored in `#__users` table.
	 * @var string
	 */
	public $name = null;

	/**
	 * The user's username which is stored in `#__users` table.
	 * @var string
	 */
	public $username = null;

	/**
	 * The user's email which is stored in `#__users` table.
	 * @var string
	 */
	public $email = null;

	/**
	 * The user's password which is a md5 hash which is stored in `#__users` table.
	 * @var string
	 */
	public $password = null;

	/**
	 * The user's type which is stored in `#__users` table. (Only for Joomla 1.5)
	 * @var string
	 */
	public $usertype = null;

	/**
	 * The user's published status which is stored in `#__users` table.
	 * @var int
	 */
	public $block = null;

	/**
	 * User's preferences on receiving emails. Stored in `#__users` table.
	 * @var int
	 */
	public $sendEmail = null;

	/**
	 * User's preferences on receiving emails. Stored in `#__users` table.
	 * @var int
	 */
	public $registerDate = null;

	/**
	 * User's preferences on receiving emails. Stored in `#__users` table.
	 * @var int
	 */
	public $otpKey = null;

	/**
	 * User's preferences on receiving emails. Stored in `#__users` table.
	 * @var int
	 */
	public $otep = null;

	/**
	 * User's preferences on receiving emails. Stored in `#__users` table.
	 * @var int
	 */
	public $lastvisitDate	= null;

	/**
	 * User's preferences on receiving emails. Stored in `#__users` table.
	 * @var int
	 */
	public $activation 		= null;

	/**
	 * User's preferences on receiving emails. Stored in `#__users` table.
	 * @var int
	 */
	public $params = null;

	/**
	 * User's preferences on receiving emails. Stored in `#__users` table.
	 * @var int
	 */
	public $privacy = null;

	/**
	 * User's preferences on receiving emails. Stored in `#__users` table.
	 * @var int
	 */
	public $connections = 0;

	/**
	 * User's preferences on receiving emails. Stored in `#__users` table.
	 * @var int
	 */
	public $param = null;

	/**
	 * User's current state. Stored in `#__social_users` table.
	 * @var int
	 */
	public $state = null;

	/**
	 * User verified state
	 * @var int
	 */
	public $verified = null;

	/**
	 * User's preferences on receiving emails. Stored in `#__users` table.
	 * @var int
	 */
	public $profile_id = null;

	/**
	 * User's avatar id (from gallery). Stored in `#__social_avatars` table.
	 * @var int
	 */
	public $avatar_id = null;

	/**
	 * User's avatar id (from uploaded photos). Stored in `#__social_avatars` table.
	 * @var int
	 */
	public $photo_id = null;

	/**
	 * User's permalink
	 * @var string
	 */
	public $permalink = null;

	/**
	 * User's online status. This isn't stored anywhere. It's just loaded
	 * initially, to let other's know of the user's online state.
	 * @var int
	 */
	public $online = null;

	/**
	 * User's alias.
	 *
	 * @var string
	 */
	public $alias = null;

	public $config = null;

	/**
	 * User's authentication code.
	 *
	 * @var string
	 */
	public $auth 		= null;

	/*
	 * Custom values
	 */
	public $password_clear   = null;

	public $reminder_sent = null;

	public $require_reset = null;

	public $block_period = null;

	public $block_date = null;

	public $social_params = null;


	// Default avatar sizes
	public $avatarSizes	= array('small' , 'medium' , 'large' , 'square');

	// Avatars
	public $avatars 		= array('small' 	=> '',
									 'medium' 	=> '',
									 'large'	=> '',
									 'square'	=> ''
									);

	// Cover Photo
	public $cover 			= null;

	/**
	 * Stores the default avatar property if exists.
	 * @var SocialTableDefaultAvatar
	 */
	public $defaultAvatar	= null;

	/**
	 * The user's points
	 * @var int
	 */
	public $points 		= 0;

	/**
	 * Stores the user type.
	 * @var	string
	 */
	public $type = 'joomla';

	/**
	 * Social goals.
	 * @var	array
	 */
	public $goalsList = array(
				'updateavatar' => 'hasAvatar',
				'completeprofile' => 'hasCompletedProfile',
				'poststatus' => 'hasStatusUpdate',
				'addfriend' => 'hasFriends',
				'postcomment' => 'hasCommentPost',
				'joincluster' => 'hasClusters'
			);

	/**
	 * User Config.
	 * @var	string
	 */
	private $userConfig = array();

	/**
	 * Keeps a list of users that are already loaded so we
	 * don't have to always reload the user again.
	 * @var Array
	 */
	static $userInstances	= array();

	/**
	 * Keeps a list of super admin ids.
	 * @var Array
	 */
	static $admins 		= array();

	/**
	 * Stores user badges
	 * @var Array
	 */
	protected $badges 		= array();

	/**
	 * Helper object for various cms versions.
	 * @var	object
	 */
	protected $helper 		= null;

	/**
	 * Determines the storage type for the avatars
	 * @var string
	 */
	protected $avatarStorage = 'joomla';

	/**
	 * Determines the number of fields completed for this user in this profile.
	 * @var integer
	 */
	public $completed_fields = 0;

	public function __construct($params = array(), $debug = false)
	{
		// Initialize helper object.
		$this->helper = new SocialUserHelperJoomla($this);

		// Create the user parameters object
		$this->_params = new JRegistry;

		// Initialize user's property locally.
		$this->initParams($params);

		// Initialize global config
		$this->config = ES::config();
		$this->guest = false;

		if (!$this->id) {
			$this->guest = true;
		}
	}

	/**
	 * Bans a user from the site
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function ban($period = 0)
	{
		// Block the user from Joomla
		$state = $this->block();

		// Ban the user from EasySocial now
		$model = ES::model('Users');
		$model->updateBlockInterval(array($this->id), $period);

		// we need to update our own block_period column.
		if ($state && $period) {
			$userModel = ES::model('Users');
			$userModel->updateBlockInterval(array($this->id), $period);
		}

		// Send notification to admin
		// Push arguments to template variables so users can use these arguments
		$params	= array(
						'name' => $this->getName(),
						'avatar' => $this->getAvatar(SOCIAL_AVATAR_MEDIUM),
						'profileLink' => JURI::root() . 'administrator/index.php?option=com_easysocial&view=users&layout=form&id=' . $this->id,
						'date' => ES::date()->format(JText::_('COM_EASYSOCIAL_DATE_DMY')),
						'totalFriends' => $this->getTotalFriends(),
						'totalFollowers' => $this->getTotalFollowers()
				);

		ES::language()->loadSite();

		$title = JText::sprintf('COM_EASYSOCIAL_EMAILS_ADMIN_USER_BANNED_TITLE', $this->getName());

		if ($period) {
			$title = JText::sprintf('COM_EASYSOCIAL_EMAILS_ADMIN_USER_BANNED_FOR_X_PERIOD_TITLE', $this->getName(), $period);
		}

		// Get a list of super admins on the site.
		$usersModel = ES::model('Users');
		$admins = $usersModel->getSiteAdmins();

		if ($admins) {
			foreach ($admins as $admin) {

				// Respect admin's email settings
				if (!$admin->sendEmail) {
					continue;
				}

				$params['adminName'] = $admin->getName();

				$mailer = ES::mailer();
				$template = $mailer->getTemplate();

				$template->setRecipient($admin->getName(), $admin->email);
				$template->setTitle($title);
				$template->setTemplate('site/profile/account.blocked', $params);
				$template->setPriority(SOCIAL_MAILER_PRIORITY_IMMEDIATE);

				// Try to send out email to the admin now.
				$state = $mailer->create($template);
			}
		}
	}

	/**
	 * Unbans user from the site
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function unban()
	{
		// Unblock the user
		$this->unblock();

		$model = ES::model('Users');

		return $model->updateBlockInterval(array($this->id), '0');
	}

	/**
	 * Deteremine if this user is banned from the site
	 *
	 * @since	2.1.8
	 * @access	public
	 */
	public function isBanned()
	{
		// Deteremine the state of the user
		if ($this->block == SOCIAL_JOOMLA_USER_BLOCKED && $this->state == SOCIAL_USER_STATE_DISABLED) {
			return true;
		}

		return false;
	}

	/**
	 * Blocks a user
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function block()
	{
		// Set juser data first
		$this->block = SOCIAL_JOOMLA_USER_BLOCKED;

		// Set our own state data
		$this->state = SOCIAL_USER_STATE_DISABLED;

		// Save the user after updating their blocked state
		$state = $this->save();

		// After blocking a user, synchronize with finder
		$this->syncIndex();

		// Log the user out
		$app = JFactory::getApplication();
		$app->logout($this->id, array('clientid' => 0));

		return $state;
	}

	/**
	 * Blocks a user
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function unblock()
	{
		// Set juser data first
		$this->block = SOCIAL_JOOMLA_USER_UNBLOCKED;

		// Set our own state data
		$this->state = SOCIAL_USER_STATE_ENABLED;

		// When user is unbanned, we also want to remove any block_period from the table
		$this->block_period = 0;
		$this->block_date = '0000-00-00 00:00:00';

		// onBeforeUnblock

		$state = $this->save();

		// After unblocking a user, we need to sync the index again
		$this->syncIndex();

		return $state;
	}

	/**
	 * Determines if this user is blocked
	 *
	 * @since	1.0
	 * @access	public
	 * @return	bool	True if user is blocked, false otherwise
	 */
	public function isBlock()
	{
		return (bool) $this->block;
	}

	/**
	 * Determines if this user is blocked by another user
	 *
	 * @since	1.3
	 * @access	public
	 * @return	bool	True if user is blocked, false otherwise
	 */
	public function isBlockedBy($id)
	{
		if (!$this->config->get('users.blocking.enabled')) {
			return false;
		}

		static $cache = array();

		// Index needs to be
		$index = $this->id . $id;

		if (!isset($cache[$index])) {
			$model = ES::model('Blocks');

			$cache[$index] = (bool) $model->isBlocked($id, $this->id);
		}

		return $cache[$index];
	}

	/**
	 * Assign this user to a group
	 *
	 * @since	1.0
	 * @access	public
	 * @param	int		The group id
	 * @return	bool	True if success, false otherwise
	 */
	public function assign($gid)
	{
		$model = ES::model('Users');

		$model->assignToGroup($this->id , $gid);
	}

	/**
	 * Initializes the provided properties into the existing object. Instead of
	 * trying to query to fetch more info about the user.
	 *
	 * @since	1.0
	 * @access	public
	 * @param	object	$params		A standard object with key / value binding.
	 *
	 * @return	void
	 */
	public function initParams(&$params)
	{
		// Get all properties of this object
		$properties	= get_object_vars($this);

		// Bind parameters to the object
		foreach($properties as $key => $val)
		{
			if(isset($params->$key))
			{
				$this->$key		= $params->$key;
			}
		}

		// we need to do a checking on the json before we pass to Joomla for decoding since
		// Joomla! 3.6.3 throw error if the json string is invalid.
		if ($this->params && !FD::json()->isJsonString($this->params)) {
			$this->params = '';
		}

		// Bind params json object here
		$this->_params->loadString($this->params);

		// Bind user avatars here.
		foreach($this->avatars as $size => $value)
		{
			if(isset($params->$size))
			{
				$this->avatars[ $size ]	= $params->$size;
			}
		}

		// set the list of user groups
		$this->groups 	= $this->helper->getUserGroups();

	}

	/**
	 * Object initialisation for the class to fetch the appropriate user
	 * object.
	 *
	 * @since	1.0
	 * @access	public
	 * @param   $id     int/Array     Optional parameter
	 * @return  SocialUser   The person object.
	 */
	public static function factory($ids = null, $debug = false)
	{
		$items = self::loadUsers($ids, $debug);

		return $items;
	}

	/**
	 * Processes user related stream item
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function addStream($verb)
	{
		$config = ES::config();

		if ($verb == 'uploadAvatar') {
			// Add stream item when a new photo is uploaded.
			$stream				= ES::stream();
			$streamTemplate		= $stream->getTemplate();

			// Set the actor.
			$streamTemplate->setActor($this->id , SOCIAL_TYPE_USER);

			// Set the context.
			$streamTemplate->setContext($this->id , SOCIAL_TYPE_PHOTO);

			// Set the verb.
			$streamTemplate->setVerb('add');

			$streamTemplate->setAccess('photos.view');


			//
			$streamTemplate->setType('full');

			// Create the stream data.
			$stream->add($streamTemplate);
		}

		if ($verb == 'updateProfile') {
			// Add stream item when a new photo is uploaded.
			$stream				= ES::stream();
			$streamTemplate		= $stream->getTemplate();

			// Set the actor.
			$streamTemplate->setActor($this->id , SOCIAL_TYPE_USER);

			// Set the context.
			$streamTemplate->setContext($this->id , SOCIAL_TYPE_PROFILES);

			// Set the verb.
			$streamTemplate->setVerb('update');


			$streamTemplate->setAggregate(true);


			$streamTemplate->setAccess('core.view');


			// Set stream style
			$streamTemplate->setType('mini');

			// Create the stream data.
			$stream->add($streamTemplate);
		}
	}

	/**
	 * Retrieves a list of apps for a user
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getApps($view)
	{
		static $apps 	= array();

		if(!isset($apps[ $this->id ][ $view ]))
		{
			$model 		= ES::model('Apps');
			$options 	= array('view' => $view , 'uid' => $this->id , 'key' => SOCIAL_TYPE_USER);
			$userApps 	= $model->getApps($options);

			$apps[ $this->id ][ $view ]	= $userApps;
		}

		return $apps[ $this->id ][ $view ];
	}

	/**
	 * Creates a guest object and store them into the property as static instance.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public static function createGuestObject()
	{
		static $guest = null;

		if (is_null($guest)) {
			$table = ES::table('Users');
			$data = array();

			$guest = new self($table, $data);
			$guest->id = 0;
			$guest->name = JText::_('COM_EASYSOCIAL_GUEST_NAME');

			SocialUserStorage::$users[0] = $guest;
		}

		return $guest;
	}

	/**
	 * Reloads the cache for custom field values when the user profile changes.
	 *
	 * @since	1.2
	 * @access	public
	 */
	public function reloadFields()
	{
		$model 	= ES::model('Users');

		SocialUserStorage::$fields[$this->id]	= $model->initUserData($this->id);
	}

	/**
	 * Removes a user item from the cache
	 *
	 * @since	1.3
	 * @access	public
	 */
	public function removeFromCache()
	{
		// Remove from user's storage cache
		unset(SocialUserStorage::$users[$this->id]);

		// Remove it from the model's cache too
		unset(EasySocialModelUsers::$loadedUsers[$this->id]);
	}

	/**
	 * Loads a given user id or an array of id's.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public static function loadUsers($ids = null, $debug = false)
	{
		static $currentUserId = null;

		// Ensure that is null or 0, the caller might be want to retrieve the current logged in user
		// Like those user cookies still stored from their browser, need to load back those user data.
		if (is_null($currentUserId) || !$currentUserId) {
			$currentUserId = JFactory::getUser()->id;
		}

		// Determine if the argument is an array.
		$argumentIsArray = is_array($ids);

		// If it is null or 0, the caller wants to retrieve the current logged in user.
		if (is_null($ids) || (is_string($ids) && $ids == '')) {
			$ids = array($currentUserId);
		}

		// Ensure that id's are always an array
		if (!is_array($ids)) {
			$ids = array($ids);
		}

		// Reset the index of ids so we don't load multiple times from the same user.
		$ids = array_values($ids);

		// Always create the guest objects first.
		self::createGuestObject();

		// Total needs to be computed here before entering iteration as it might be affected by unset.
		$total = count($ids);

		// Placeholder for items that are already loaded.
		$loaded = array();

		// @task: We need to only load user's that aren't loaded yet.
		for ($i = 0; $i < $total; $i++) {

			if (empty($ids)) {
				break;
			}

			if (!isset($ids[$i]) && empty($ids[$i])) {
				continue;
			}

			$id = $ids[$i];

			// If id is null, we know we want the current user.
			if (is_null($id)) {
				$ids[$i] = $currentUserId;
			}

			// The parsed id's could be an object from the database query.
			if (is_object($id) && isset($id->id)) {
				$id = $id->id;

				// Replace the current value with the proper value.
				$ids[$i] = $id;
			}

			if (isset(SocialUserStorage::$users[$id])) {
				$loaded[] = $id;
				unset($ids[$i]);
			}

		}

		// Reset the ids after it was previously unset.
		$ids = array_values($ids);

		// Place holder for result items.
		$result	= array();

		foreach ($loaded as $id) {
			$result[] = SocialUserStorage::$users[$id];
		}

		if (!empty($ids)) {

			// Retrieve user's data
			$model = ES::model('Users');
			$users = $model->getUsersMeta($ids);

			// Iterate through the users list and add them into the static property.
			if ($users) {

				foreach ($users as $user) {
					// Get the user's cover photo
					$user->cover = self::getCoverObject($user);

					// Detect if the user has an avatar.
					$user->defaultAvatar = false;

					if ($user->avatar_id) {
						$defaultAvatar = ES::table('DefaultAvatar');
						$defaultAvatar->load($user->avatar_id);
						$user->defaultAvatar = $defaultAvatar;
					}

					// Try to load the user from `#__social_users`
					// If the user record doesn't exists in #__social_users we need to initialize it first.
					if (!$model->metaExists($user->id)) {
						$model->createMeta($user->id);
					}

					// Attach fields for this user.
					// SocialUserStorage::$fields[$user->id]	= $model->initUserData($user->id);

					// Get user's badges
					// SocialUserStorage::$badges[$user->id]	= ES::model('Badges')->getBadges($user->id);

					// Create an object of itself and store in the static object.
					$obj = new SocialUser($user);

					// Initialize user config
					$obj->loadConfig();

					SocialUserStorage::$users[$user->id] = $obj;

					$result[] = SocialUserStorage::$users[$user->id];
				}
			} else {

				foreach ($ids as $id) {
					// Since there are no such users, we just use the guest object.
					SocialUserStorage::$users[$id] = SocialUserStorage::$users[0];

					$result[] = SocialUserStorage::$users[$id];
				}
			}
		}

		// If the argument passed in is not an array, just return the proper value.
		if (!$argumentIsArray && count($result) == 1) {
			return $result[0];
		}

		return $result;
	}

	/**
	 * Bind the cover object
	 *
	 * @since	1.0
	 * @access	public
	 */
	public static function getCoverObject($user)
	{
		$cover = ES::table('Cover');

		if (!empty($user->cover_id)) {
			$coverData = new stdClass();
			$coverData->id = $user->cover_id;
			$coverData->uid = $user->cover_uid;
			$coverData->type = $user->cover_type;
			$coverData->photo_id = $user->cover_photo_id;
			$coverData->cover_id = $user->cover_cover_id;
			$coverData->x = $user->cover_x;
			$coverData->y = $user->cover_y;
			$coverData->modified = $user->cover_modified;

			$cover->bind($coverData);
		} else {
			// Type is always user for this object.
			$cover->type = SOCIAL_TYPE_USER;
		}

		return $cover;
	}

	/**
	 * Determines whether the current user is active or not.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function isOnline()
	{
		static $states = array();

		if (!isset($states[$this->id])) {
			$model = ES::model('Users');
			$states[$this->id] = $model->isOnline($this->id);
		}

		return $states[$this->id];
	}

	/**
	 * Determines if the current logged in user is viewing this current page
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function isViewer()
	{
		$my = ES::user();
		$viewer = $my->id == $this->id;

		return $viewer;
	}

	/**
	 * Determines if the user is verified
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function isVerified()
	{
		if (!$this->config->get('users.verification.enabled')) {
			return false;
		}

		return $this->verified ? true : false;
	}

	/**
	 * Determines if the user is logged in
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function isLoggedIn()
	{
		return $this->id > 0;
	}

	/**
	 * Logs the user out from the site
	 *
	 * @since	1.0
	 * @access	public
	 * @return
	 */
	public function logout()
	{
		$app = JFactory::getApplication();

		// Try to logout the user.
		$error = $app->logout();

		return $error;
	}

	/**
	 * Update points for the current instance. Does not store this into the database.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function addPoints($point)
	{
		$this->points 	+= $point;

		return $this;
	}

	/**
	 * Determines if the current user is a super administrator of the site or not.
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function isSiteAdmin()
	{
		static $_cache = array();

		$isSiteAdmin	= false;
		if (isset($_cache[$this->id])) {
			$isSiteAdmin = $_cache[$this->id];
		} else {
			$isSiteAdmin        = $this->authorise('core.admin') || $this->authorise('core.manage');
			$_cache[$this->id] 	= $isSiteAdmin;
		}
		return ($isSiteAdmin) ? true : false ;
	}

	/**
	 * Determines if this user are allowed to compose a new message to target person
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function canStartConversation($userId)
	{
		$config = ES::config();

		// Guest will never be allowed to compose messages.
		if (!$this->isLoggedIn()) {
			return false;
		}

		$conversation = ES::conversation();

		if (!$conversation->canCreate()) {
			return false;
		}

		// Always allow site admin to compose message
		if ($this->isSiteAdmin()) {
			return true;
		}

		// if friends system is disabled, then system should allow to send to any users on
		// the site.
		if (! $config->get('friends.enabled')) {
			return true;
		}

		// Allow user to message to non-friend
		if ($config->get('conversations.nonfriend')) {
			return true;
		}

		// Check if the user is friend with the target
		if ($this->isFriends($userId)) {
			return true;
		}

		return false;
	}

	/**
	 * Determins if this user can view target person's profile
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function canView(SocialUser $target, $privacyRule = 'profiles.view')
	{
		// Get the current logged in user's privacy
		$privacy = $this->getPrivacy();
		$allowed = $privacy->validate($privacyRule, $target->id, SOCIAL_TYPE_USER);

		if ($this->id != $target->id && !$allowed) {
			$this->setError('COM_EASYSOCIAL_PROFILE_PRIVACY_NOT_ALLOWED');
			return false;
		}

		return true;
	}

	/**
	 * Determines if this user can view the target person's field
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function canViewField(SocialUser $target, $fieldId, $privacyRule = 'core.view')
	{
		$privacy = $this->getPrivacy();
		$allowed = $privacy->validate($privacyRule, $fieldId, SOCIAL_TYPE_FIELD, $target->id);

		if (!$allowed) {
			return false;
		}

		return true;
	}

	/**
	 * Determines if the user is allowed to join groups
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function canJoinGroups()
	{
		if ($this->isSiteAdmin()) {
			return true;
		}

		$access = $this->getAccess();
		$total = $this->getTotalGroups();

		if ($access->get('groups.allow.join') && $access->exceeded('groups.join', $total)) {
			return false;
		}

		return true;
	}

	/**
	 * Determinise if the user is allowed to like a page
	 *
	 * @since   2.0
	 * @access  public
	 * @param   string
	 * @return
	 */
	public function canLikePages()
	{
		if ($this->isSiteAdmin()) {
			return true;
		}

		$access = $this->getAccess();
		$total = $this->getTotalPages();

		if ($access->get('pages.allow.like') && $access->exceeded('pages.like', $total)) {
			return false;
		}

		return true;
	}

	/**
	 * Determines if the user is allowed to create polls
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function canCreatePolls()
	{
		if (!$this->config->get('polls.enabled')) {
			return;
		}

		if ($this->guest) {
			return false;
		}

		if ($this->isSiteAdmin()) {
			return true;
		}

		$access = $this->getAccess();

		if ($access->get('polls.create')) {
			return true;
		}

		return false;
	}

	/**
	 * Determines if the user is allowed to create audio
	 *
	 * @since	2.1
	 * @access	public
	 */
	public function canCreateAudios()
	{
		if (!$this->config->get('audio.enabled')) {
			return false;
		}

		if ($this->guest) {
			return false;
		}

		$access = $this->getAccess();

		if ($access->get('audios.upload') || $access->get('audios.link')) {
			return true;
		}

		return false;
	}

	/**
	 * Determines if the user is allowed to create videos
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function canCreateVideos()
	{
		if (!$this->config->get('video.enabled')) {
			return false;
		}

		if ($this->guest) {
			return false;
		}

		$access = $this->getAccess();

		if ($access->get('videos.create')) {
			return true;
		}

		return false;
	}

	/**
	 * Determines if the user is allowed to create albums
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function canCreateAlbums()
	{
		if (!$this->config->get('photos.enabled')) {
			return false;
		}

		if ($this->guest) {
			return false;
		}

		$access = $this->getAccess();

		if ($access->get('albums.create')) {
			return true;
		}

		return false;
	}


	/**
	 * Determines if the user is allowed to create events
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function canCreateEvents()
	{
		if ($this->guest) {
			return false;
		}

		$model = ES::model('EventCategories');
		$categories = $model->getCreatableCategories($this->getProfile()->id);

		if (empty($categories)) {
			return false;
		}

		if ($this->isSiteAdmin()) {
			return true;
		}

		// Get the user's access
		$access = $this->getAccess();

		if ($access->allowed('events.create') && !$access->intervalExceeded('events.limit', $this->id)) {
			return true;
		}

		return false;
	}


	/**
	 * Determines if the user is allowed to create groups
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function canCreateGroups()
	{
		if ($this->guest) {
			return false;
		}

		$model = ES::model('Groups');
		$categories = $model->getCreatableCategories($this->getProfile()->id);

		if (empty($categories)) {
			return false;
		}

		if ($this->isSiteAdmin()) {
			return true;
		}

		// Get the user's access
		$access = $this->getAccess();

		if ($access->allowed('groups.create') && !$access->intervalExceeded('groups.limit', $this->id)) {
			return true;
		}

		return false;
	}

	/**
	 * Determines if the user is allowed to create pages
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function canCreatePages()
	{
		if ($this->guest) {
			return false;
		}

		$model = ES::model('Pages');
		$categories = $model->getCreatableCategories($this->getProfile()->id);

		if (empty($categories)) {
			return false;
		}

		if ($this->isSiteAdmin()) {
			return true;
		}

		// Get the user's access
		$access = $this->getAccess();

		if ($access->allowed('pages.create') && !$access->intervalExceeded('pages.limit', $this->id)) {
			return true;
		}

		return false;
	}

	/**
	 * determine if the current user can delete a specific user or not
	 *
	 * @since	1.4
	 * @access	public
	 * @param	EasySocialUser $user
	 *
	 * @return	boolean 		True if success, false otherwise.
	 */
	public function canDeleteUser($user)
	{
		if (! $this->isSiteAdmin()) {
			return false;
		}

		$isUserSuper = $this->authorise('core.admin');
		$isTargetSuper = $user->authorise('core.admin');

		$isUserAdmin = !$isUserSuper && $this->authorise('core.manage');
		$isTargetAdmin = !$isTargetSuper && $user->authorise('core.manage');

		// if currrent user is a superadmin and target user also a super admin, we dont allow to delete.
		if ($isUserSuper && $isTargetSuper) {
			return false;
		}

		// if current user is a standard admin and the target is either super or admin, we dont allow to delete target.
		if ($isUserAdmin && ($isTargetSuper || $isTargetAdmin)) {
			return false;
		}

		return true;
	}


	/**
	 * determine if the current user can ban a specific user or not
	 *
	 * @since	1.4
	 * @access	public
	 * @param	EasySocialUser $user
	 *
	 * @return	boolean 		True if success, false otherwise.
	 */
	public function canBanUser($user)
	{
		if (! $this->isSiteAdmin()) {
			return false;
		}

		$isUserSuper = $this->authorise('core.admin');
		$isTargetSuper = $user->authorise('core.admin');

		$isUserAdmin = !$isUserSuper && $this->authorise('core.manage');
		$isTargetAdmin = !$isTargetSuper && $user->authorise('core.manage');

		// if currrent user is a superadmin and target user also a super admin, we dont allow to ban.
		if ($isUserSuper && $isTargetSuper) {
			return false;
		}

		// if current user is a standard admin and the target is a superadmin, we dont allow to ban target.
		if ($isUserAdmin && $isTargetSuper) {
			return false;
		}

		return true;
	}

	/**
	 * Determines if the current user is followed by the target id
	 *
	 * @since	1.0
	 * @access	public
	 * @param	int 	$id 	The target user id.
	 *
	 * @return	boolean 		True if success, false otherwise.
	 */
	public function isFollowed($id)
	{
		static $items = null;

		if (!isset($items[$this->id][$id])) {

			$subscriptions = ES::subscriptions();
			$items[$this->id][$id] = $subscriptions->isSubscribed($this->id, SOCIAL_TYPE_USER, SOCIAL_APPS_GROUP_USER, $id);
		}

		return $items[$this->id][$id];
	}

	/**
	 * Determines if the current user is friends with the specified user id.
	 *
	 * @since	1.0
	 * @access	public
	 * @param	int 	$id 	The target user id.
	 *
	 * @return	boolean 		True if success, false otherwise.
	 */
	public function isFriends($id)
	{
		static $isFriends	= null;

		if(!isset($isFriends[ $this->id ][ $id ]))
		{
			$model 	= ES::model('Friends');

			$isFriends[ $this->id ][ $id ]	= $model->isFriends($this->id , $id);
		}

		return $isFriends[ $this->id ][ $id ];
	}

	/**
	 * Determines if the current user is friends with the specified user id.
	 *
	 * @since	1.0
	 * @access	public
	 * @param	int 	$id 	The target user id.
	 *
	 * @return	boolean 		True if success, false otherwise.
	 */
	public function getFriend($id)
	{
		static $data = array();

		if (!isset($data[$this->id])) {
			$data[$this->id] = array();
		}

		if (!isset($data[$this->id][$id])) {
			$friend = ES::table('Friend');
			$friend->loadByUser($this->id, $id);
		}

		return $friend;
	}

	/**
	 * Determines if the person is a registered member or not.
	 *
	 * @param	null
	 * @return	boolean		True if registered, false otherwise.
	 */
	public function isRegistered()
	{
		return $this->id > 0;
	}

	/**
	 * Determines if the current user record is a new user or not.
	 *
	 * @access	private
	 * @param	null
	 * @return	boolean	True on success false otherwise.
	 */
	private function isNew()
	{
		return $this->id < 1;
	}

	/**
	 * Determines if the person is pending approval or not.
	 *
	 * @since	1.0
	 * @access	public
	 * @param	null
	 * @return	boolean		True if still pending, false otherwise.
	 */
	public function isPending()
	{
		if($this->status == SOCIAL_REGISTER_APPROVAL)
		{
			return true;
		}

		return false;
	}

	/**
	 * Determines if the user has access to the community area
	 *
	 * @since	1.3
	 * @access	public
	 */
	public function hasCommunityAccess()
	{
		static $items = array();

		if (!isset($items[$this->id])) {
			$profile = $this->getProfile();

			$items[$this->id] = (bool) $profile->community_access;
		}

		return $items[$this->id];
	}


	/**
	 * Determines if the user has ability to switch to other profile type
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function canSwitchProfile()
	{
		static $items = array();

		if (!isset($items[$this->id])) {
			$profile = $this->getProfile();

			$items[$this->id] = (bool) $profile->switchable;
		}

		return $items[$this->id];
	}


	/**
	 * Determines if the user has an avatar
	 *
	 * @since	1.3
	 * @access	public
	 */
	public function hasAvatar()
	{
		return !empty($this->avatar_id) || !empty($this->photo_id);
	}


	/**
	 * Get available avatar sizes
	 *
	 * @since	1.4.6
	 * @access	public
	 */
	public function getAvatarSizes()
	{
		return $this->avatarSizes;
	}

	/**
	 * Retrieves named based avatars
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function getAvatarName()
	{
		static $items = array();

		if (!isset($items[$this->id])) {
			$name = $this->getName();

			$initials = new stdClass();
			$initials->text = '';
			$initials->code = '';

			$text = '';

			$isAscii = ES::string()->isAscii($name);

			if ($isAscii) {
				$segments = explode(' ', $name);

				if (count($segments) >= 2) {
					$tmp = array();
					$tmp[] = substr($segments[0], 0, 1);
					$tmp[] = substr($segments[count($segments) - 1], 0, 1);

					$text = implode('', $tmp);
					$initials->text = $text;
				} else {
					$initials->text = substr($name, 0, 1);
				}

				$initials->text = strtoupper($initials->text);
				$text = $initials->text;

			} else {
				$initials->text = JString::substr($name, 0, 1);

				// We need to get the color
				$text = $this->email;
			}

			// Render the color code
			$initials->code = $this->getAvatarNameCode($text);

			$items[$this->id] = $initials;
		}

		return $items[$this->id];
	}

	/**
	 * Generates the color code for avatar
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	private function getAvatarNameCode($text)
	{
		$char = substr($text, 0, 1);
		$codes = array(1 => array('A','B','C','D','E'),
					   2 => array('F','G','H','I','J'),
					   3 => array('K','L','M','N','O'),
					   4 => array('P','Q','R','S','T'),
					   5 => array('U','V','W','X','Y','Z'));


		foreach($codes as $key => $sets) {
			if (in_array($char, $sets)) {
				return $key;
			}
		}

		// if nothing found, just return 1
		return '1';
	}

	/**
	 * Retrieves the user's avatar location
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getAvatar($size = SOCIAL_AVATAR_MEDIUM)
	{
		// If avatar id is being set, we need to get the avatar source
		if ($this->defaultAvatar && isset($this->defaultAvatar->id) && $this->defaultAvatar->id) {
			$default = $this->defaultAvatar->getSource($size);

			return $default;
		}

		// If the avatar size that is being requested is invalid, return default avatar.
		$default = $this->getDefaultAvatar($size);

		if ($this->config->get('users.avatarUseName') && (!$this->avatars[$size] || empty($this->avatars[$size]))) {
			$textAvatar = ES::textavatar();

			// Try to get the first and last name if exists
			$fullName = $this->getName();
			$firstName = $this->getFirstName();
			$lastName = $this->getLastName();

			// We need to get the correct initials
			if ($this->config->get('users.displayName') == 'realname' && $firstName && $lastName) {
				$firstName = explode(' ', $firstName);
				$lastName = explode(' ', $lastName);
				$format = $this->getNameFormat();

				$fullName = $firstName[0] . ' ' . $lastName[0];

				// Respect the name format if it is last_middle_first or last_first
				if ($format == 2 || $format == 5) {
					$fullName = $lastName[0] . ' ' . $firstName[0];
				}
			}

			return $textAvatar->getAvatar($fullName);
		}

		if (!$this->avatars[$size] || empty($this->avatars[$size])) {
			return $default;
		}

		// Get the path to the avatar storage.
		$avatarLocation = ES::cleanPath($this->config->get('avatars.storage.container'));
		$usersAvatarLocation = ES::cleanPath($this->config->get('avatars.storage.user'));

		// Build the path now.
		$path = $avatarLocation . '/' . $usersAvatarLocation . '/' . $this->id . '/' . $this->avatars[ $size ];

		// Build final storage path.
		if ($this->avatarStorage == SOCIAL_STORAGE_JOOMLA) {

			$absolutePath = JPATH_ROOT . '/' . $path;

			// Detect if this file really exists.
			if (!JFile::exists($absolutePath)) {
				return $default;
			}

			$uri = ES::getUrl($path);
		} else {
			$storage = ES::storage($this->avatarStorage);
			$uri = $storage->getPermalink($path);
		}

		return $uri;
	}

	/**
	 * Retrieves the default cover location as it might have template overrides.
	 *
	 * @since	1.2
	 * @access	public
	 */
	public function getDefaultCover()
	{
		static $default = null;

		if (!$default) {
			$config = ES::config();
			$overriden = JPATH_ROOT . '/images/easysocial_override/user/cover/default.png';
			$uri = ES::getUrl('/images/easysocial_override/user/cover/default.png');

			if (JFile::exists($overriden)) {
				$default = $uri;
			} else {
				$default = ES::getUrl($config->get('covers.default.user.default'));
			}
		}

		return $default;
	}

	/**
	 * Retrieves the default avatar location as it might have template overrides.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getDefaultAvatar($size)
	{
		static $default = null;

		$key = $this->id . '.' . $size;

		if (!isset($default[$key])) {

			$config = ES::config();
			$overriden = JPATH_ROOT . '/images/easysocial_override/user/avatar/' . $size . '.png';

			$uri = ES::getUrl('/images/easysocial_override/user/avatar/' . $size . '.png');

			// Default avatar path
			$default[$key] = ES::getUrl($config->get('avatars.default.user.' . $size));

			if (JFile::exists($overriden)) {
				$default[$key] = $uri;
			}

			// See if profile is set and see if there is a default avatar in the profile or not
			$model = ES::model('Avatars');
			$avatars = $model->getDefaultAvatars($this->profile_id);

			foreach($avatars as $avatar) {
				if ($avatar->default) {
					$default[$key] = $avatar->getSource($size);
					break;
				}
			}
		}

		return $default[$key];
	}

	/**
	 * Retrieves the photo table for the user's avatar
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getAvatarPhoto()
	{
		static $photos 	= array();

		if(!isset($photos[ $this->id ]))
		{
			$model 	= ES::model('Avatars');
			$photo	= $model->getPhoto($this->id);

			$photos[ $this->id ]	= $photo;
		}

		return $photos[ $this->id ];
	}

	public function hasCover()
	{
		return !(empty($this->cover) || empty($this->cover->id));
	}

	/**
	 * Retrieves the user's cover data
	 *
	 * @since 	1.2
	 * @access	public
	 * @param   string	$size 	The avatar size to retrieve for.
	 * @return  string  The current user's username.
	 *
	 */
	public function getCoverData()
	{
		return $this->cover;
	}

	/**
	 * Retrieves the user's cover location
	 *
	 * @since 	1.0
	 * @access	public
	 * @param   string	$size 	The avatar size to retrieve for.
	 * @return  string  The current user's username.
	 */
	public function getCover()
	{
		if(!$this->cover)
		{
			$cover 	= $this->getDefaultCover();

			return $cover;
		}

		return $this->cover->getSource();
	}

	/**
	 * Retrieves the user's cover position
	 *
	 * @since	1.2
	 * @access	public
	 * @param   string	$size 	The avatar size to retrieve for.
	 * @return  string  The current user's username.
	 */
	public function getCoverPosition()
	{
		if(!$this->cover)
		{
			return 0;
		}

		return $this->cover->getPosition();
	}

	/**
	 * Retrieves the user badges
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getBadges()
	{
		if (!isset(SocialUserStorage::$badges[$this->id])) {

			$model 	= ES::model('Badges');

			SocialUserStorage::$badges[$this->id] = $model->getBadges($this->id);
		}

		// Returns a list of badges earned by the user.
		return SocialUserStorage::$badges[$this->id];
	}

	/**
	 * Retrieves the user's username
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getUserName()
	{
		return $this->username;
	}


	/**
	 * Retrieves the user's real name dependent on the system configurations.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getName($useFormat = '')
	{
		$config = ES::config();
		$name = $this->username;

		if ($this->guest) {
			return JText::_($this->name);
		}

		if ($useFormat) {
			if ($useFormat == 'realname') {
				$name = $this->name;
			}
		} else {
			if ($config->get('users.displayName') == 'realname') {
				$name = $this->name;
			}
		}

		return $name;
	}

	/**
	 * Retrieves the user's first name
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function getNameFormat()
	{
		static $formats = array();

		if (!isset($formats[$this->id])) {
			$data = $this->getFieldValue('JOOMLA_FULLNAME');

			$formats[$this->id] = $data->format;
		}

		return $formats[$this->id];
	}

	/**
	 * Retrieves the user's first name
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function getFirstName()
	{
		static $firstNames = array();

		if (!isset($firstNames[$this->id])) {
			$fullName = $this->getFieldValue('JOOMLA_FULLNAME');

			$firstNames[$this->id] = '';

			if (isset($fullName->first)) {
				$firstNames[$this->id] = $fullName->first;
			}
		}

		return $firstNames[$this->id];
	}

	/**
	 * Retrieves the user's first name
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function getLastName()
	{
		static $lastNames = array();

		if (!isset($lastNames[$this->id])) {
			$fullName = $this->getFieldValue('JOOMLA_FULLNAME');

			$lastNames[$this->id] = '';

			if (isset($fullName->first)) {
				$lastNames[$this->id] = $fullName->last;
			}
		}

		return $lastNames[$this->id];
	}

	/**
	 * Get's a user stream name. If the current logged in user is him/her self, use "You" instead.
	 * This can be applied to anyone that is trying to apply stream like-ish contents.
	 *
	 * @access	public
	 * @return	string
	 */
	public function getStreamName($uppercase = true)
	{
		$my = ES::user();

		if ($my->id == $this->id) {
			$uppercase 	= $uppercase ? '' : '_LOWERCASE';

			return JText::_('COM_EASYSOCIAL_YOU' . $uppercase);
		}

		return $this->getName();
	}

	/**
	 * Retrieves the user's connection.
	 *
	 * @param   null
	 * @return  string  The current user's connection.
	 */
	public function getConnections()
	{
		return $this->connections;
	}

	/**
	 * Retrieves the user's points
	 *
	 * @since	1.0
	 * @access	public
	 * @param	null
	 * @return	float	The points that a user has.
	 */
	public function getPoints()
	{
		return $this->points;
	}

	/**
	 * Returns the last visited date from a user.
	 *
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getLastVisitDate($type = '')
	{
		// If user wants a lapsed type.
		if ($type == 'lapsed') {
			$date = ES::date($this->lastvisitDate);

			return $date->toLapsed();
		}

		return $this->lastvisitDate;
	}

	/**
	 * Returns the user's user group that they belong to.
	 *
	 * Example of usage:
	 * <code>
	 * <?php
	 * $user 	= ES::user();
	 *
	 * // Returns array('ID' => 'Super User' , 'ID' => 'Registered')
	 * $user->getUserGroups();
	 * ?>
	 * </code>
	 *
	 * @since	1.0
	 * @access	public
	 * @param	null
	 * @return	Array	An array of group in string.
	 */
	public function getUserGroups($gids = false)
	{
		$groups = $this->helper->getUserGroups();

		if ($gids) {
			return array_keys($groups);
		}

		return $groups;
	}

	/**
	 * Returns the last visited date from a user.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getRegistrationDate()
	{
		$date = ES::get('Date', $this->registerDate);

		return $date;
	}

	/**
	 * Retrieves the profile type of the current user.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getProfile()
	{
		static $profiles = array();

		if ($this->id && $this->username && is_null($this->profile_id)) {
			// this is unlikely to happen. User might be created by query injection. Lets
			// assign default profile type to this user.
			$model = ES::model('Users');
			$newId = $model->assignDefaultProfile($this->id);

			if ($newId !== false) {
				$this->profile_id = $newId;
			}
		}

		if (!isset($profiles[$this->profile_id])) {

			$profile = ES::table('Profile');
			$profile->load($this->profile_id);

			$profiles[$this->profile_id] = $profile;
		}

		return $profiles[$this->profile_id];
	}

	/**
	 * Retrieves the privacy object of the current user.
	 *
	 * @since	2.0.15
	 * @access	public
	 */
	public function getPrivacy()
	{
		$privacy = ES::privacy($this->id);

		return $privacy;
	}

	/**
	 * Get the alias of the user.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getAlias($withId = true, $forceId = false)
	{
		$config = ES::config();
		$jConfig = ES::jconfig();

		// Default permalink to use.
		$name = $config->get('users.aliasName') == 'realname' ? $this->name : $this->username;

		$withId = ($withId || $forceId) ? true : $withId;

		// lets check for the easysocial url shortener setting.
		static $shortenerWithID = null;

		if (!ES::isSh404EasySocialEnabled() && $jConfig->getValue('sef') && is_null($shortenerWithID)) {
			$isEasySocialUrlPluginInstalled = JPluginHelper::getPlugin('system', 'easysocialurl');
			$isEasySocialUrlPluginEnabled = JPluginHelper::isEnabled('system', 'easysocialurl');

			if ($isEasySocialUrlPluginInstalled && $isEasySocialUrlPluginEnabled) {
				$params = ES::registry($isEasySocialUrlPluginInstalled->params);

				$shortenerWithID = $params->get('append_userid', 1);
			}
		}

		if (! is_null($shortenerWithID)) {
			$withId = $shortenerWithID;
		}

		// If sef is not enabled or running SH404, just return the ID-USERNAME prefix.
		jimport('joomla.filesystem.file');
		// $sh404 = JFile::exists(JPATH_ADMINISTRATOR . '/components/com_sh404sef/sh404sef.php');
		$mijoSef = JFile::exists(JPATH_ADMINISTRATOR . '/components/com_mijosef/mijosef.php');

		if (!$jConfig->getValue('sef') || ES::isSh404EasySocialEnabled()) {
			return ($withId ? $this->id . ':' : '') . JFilterOutput::stringURLSafe($name);
		}

		// Check if the permalink is set
		if ($this->permalink && !empty($this->permalink)) {
			$name = $this->permalink;

			if ($mijoSef) {
				return ($withId ? $this->id . ':' : '') . JFilterOutput::stringURLSafe($name);
			}
		}

		// If alias exists and permalink doesn't we use the alias
		if ($this->alias && !empty($this->alias) && !$this->permalink) {
			$name = $this->alias;
		}

		// If the name is in the form of an e-mail address, due to security concern, we will use fullname intead and with the format of ID:permalink
		// further check if the alias is in a form of 'formatted' emails, if yes, let use fullname instead.
		if (JMailHelper::isEmailAddress($this->username) && $name == JFilterOutput::stringURLSafe($this->username)) {

			$name = $this->name;
			return ($withId ? $this->id . ':' : '') . JFilterOutput::stringURLSafe($name);
		}

		// Ensure that the name is a safe url.
		$name = ($withId ? $this->id . ':' : '') . JFilterOutput::stringURLSafe($name);
		$name 	= JFilterOutput::stringURLSafe( $name );

		return $name;
	}

	/**
	 * Centralized method to retrieve a person's profile link.
	 * This is where all the magic happens.
	 *
	 * @access	public
	 * @param	null
	 *
	 * @return	string	The url for the person
	 */
	public function getPermalink($xhtml = true, $external = false, $sef = true)
	{
		$my = ES::user();

		// If user is blocked, just use a dummy link
		if (!$my->isSiteAdmin() && ($this->isBlock() || !$this->hasCommunityAccess()) || !$this->id) {
			return 'javascript:void(0);';
		}

		// When simple urls are enabled, we just hardcode the url
		$config = ES::config();
		$jConfig = ES::jConfig();


		// Check if the easysocialurl system plugin is enabled or not.
		if (JPluginHelper::isEnabled('system', 'easysocialurl')) {
			if (!ES::isSh404Installed() && $jConfig->getValue('sef') && $sef) {

				$rootUri = rtrim(JURI::root(), '/');

				$alias = JFilterOutput::stringURLSafe($this->getAlias());

				$url = $rootUri . '/' . $alias;

				// Retrieve current site language code
				$langCode = ES::getCurrentLanguageCode();

				// Append language code from the simple url
				if (!empty($langCode)) {
					$url = $rootUri . '/' . $langCode . '/' . $alias;
				}

				if ($jConfig->getValue('sef_suffix') && !(substr($url, -9) == 'index.php' || substr($url, -1) == '/')) {

					// $uri = JURI::getInstance(JRequest::getURI());
					// $format = $uri->getVar('format', 'html');

					$format = 'html';
					$url .= '.' . $format;

				}

				return $url;
			}
		}

		$options = array('id' => $this->getAlias());

		if ($external) {
			$options['external'] = true;
		}

		$options['sef'] = $sef;

		$url = FRoute::profile($options , $xhtml);

		return $url;
	}

	/**
	 * Sets a user as a verified user
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function setVerified()
	{
		$table = ES::table('Users');
		$table->load(array('user_id' => $this->id));

		$table->verified = true;

		$state = $table->store();

		// @TODO: Notify the user that their profile has been set as verified

		return $state;
	}

	/**
	 * Sets a user as a verified user
	 *
	 * @since	2.1.0
	 * @access	public
	 */
	public function removeVerified()
	{
		$table = ES::table('Users');
		$table->load(array('user_id' => $this->id));

		$table->verified = false;

		$state = $table->store();

		// @TODO: Notify the user that their profile has been set as verified

		return $state;
	}

	/**
	 * Allows caller to set a field value given the unique key
	 *
	 * @since	1.2
	 * @access	public
	 */
	public function setFieldValue($key, $value, $requireValidation = true)
	{
		$data = $this->getProfile()->getCustomFields();

		if (!$data) {
			return false;
		}

		$fields = array();

		foreach ($data as $field) {
			$fields[$field->unique_key]	= $field;
		}

		if (!isset($fields[$key])) {
			return false;
		}

		// Get the field
		$field = $fields[$key];

		$fieldTable = ES::table('Field');

		// If field doesn't exist, just skip this.
		if (!$fieldTable->load($field->id)) {
			return false;
		}

		// Format the data for onEditValidate trigger
		$inputName = SOCIAL_CUSTOM_FIELD_PREFIX . '-' . $field->id;
		$data = array($inputName => $value);

		if ($requireValidation) {
			$fields = ES::fields();
			$handler = $fields->getHandler();
			$args = array(&$data, &$this);
			$fieldArray = array($field);

			$errors = $fields->trigger('onEditValidate', SOCIAL_FIELDS_GROUP_USER, $fieldArray, $args, array($handler, 'validate'));

			if (is_array($errors) && count($errors) > 0) {
				return $errors;
			}
		}

		$state = $fieldTable->saveData($value, $this->id, SOCIAL_TYPE_USER);

		return $state;
	}

	/**
	 * Retrieves the custom field formatted value from this user.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getFieldValue($key)
	{
		static $processed = array();

		if (!isset($processed[$this->id])) {
			$processed[$this->id] = array();
		}

		if (!isset($processed[$this->id][$key])) {

			// Get the field
			if (!isset(SocialUserStorage::$fields[$this->id][$key])) {
				$model = ES::model('Fields');
				$options = array('group' => SOCIAL_TYPE_USER, 'workflow_id' => $this->getWorkflow()->id, 'data' => true , 'dataId' => $this->id , 'dataType' => SOCIAL_TYPE_USER, 'key' => $key);
				$result = $model->getCustomFields($options);

				SocialUserStorage::$fields[$this->id][$key] = isset($result[0]) ? $result[0] : false;
			}

			$field = SocialUserStorage::$fields[$this->id][$key];

			// Initialize a default property
			$processed[$this->id][$key] = '';

			// Trigger the getFieldValue to obtain data from the field.
			if ($field) {
				$value = ES::fields()->getValue($field);

				$processed[$this->id][$key] = $value;
			}
		}


		return $processed[$this->id][$key];
	}

	/**
	 * Retrieves the custom field raw data from this user.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getFieldData($key , $default = '')
	{
		static $processed = array();

		if (!isset($processed[$this->id])) {
			$processed[$this->id] = array();
		}

		if (!isset($processed[$this->id][$key])) {
			if (!isset(SocialUserStorage::$fields[$this->id][$key])) {
				$result = ES::model('Fields')->getCustomFields(array('group' => SOCIAL_TYPE_USER, 'workflow_id' => $this->getWorkflow()->id, 'data' => true , 'dataId' => $this->id , 'dataType' => SOCIAL_TYPE_USER, 'key' => $key));

				SocialUserStorage::$fields[$this->id][$key] = isset($result[0]) ? $result[0] : false;
			}

			$field = SocialUserStorage::$fields[$this->id][$key];

			// Initialize a default property
			$processed[$this->id][$key]	= '';

			if ($field) {
				// Trigger the getFieldValue to obtain data from the field.
				$value = ES::fields()->getData($field);

				$processed[$this->id][$key] = $value;
			}
		}

		return $processed[$this->id][$key];
	}

	/**
	 * Returns the total number of groups the user created.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getTotalCreatedGroups()
	{
		static $total 	= array();

		if(!isset($total[ $this->id ])) {
			$model = ES::model('Groups');

			$total[$this->id] = $model->getTotalCreated($this->id, SOCIAL_TYPE_USER);
		}

		return $total[$this->id];
	}

	/**
	 * Normalize the method available in this object so other users know what node is this
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getType()
	{
		return SOCIAL_TYPE_USER;
	}

	/**
	 * Returns the total number of groups the user participated.
	 *
	 * @since	2.0.6
	 * @access	public
	 */
	public function getTotalGroups($filter = array())
	{
		static $total = array();

		if (! $filter) {
			// default to search groups that the user participated
			$filter['types'] = 'participated';
		}

		$key = $this->id . md5(implode('', $filter));

		if (!isset($total[$key])) {
			$model = ES::model('Groups');

			$total[$key] = $model->getTotalParticipatedGroups($this->id, $filter);
		}

		return $total[$key];
	}

	/**
	 * Returns the total number of items the user required to review
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getTotalPendingReview($type)
	{
		$model = ES::model('Clusters');
		$count = $model->getTotalPendingReview($this->id, $type);

		return $count;
	}


	/**
	 * Returns the total number of pages the user participated.
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getTotalPages($filter = array())
	{
		static $total = array();

		if (!isset($total[$this->id])) {
			$model = ES::model('Pages');

			$total[$this->id] = $model->getTotalParticipatedPages($this->id, $filter);
		}

		return $total[$this->id];
	}

	/**
	 * Returns the total number of pages the user has created.
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getTotalPagesCreated()
	{
		static $total = array();

		if (!isset($total[$this->id])) {
			$model = ES::model('Pages');

			$total[$this->id] = $model->getTotalCreatedPages($this->id);
		}

		return $total[$this->id];
	}

	/**
	 * Returns the total number of groups the user has created.
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getTotalGroupsCreated()
	{
		static $total = array();

		if (!isset($total[$this->id])) {
			$model = ES::model('Groups');

			$total[$this->id] = $model->getTotalCreatedGroups($this->id);
		}

		return $total[$this->id];
	}

	/**
	 * Returns the total number of followers the user has
	 *
	 * @since	1.0
	 * @access	public
	 * @param	null
	 * @return	null
	 */
	public function getTotalFollowers()
	{
		static $total 	= array();

		if(!isset($total[ $this->id ]))
		{
			$model	= ES::model('Followers');

			$total[ $this->id ]	= $model->getTotalFollowers($this->id);
		}

		return $total[ $this->id ];
	}

	/**
	 * Retrieves the total albums the user has
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getTotalAlbums($excludeCore = false)
	{
		static $total 	= array();

		if(!isset($total[ $this->id ]))
		{
			$model 		= ES::model('Albums');
			$options 	= array('uid' => $this->id , 'type' => SOCIAL_TYPE_USER);

			if($excludeCore)
			{
				$options[ 'excludeCore' ]	= $excludeCore;
			}

			$total[ $this->id ] = $model->getTotalAlbums($options);
		}

		return $total[ $this->id ];
	}

	/**
	 * Retrieves the total number of videos the user has
	 *
	 * @since	1.4
	 * @access	public
	 */
	public function getTotalVideos($daily = false, $includeUnpublished = false)
	{
		static $total 	= array();

		$sid = $this->id . (int) $daily . (int) $includeUnpublished;

		if (!isset($total[$sid])) {

			$model = ES::model('Videos');
			$options = array('userid' => $this->id);

			if ($includeUnpublished) {
				$options['state'] = 'all';
			}

			if ($daily) {
				$today = ES::date()->toMySQL();
				$date = explode(' ', $today);

				$options['day'] = $date[0];
			}

			$total[$sid] = $model->getTotalVideos($options);
		}

		return $total[$sid];
	}

	/**
	 * Retrieves the total number of audios the user has
	 *
	 * @since	2.1
	 * @access	public
	 */
	public function getTotalAudios($daily = false, $includeUnpublished = false)
	{
		static $total 	= array();

		$sid = $this->id . (int) $daily . (int) $includeUnpublished;

		if (!isset($total[$sid])) {

			$model = ES::model('Audios');
			$options = array('userid' => $this->id);

			if ($includeUnpublished) {
				$options['state'] = 'all';
			}

			if ($daily) {
				$today = ES::date()->toMySQL();
				$date = explode(' ', $today);

				$options['day'] = $date[0];
			}

			$total[$sid] = $model->getTotalAudios($options);
		}

		return $total[$sid];
	}


	/**
	 * Retrieves the total photos the user has
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getTotalPhotos($daily = false, $includeUnpublished = false)
	{
		static $total 	= array();

		$sid = $this->id . (int) $daily . (int) $includeUnpublished;

		if (!isset($total[$sid])) {

			$model   = ES::model('Photos');
			$options = array('uid' => $this->id, 'type' => SOCIAL_TYPE_USER);

			if ($includeUnpublished) {
				$options['state'] = 'all';
			}

			if ($daily) {
				$today 	= ES::date()->toMySQL();
				$date 	= explode(' ', $today);

				$options['day'] = $date[0];
			}

			$total[$sid] = $model->getTotalPhotos($options);
		}

		return $total[$sid];
	}


	/**
	 * Returns the total number of badges the user has
	 *
	 * @since	1.0
	 * @access	public
	 * @param	null
	 * @return	null
	 */
	public function getTotalBadges()
	{
		static $total 	= array();

		if (!isset($total[$this->id])) {
			$model = ES::model('Badges');
			$total[$this->id] = $model->getTotalBadges($this->id);
		}

		return $total[$this->id];
	}

	/**
	 * Returns the total number of users this user follows.
	 *
	 * @since	1.0
	 * @access	public
	 * @param	null
	 * @return	null
	 */
	public function getTotalFollowing()
	{
		static $total 	= array();

		if(!isset($total[ $this->id ]))
		{
			$model	= ES::model('Followers');

			$total[ $this->id ]	= $model->getTotalFollowing($this->id);
		}

		return $total[ $this->id ];
	}

	/**
	 * Retrieves the default friend list for this user.
	 *
	 * @since	1.0
	 * @access	public
	 * @return	SocialTableList
	 */
	public function getDefaultFriendList()
	{
		static $lists 	= array();

		if(!isset($lists[ $this->id ]))
		{
			$list 	= ES::table('List');
			$exists	= $list->load(array('default' => 1 , 'user_id' => $this->id));

			if(!$exists)
			{
				$lists[ $this->id ]	= false;
			}
			else
			{
				$lists[ $this->id ]	= $list;
			}
		}


		return $lists[ $this->id ];
	}

	/**
	 * Returns the total number of friends list the current user has.
	 *
	 * @since	1.0
	 * @access	public
	 * @param	null
	 * @return	null
	 */
	public function getTotalFriendsList()
	{
		static $total	= array();

		if(! isset($total[ $this->id ]))
		{
			$model					= ES::model('Lists');
			$total[ $this->id ] 	= $model->getTotalLists($this->id);
		}

		return $total[ $this->id ];
	}

	/**
	 * Returns the total number of friends the current user has.
	 *
	 * @since	1.0
	 * @access	public
	 * @param	null
	 * @return	null
	 */
	public function getTotalFriends()
	{
		static $total	= array();

		if(! isset($total[ $this->id ]))
		{
			$model	= ES::model('Friends');
			$total[ $this->id ] 	= $model->getTotalFriends($this->id);
		}

		return $total[ $this->id ];
	}

	/**
	 * To determine if the user already has oauth linked
	 *
	 * @since   2.1
	 * @access  public
	 */
	public function hasOAuth($client = '')
	{
		return $this->getOAuth($client) ? true : false;
	}

	/**
	 * Retrieves the oauth token
	 *
	 * @since	2.1
	 * @access	public
	 */
	public function getOAuth($client = '')
	{
		$oauth = ES::table('OAuth');

		$state = $oauth->load(array('client' => $client , 'uid' => $this->id , 'type' => SOCIAL_TYPE_USER));

		if (!$state) {
			return false;
		}

		return $oauth;
	}

	/**
	 * Retrieves the oauth token
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getOAuthToken($client = '')
	{
		$oauth 	= ES::table('OAuth');

		$oauth->load(array('client' => $client , 'uid' => $this->id , 'type' => SOCIAL_TYPE_USER));

		return $oauth->token;
	}

	/**
	 * Determines if the user is associated with an oauth client
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function isAssociated($clientType = '')
	{
		static $results = array();

		$key = $this->id . $clientType;

		if (!isset($results[$key])) {

			$options = array('uid' => $this->id, 'type' => SOCIAL_TYPE_USER);

			if ($clientType) {
				$options['client'] = $clientType;
			}

			$table = ES::table('OAuth');
			$exists = $table->load($options);

			$results[$key] = $exists;
		}

		return $results[$key];
	}

	/**
	 * Retrieves the total number of mutual friends.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function getTotalMutualFriends($targetId)
	{
		static $data = array();

		if (!isset($data[$this->id])) {

			$model = ES::model('Friends');
			$total = $model->getMutualFriendCount($this->id , $targetId);

			$data[$this->id] = $total;
		}

		return $data[$this->id];
	}

	/**
	 * Gets the @SocialAccess object.
	 *
	 * @since	1.0
	 * @access	public
	 * @param	null
	 * @return	SocialAccess
	 */
	public function getAccess()
	{
		static $data	= null;

		if (!isset($data[$this->id])) {
			$access = ES::access($this->id, SOCIAL_TYPE_USER);

			$data[$this->id] = $access;
		}

		return $data[$this->id];
	}

	/**
	 * Returns the total number of new notifications for this user.
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getTotalNewNotifications()
	{
		static $items = array();

		if (!isset($items[$this->id])) {
			$model = ES::model('Notifications');
			$options = array('unread' => 1, 'target' => array('id' => $this->id, 'type' => SOCIAL_TYPE_USER));

			$items[$this->id] = $model->getCount($options);
		}

		return $items[$this->id];
	}

	/**
	 * Returns the total number of new conversations this user has not yet read.
	 *
	 * @param	null
	 * @return	int 	The total new conversations
	 */
	public function getTotalNewConversations()
	{
		static $results	= array();

		if(!isset($results[ $this->id ]))
		{
			$model	= ES::model('Conversations');
			$total 	= $model->getConversations($this->id , array('count' => true , 'filter' => 'unread'));

			$results[ $this->id ]	= $total;
		}

		return $results[ $this->id ];
	}

	/**
	 * Returns the total number of new friend requests the user has.
	 *
	 * @since	1.0
	 * @access	public
	 * @param	null
	 * @return	int 		The total number of requests.
	 */
	public function getTotalFriendRequests()
	{
		static $results 	= array();

		if(!isset($results[ $this->id ]))
		{
			$model 	= ES::model('Friends');
			$total 	= $model->getTotalRequests($this->id);

			$results[ $this->id ]	= $total;
		}

		return $results[ $this->id ];
	}

	/**
	 * Returns the total number of friend request a user made.
	 *
	 * @since	1.0
	 * @access	public
	 * @param	null
	 * @return	int 		The total number of requests.
	 */
	public function getTotalFriendRequestsSent()
	{
		static $results 	= array();

		if (!isset($results[$this->id])) {
			$model = ES::model('Friends');
			$total = $model->getTotalRequestSent($this->id);

			$results[$this->id] = $total;
		}

		return $results[$this->id];
	}

	/**
	 * Loads the user's session
	 *
	 * @since	1.0
	 * @access	public
	 * @param	null
	 */
	public function loadSession()
	{
		$user 	= ES::user();

		$this->helper->loadSession($this , $user);
	}

	/*
	 * Allows caller to update a specific field item given it's unique id and value.
	 *
	 * @param   int     $fieldId    The field id.
	 * @param   mixed   $value      The value for that field.
	 *
	 * @return  boolean True on success, false otherwise.
	 */
	public function updateField($fieldId , $value)
	{
		$data   = ES::table('FieldData');
		$data->loadByField($fieldId , $this->node_id);

		$data->node_id  = $this->node_id;
		$data->field_id = $fieldId;
		$data->data     = $value;
		$data->data_binary  = $value;

		return $data->store();
	}

	/**
	 * Determines if this user account can be deleted.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function deleteable()
	{
		if($this->isSiteAdmin())
		{
			return false;
		}

		// Check if this user's profile allows deletion.
		$profile 	= $this->getProfile();
		$params 	= $profile->getParams();

		if($params->get('delete_account'))
		{
			return true;
		}

		return false;
	}

	/**
	 * Allows caller to delete a cover photo for a user.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function deleteCover()
	{
		$state 	= $this->cover->delete();

		// Reset this user's cover
		$this->cover 	= ES::table('Cover');

		// Prepare the dispatcher
		ES::apps()->load(SOCIAL_TYPE_USER);
		$dispatcher		= ES::dispatcher();
		$args 			= array(&$this , &$this->cover);

		// @trigger: onUserCoverRemove
		$dispatcher->trigger(SOCIAL_TYPE_USER , 'onUserCoverRemove' , $args);

		return $state;
	}

	/**
	 * Override parent's delete implementation if necessary.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function delete()
	{
		$state = parent::delete();

		// NOTE: At this point, we don't need to delete the user's record from #__social_users because we have a user plugin that already captures this.

		// Once the user is deleted, clear it from the indexer.
		if ($state) {
			JPluginHelper::importPlugin('finder');
			$dispatcher = JDispatcher::getInstance();
			$dispatcher->trigger('onFinderAfterDelete', array('easysocial.users', $this));

			// We also need to remove his/her avatar from the server
			$this->removeAvatar();
		}

		return $state;
	}

	/**
	 * Alternative to store if we just want to save the user's details in #__social_users
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function store()
	{
		$user 	= ES::table('Users');
		$user->loadByUser($this->id);

		$user->user_id = $this->id;
		$user->state = $this->state;
		$user->type = $this->type;
		$user->alias = $this->alias;
		$user->auth		= $this->auth;

		$state 	= $user->store();

		return $state;
	}

	/**
	 * Override parent's implementation when save so we could run some pre / post rendering.
	 *
	 * @since	1.0
	 * @access	public
	 * @param	bool
	 * @return	bool
	 */
	public function save($updateOnly = false)
	{
		// Determine if this record is a new user by identifying the id.
		$isNew		= $this->isNew();

		// Request parent to store data.
		// $state 		= parent::save($updateOnly);

		// Joomla 3.3.0 sets the JUser object into the session when user login, and if we do parent::save, then SocialUser object will get updated into the session, and causes instance mismatch that leads up to user getting logged out.
		// Hence here we recreate a JUser object, bind it, and save it.
		// In order to make sure that getProperties() gets the correct properties (especially password), SocialUser::bind no longer binds to the to parent class.
		// This is partly because, JUser::bind encrypts password, and calling parent::bind will cause SocialUser->password to no longer have the original clear password, and calling getProperties from here will get you the encrypted password to rebind again.
		if ($isNew) {
			$user = new JUser();
		} else {
			$user = JFactory::getUser($this->id);
		}

		// We only want to bind data that JUser needs
		$vars = get_object_vars($user);
		$data = array();

		foreach ($vars as $key => $val) {
			if (isset($this->$key)) {
				$data[$key]	= $this->$key;
			}
		}

		// Need a custom check for password2
		if (isset($this->password2)) {
			$data['password'] = $this->password;
			$data['password2'] = $this->password2;
		} else {

			// This is to prevent Joomla from throwing PHP notice error because bind actions expects both password and password2 to exist.
			if (!$isNew) {
				unset($data['password']);
			}
		}

		// lets re-arrange the 'groups' so that other user plugins can facilidate the user data
		if (isset($data['groups']) && $data['groups']) {

			$newG = array();
			foreach($data['groups'] as $key => $val) {
				if (is_int($val)) {
					$newG[] = $val;
				} else {
					$newG[] = $key;
				}
			}
			// now we reassgn the groups back to the data.
			$data['groups'] = $newG;
		}

		$user->bind($data);
		$state = $user->save($updateOnly);

		$this->setProperties($user->getProperties());

		// Once the #__users table is updated, we need to update ours as well.
		if ($state) {

			$userTable = ES::table('Users');
			$userTable->loadByUser($this->id);

			$userTable->user_id	= $this->id;
			$userTable->state	= $this->state;
			$userTable->type	= $this->type;
			$userTable->alias	= $this->alias;
			$userTable->auth	= $this->auth;
			$userTable->completed_fields = $this->completed_fields;
			$userTable->require_reset = $this->require_reset;

			$state = $userTable->store();

			// @TODO: Set the default parameters and connections?
			// $this->params = $this->param->toString();
			// $user->set('params'		, $params);
			// $user->set('connections'	, $connections);

			//Generate "new user just registered on the site" on the stream
			if ($isNew) {
				// Get the application params
				$app = ES::table('App');
				$options = array('element' => 'profiles', 'group' => SOCIAL_TYPE_USER);

				$app->load($options);
				$params = $app->getParams();

				// We should greet newbie user upon login with welcome message
				$user = ES::user($this->id);
				$user->setConfig('showwelcome', 1);
				$user->storeConfig();

			}

		} else {
			$this->setError($user->getError());
		}

		return $state;
	}

	/**
	 * Activates a user account.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function activate($sendEmail = true)
	{
		// Load Joomla users plugin for triggers.
		JPluginHelper::importPlugin('user');

		// Set joomla parameters
		$this->activation = '';
		$this->block = 0;

		// Update the current state property.
		$this->state = SOCIAL_USER_STATE_ENABLED;

		// Try to save the user.
		$state = $this->save();

		// Save the user.
		if (!$state) {
			$this->setError($this->getError());
			return false;
		}

		// Auto assign user to group/page
		$this->assignCluster();

		//index user into com_finder
		$this->syncIndex();

		return true;
	}

	/**
	 * Assign this user to clusters
	 *
	 * @since   2.0
	 * @access  public
	 * @param   string
	 * @return
	 */
	public function assignCluster()
	{
		$profile = $this->getProfile();

		// Assign users into the EasySocial groups
		$defaultGroups = $profile->getDefaultClusters('groups');

		if ($defaultGroups) {
			foreach ($defaultGroups as $group) {
				$group->createMemberViaAutoJoinGroups($this->id);
			}
		}

		// Assign users into the EasySocial pages
		$defaultPages = $profile->getDefaultClusters('pages');

		if ($defaultPages) {
			foreach ($defaultPages as $page) {
				$page->createMemberViaAutoLikePages($this->id);
			}
		}
	}

	/**
	 * Approves a user's registration application
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function approve($sendEmail = true)
	{
		// Check if the user already approved or not.
		if ($this->block == 0 && $this->state == SOCIAL_USER_STATE_ENABLED) {
			//already approved.
			return true;
		}

		// Update the JUser object.
		$this->block = 0;

		// Update the current state property.
		$this->state = SOCIAL_USER_STATE_ENABLED;

		// If set to admin approve, user should be activated regardless of whether user activates or not.
		$this->activation = 0;

		// Store the block status
		$this->save();

		// Auto assign user to group/page
		$this->assignCluster();

		// Activity logging.
		// Announce to the world when a new user registered on the site.
		$config = ES::config();

		// Get the application params
		$app = ES::table('App');
		$options = array('element' => 'profiles', 'group' => SOCIAL_TYPE_USER);

		$app->load($options);
		$params = $app->getParams();

		// If not allowed, we will not want to proceed here.
		if ($params->get('stream_register', true)) {

			$stream = ES::stream();

			// Get stream template
			$streamTemplate = $stream->getTemplate();

			// Set the actors.
			$streamTemplate->setActor($this->id, SOCIAL_TYPE_USER);

			// Set the context for the stream.
			$streamTemplate->setContext($this->id, SOCIAL_TYPE_PROFILES);

			// Set the verb for this action as this is some sort of identifier.
			$streamTemplate->setVerb('register');

			$streamTemplate->setSiteWide();

			$streamTemplate->setAccess('core.view');

			// Add the stream item.
			$stream->add($streamTemplate);
		}

		// add user into com_finder index
		$this->syncIndex();

		// @points: user.register
		// Assign points when user registers on the site.
		$points = ES::points();
		$points->assign('user.registration', 'com_easysocial', $this->id);

		// @badge: registration.create
		// Assign badge for the person that initiated the friend request.
		$badge = ES::badges();
		$badge->log('com_easysocial' , 'registration.create' , $this->id , JText::_('COM_EASYSOCIAL_REGISTRATION_BADGE_REGISTERED'));

		// If we need to send email to the user, we need to process this here.
		if ($sendEmail) {

			// Get the application data.
			$jConfig = ES::jConfig();

			// Get the current profile this user has registered on.
			$profile = $this->getProfile();

			// Push arguments to template variables so users can use these arguments
			$params = array(
							'site' => $jConfig->getValue('sitename'),
							'username' => $this->username,
							'name' => $this->getName(),
							'avatar' => $this->getAvatar(SOCIAL_AVATAR_LARGE),
							'email' => $this->email,
							'profileType' => $profile->get('title'),
							'manageAlerts' => false,
							'loginLink' => ESR::external('index.php?option=com_easysocial&view=login')
							);

			JFactory::getLanguage()->load('com_easysocial', JPATH_ROOT);

			// Get the email title.
			$title = JText::_('COM_EASYSOCIAL_EMAILS_REGISTRATION_APPLICATION_APPROVED');

			// Immediately send out emails
			$mailer = ES::mailer();

			$mailTemplate = $mailer->getTemplate();

			$mailTemplate->setTitle($title);
			$mailTemplate->setRecipient($this->getName(), $this->email);
			$mailTemplate->setTemplate('site/registration/approved', $params);
			$mailTemplate->setLanguage($this->getLanguage());

			// Set the priority. We need it to be sent out immediately since this is user registrations.
			$mailTemplate->setPriority(SOCIAL_MAILER_PRIORITY_IMMEDIATE);

			// Try to send out email now.
			$mailer->create($mailTemplate);
		}

		return true;
	}

	/**
	 * Reject's a user's registration application
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function reject($reason = '' , $sendEmail = true , $deleteUser = false)
	{
		// Announce to the world when a new user registered on the site.
		$config 			= ES::config();

		// If we need to send email to the user, we need to process this here.
		if($sendEmail)
		{
			// Get the application data.
			$jConfig 	= ES::jConfig();

			// Get the current profile this user has registered on.
			$profile 	= $this->getProfile();

			// Push arguments to template variables so users can use these arguments
			$params 	= array(
									'site'			=> $jConfig->getValue('sitename'),
									'username'		=> $this->username,
									'name'			=> $this->getName(),
									'email'			=> $this->email,
									'reason'		=> $reason,
									'profileType'	=> $profile->get('title'),
									'manageAlerts'	=> false
							);

			JFactory::getLanguage()->load('com_easysocial' , JPATH_ROOT);

			// Get the email title.
			$title      = JText::_('COM_EASYSOCIAL_EMAILS_REGISTRATION_REJECTED_EMAIL_TITLE');

			// Immediately send out emails
			$mailer 	= ES::mailer();

			// Get the email template.
			$mailTemplate	= $mailer->getTemplate();

			// Set recipient
			$mailTemplate->setRecipient($this->getName() , $this->email);

			// Set title
			$mailTemplate->setTitle($title);

			// Set the contents
			$mailTemplate->setTemplate('site/registration/rejected' , $params);

			// Set the priority. We need it to be sent out immediately since this is user registrations.
			$mailTemplate->setPriority(SOCIAL_MAILER_PRIORITY_IMMEDIATE);

			// Try to send out email now.
			$mailer->create($mailTemplate);
		}

		// If required, delete the user from the site.
		if($deleteUser)
		{
			$this->delete();
		}else{
			// else we need to 'expire' the activation token
			$this->activation = 1;

			// incase the user already activated, we need to block the user again.
			$this->block = 1;

			// now save juser
			$this->save();
		}

		return true;
	}

	/**
	 * Bind an array of data to the current user.
	 *
	 * @since	1.0
	 * @access	public
	 * @param	Array	The object's properties.
	 * @param	bool	Determines whether the data is from $_POST method.
	 *
	 * @return 	bool	True if success false otherwise.
	 */
	public function bind(&$data, $post = false)
	{
		// Request the helper to bind specific additional details
		$this->helper->bind($this, $data);

		$this->setProperties($data);
	}

	/**
	 * Deprecated. Binds a single custom field data based on the given field element
	 *
	 * @since	1.2
	 * @deprecated Deprecated since 1.3.
	 * @access	public
	 * @param	Array	An array of data that is being posted.
	 * @return	bool	True on success, false otherwise.
	 */
	public function bindCustomField($field)
	{
		SocialUserStorage::$fields[$this->id][$field->unique_key] = $field;
	}

	/**
	 * Binds the user custom fields.
	 *
	 * @since	1.0
	 * @access	public
	 * @param	Array	An array of data that is being posted.
	 * @return	bool	True on success, false otherwise.
	 */
	public function bindCustomFields($data, $useProfileId = 0)
	{
		// Get the registration model.
		$model = ES::model('Fields');

		$profileId = ($useProfileId) ? $useProfileId : $this->profile_id;

		$profile = ES::table('Profile');
		$profile->load($profileId);

		// Get the field id's that this profile is allowed to store data on.
		$fields	= $model->getStorableFields($profile->getWorkflow()->id, SOCIAL_TYPE_PROFILES);

		// If there's nothing to process, just ignore.
		if (!$fields) {
			return false;
		}

		// Let's go through all the storable fields and store them.
		foreach ($fields as $fieldId) {

			$key = SOCIAL_FIELDS_PREFIX . $fieldId;

			if (!isset($data[$key])) {
				continue;
			}

			// Get the value
			$value = isset($data[$key]) ? $data[$key] : '';

			// Test if field really exists to avoid any unwanted input
			$field = ES::table('Field');

			// If field doesn't exist, just skip this.
			if (!$field->load($fieldId)) {
				continue;
			}

			$field->saveData($value, $this->id, SOCIAL_TYPE_USER);
		}
	}

	/**
	 * Binds the privacy object for the user.
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function bindPrivacy($privacy , $privacyIds , $customIds, $privacyOld, $resetPrivacy = false)
	{
		$privacyLib = ES::privacy();
		//$resetMap 	= call_user_func_array(array($privacyLib , 'getResetMap'));
		$resetMap 	= $privacyLib->getResetMap();

		$result 	= array();

		if(empty($privacy))
		{
			return false;
		}

		foreach($privacy as $group => $items)
		{
			foreach($items as $rule => $value)
			{
				$id		= $privacyIds[ $group ][ $rule ];
				$id 	= explode('_' , $id);

				$custom			= $customIds[ $group ][ $rule ];
				$customUsers	= array();
				$curVal 	 	= $privacyOld[ $group ][ $rule ];

				// Break down custom user rules
				if(!empty($custom))
				{
					$tmp 	= explode(',' , $custom);

					foreach($tmp as $userId)
					{
						if(!empty($userId))
						{
							$customUsers[]	= $userId;
						}
					}
				}

				$obj 			= new stdClass();
				$obj->id		= $id[ 0 ];
				$obj->mapid		= $id[ 1 ];
				$obj->value		= $value;
				$obj->custom	= $customUsers;

				$obj->reset  = false;

				//check if require to reset or not.
				$gr = strtolower($group . '.' . $rule);
				if($resetPrivacy && in_array($gr,  $resetMap))
				{
					$obj->reset = true;
				}

				$result[]	= $obj;
			}
		}

		$model 		= ES::model('Privacy');
		$state 		= $model->updatePrivacy($this->id , $result , SOCIAL_PRIVACY_TYPE_USER);

		if ($state) {
			//index user access in finder
			$this->syncIndex();
		}

		return $state;
	}

	/**
	 * Sync's the user record with Joomla smart search
	 *
	 * @since	1.3
	 * @access	public
	 */
	public function syncIndex()
	{
		// Determines if this is a new account
		$isNew = $this->isNew();

		// Trigger our own finder plugin
		JPluginHelper::importPlugin('finder');
		$dispatcher = JDispatcher::getInstance();
		$dispatcher->trigger('onFinderAfterSave', array('easysocial.users', &$this, $isNew));
	}

	/**
	 * Determines if the user exceeded their friend request limit
	 *
	 * @since	1.2
	 * @access	public
	 */
	public function exceededFriendLimit()
	{
		$access 	= $this->getAccess();
		$limit 		= $access->get('friends.limit');

		//TODO: Should get this in one query only.
		$total = $this->getTotalFriends() + $this->getTotalFriendRequestsSent();

		// Site admin should never be bound to this rule.
		if ($this->isSiteAdmin()) {
			return false;
		}

		if ($limit != 0 && $access->exceeded('friends.limit', $total)) {
			return true;
		}

		return false;
	}

	/**
	 * Allows caller to remove the user's avatar
	 *
	 * @since	1.0
	 * @access	public
	 */
	public function removeAvatar()
	{
		$avatar = ES::table('Avatar');
		$state = $avatar->load(array('uid' => $this->id, 'type' => SOCIAL_TYPE_USER));

		if ($state) {
			$state = $avatar->delete();

			// Prepare the dispatcher
			ES::apps()->load(SOCIAL_TYPE_USER);
			$dispatcher = ES::dispatcher();
			$args = array(&$this, &$avatar);

			// @trigger: onUserAvatarRemove
			$dispatcher->trigger(SOCIAL_TYPE_USER, 'onUserAvatarRemove', $args);
		}

		return $state;
	}

	/**
	 * Function to verify user password
	 *
	 * @since  1.2
	 * @access public
	 */
	public function verifyUserPassword($password)
	{
		$model = ES::model('Users');

		return $model->verifyUserPassword($this->id, $password);
	}

	/**
	 * Deprecated. Used to support <1.1 legacy language strings.
	 *
	 * @since  1.2
	 * @access public
	 */
	public function getGenderTerm()
	{
		$gender = $this->getFieldData('GENDER');

		$term = JText::_('COM_EASYSOCIAL_THEIR');

		if($gender == 1)
		{
			$term = JText::_('COM_EASYSOCIAL_HIS');
		}

		if($gender == 2)
		{
			$term = JText::_('COM_EASYSOCIAL_HER');
		}

		return $term;
	}

	/**
	 * Used to construct a part of language strings to form a gender specific language strings
	 *
	 * @since  1.2
	 * @access public
	 */
	public function getGenderLang()
	{
		$gender = $this->getFieldData('GENDER');

		$term = '_NOGENDER';

		if ($gender == 1) {
			$term = '_MALE';
		}

		if ($gender == 2) {
			$term = '_FEMALE';
		}

		return $term;
	}

	/**
	 * Retrieves the language that the user is currently using
	 *
	 * @since	1.2
	 * @access	public
	 */
	public function getLanguage()
	{
		static $params = array();

		if (!isset($params[$this->id])) {

			$obj 	= ES::makeObject($this->params);

			// Get the locale the user is using
			$locale = !empty($obj->language) ? $obj->language : '';

			// If the user configures to use the site language, get the default language of the site.
			if (empty($locale)) {
				$jConfig 	= ES::jConfig();
				$locale 	= $jConfig->getValue('language');
			}

			$params[$this->id]	= $locale;
		}

		return $params[$this->id];
	}

	/**
	 * Function to verify current user the badges is viewable by the userId that passed in.
	 *
	 * @since  1.2
	 * @access public
	 */
	public function badgesViewable($userId)
	{
		if($this->id != $userId)
		{
			$privacy 	= ES::privacy($userId);

			if(!$privacy->validate('achievements.view' , $this->id , SOCIAL_TYPE_USER))
			{
				return false;
			}
		}

		return true;
	}

	/**
	 * Returns the total number of events that this user is invited to.
	 *
	 * @since  1.3
	 * @access public
	 */
	public function getTotalEvents()
	{
		return ES::model('Events')->getTotalEvents(array('guestuid' => $this->id, 'types' => 'all', 'gueststate' => SOCIAL_EVENT_GUEST_GOING, 'state' => SOCIAL_STATE_PUBLISHED));
	}

	/**
	 * Returns the total number of events that this user created.
	 *
	 * @since  1.3
	 * @access public
	 */
	public function getTotalCreatedEvents($customOptions = array())
	{
		$baseOptions = array('creator_uid' => $this->id, 'creator_type' => SOCIAL_TYPE_USER, 'types' => 'all');

		$options = array_merge($baseOptions, $customOptions);

		return ES::model('Events')->getTotalEvents($options);
	}

	/**
	 * Returns the total number of events that this user created or joined.
	 * @since  2.0
	 * @access public
	 */
	public function getTotalCreatedJoinedEvents($customOptions = array())
	{
		$baseOptions = array('creator_uid' => $this->id, 'creator_type' => SOCIAL_TYPE_USER, 'types' => 'all', 'creator_join' => true, 'ongoing' => true, 'upcoming' => true);

		$options = array_merge($baseOptions, $customOptions);

		return ES::model('Events')->getTotalEvents($options);
	}

	/**
	 * Sets the OTP settings for the user. This technique is borrowed from totp plugin
	 *
	 * @access public
	 * @since 1.3
	 */
	public function setOtpConfig($otpConfig)
	{
		// Create the encryptor class
		$key = ES::jConfig()->getValue('secret');
		$aes = new FOFEncryptAes($key, 256);

		// Create the encrypted option strings
		if (!empty($otpConfig->method) && ($otpConfig->method != 'none')) {

			$decryptedConfig = json_encode($otpConfig->config);
			$decryptedOtep   = json_encode($otpConfig->otep);

			// Bind the values to this user
			$this->otpKey    = $otpConfig->method . ':' . $aes->encryptString($decryptedConfig);
			$this->otep      = $aes->encryptString($decryptedOtep);
		}

		return $result;
	}

	/**
	 * Retrieves the user's one time password settings
	 *
	 * @since	1.3
	 * @access	public
	 */
	public function getOtpConfig()
	{
		static $cache = array();

		if (!isset($cache[$this->id])) {
			$otpConfig = new stdClass();
			$otpConfig->method = 'none';
			$otpConfig->config = array();
			$otpConfig->otep   = array();

			// Ensure the user has an otp set
			if (!$this->otpKey) {
				$cache[$this->id] = $otpConfig;

				return $cache[$this->id];
			}

			// Get the encrypted data
			list($method, $encryptedConfig) = explode(':', $this->otpKey, 2);
			$encryptedOtep = $this->otep;

			// Create an encryptor class
			$key = ES::jConfig()->getValue('secret');
			$aes = new FOFEncryptAes($key, 256);

			// Decrypt the data
			$decryptedConfig = $aes->decryptString($encryptedConfig);
			$decryptedOtep 	 = $aes->decryptString($encryptedOtep);

			// Remove the null padding added during encryption
			$decryptedConfig = rtrim($decryptedConfig, "\0");
			$decryptedOtep   = rtrim($decryptedOtep, "\0");

			// Update the configuration object
			$otpConfig->method = $method;
			$otpConfig->config = @json_decode($decryptedConfig);
			$otpConfig->otep   = @json_decode($decryptedOtep);

			/*
			 * If the decryption failed for any reason we essentially disable the
			 * two-factor authentication. This prevents impossible to log in sites
			 * if the site admin changes the site secret for any reason.
			 */
			if (is_null($otpConfig->config)) {
				$otpConfig->config = array();
			}

			if (is_object($otpConfig->config)) {
				$otpConfig->config = (array) $otpConfig->config;
			}

			if (is_null($otpConfig->otep)) {
				$otpConfig->otep = array();
			}

			if (is_object($otpConfig->otep)) {
				$otpConfig->otep = (array) $otpConfig->otep;
			}

			$cache[$this->id] = $otpConfig;
		}

		return $cache[$this->id];
	}

	/**
	 * Determines if the person can view target person's points history.
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function canViewPointsHistory($user)
	{
		return $this->canView($user, 'points.view.history');
	}

	/**
	 * Get lists of custom fields that are associated with the user
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getCustomFields($key = null)
	{
		$user = $this;

		$model = ES::model('Fields');

		$options = array('key' => $key , 'workflow_id' => $user->getWorkflow()->id , 'data' => true , 'dataId' => $user->id ,'dataType' => SOCIAL_TYPE_USER);

		$fields = $model->getCustomFields($options);

		if (!isset($fields)) {
			return false;
		}

		return $fields;
	}

	/**
	 * Get lists of custom fields that are associated with the user
	 * in the form of json string
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getFieldsApi($key = null)
	{
		$fields = $this->getCustomFields($key);

		if (!$fields) {
			return false;
		}

		$fieldsApi = array();

		foreach ($fields as $field) {
			$obj = new stdClass();

			$obj->key = $field->unique_key;
			$obj->data = $field->data;

			$fieldsApi[] = $obj;
		}

		$json = ES::json();

		$fieldsApi = $json->encode($fieldsApi);
		return $fieldsApi;
	}

	/**
	 * Get user's profile headline descriptions
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getDescription($truncate = false, $key = 'HEADLINE')
	{
		// Get the data from headline custom fields
		$description = $this->getFieldValue($key);

		if (!$description || !$description->value) {
			return false;
		}

		if ($truncate) {
			$description->value = JString::substr($description->value, 0, 300) . JText::_('COM_EASYSOCIAL_ELLIPSES');
		}

		return $description->value;
	}

	/**
	 * Render metadata of the user
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function renderHeaders()
	{
		$obj = new stdClass();

		// Set meta data
		$obj->title = JText::sprintf('COM_EASYSOCIAL_PROFILE_META_DESCRIPTION', $this->getName());
		$obj->description = $this->getDescription(true);

		if (!$obj->description) {
			$obj->description = $obj->title;
		}

		$obj->type = 'Profile';
		$obj->keywords = JText::sprintf('COM_EASYSOCIAL_PROFILE_META_KEYWORDS', $this->getProfile()->title, $this->getName());
		$obj->author = $this->getName();
		$obj->image = $this->getCover();
		$obj->url = $this->getPermalink(true, true);

		// Set meta data
		ES::meta()->setMetaObj($obj);
	}

	/**
	 * Determine if we should display welcome message to the user
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function showWelcomeMessage()
	{
		$config = $this->getConfig();

		$welcome = $config->get('showwelcome');

		return $welcome;
	}

	/**
	 * Method to delete all fields_data for existing profile type.
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function deleteFieldData($workflowId)
	{
		if (!$workflowId) {
			$workflowId = $this->getWorkflow()->id;
		}

		$model = ES::model('Fields');
		$state = $model->deleteFieldsData($this->id, $workflowId);

		return $state;
	}

	/**
	 * Get user's total cluster joined
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getTotalClusters()
	{
		$totalGroups = $this->getTotalGroups();
		$totalEvents = $this->getTotalEvents();
		$totalPages = $this->getTotalPages();

		$totalClusters = $totalGroups + $totalEvents + $totalPages;

		return $totalClusters;
	}

	/**
	 * Check if user already completed their profile
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getProfileCompleteness()
	{
		$total = $this->getProfile()->getTotalFields(SOCIAL_PROFILES_VIEW_EDIT);
		$filled = (int) $this->completed_fields;

		// Avoid using maintenance script to do this because it is possible that a site might have >1000 users
		// Using this method instead so that every user will at least get executed once during login
		// Won't happen on subsequent logins
		if (empty($filled)) {
			$fields = ES::model('Fields')->getCustomFields(array(
				'workflow_id' => $this->getWorkflow()->id,
				'data' => true,
				'dataId' => $this->id,
				'dataType' => SOCIAL_TYPE_USER,
				'visible' => SOCIAL_PROFILES_VIEW_EDIT,
				'group' => SOCIAL_FIELDS_GROUP_USER
		   ));

			$args = array(&$this);
			$completedFields = ES::fields()->trigger('onProfileCompleteCheck', SOCIAL_FIELDS_GROUP_USER, $fields, $args);
			$table = ES::table('Users');
			$table->load(array('user_id' => $this->id));
			$table->completed_fields = count($completedFields);
			$table->store();

			$filled = $table->completed_fields;
		}

		$percentage = (int) (($filled / $total) * 100);

		return $percentage;
	}

	/**
	 * Reload user config
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function reloadConfig()
	{
		return $this->loadConfig(true);
	}

	/**
	 * Initialize user config
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function loadConfig($forceReload = null)
	{
		if (!isset($this->userConfig[$this->id]) || $forceReload) {

			// Get the config file
			$default = SOCIAL_CONFIG_DEFAULTS . '/users/social.params.json';

			// Read the default data
			$defaultData = JFile::read($default);

			// Load a new copy of registry
			$originalConfig = ES::registry($defaultData);

			// Get stored config from database
			$storedConfig = $this->social_params;

			// If the config already exists, we need to merge the value with the default
			if ($storedConfig) {

				if (!$storedConfig instanceof SocialRegistry) {
					$storedConfig = ES::registry($storedConfig);
				}

				// Merge the configs
				$originalConfig->mergeObjects($storedConfig->getRegistry());
			}

			$this->userConfig[$this->id] = $originalConfig;
		}

		return $this->userConfig[$this->id];
	}

	/**
	 * Get user config
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getConfig($key = null)
	{
		if ($key) {
			return $this->userConfig[$this->id]->get($key);
		}

		return $this->userConfig[$this->id];
	}

	/**
	 * Set user config
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function setConfig($key, $value)
	{
		return $this->getConfig()->set($key, $value);
	}

	/**
	 * Store user config
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function storeConfig()
	{
		// Get user config
		$config = $this->getConfig();

		// Convert the config object to a json string.
		$jsonString = $config->toString();

		// Load user table
		$user = ES::table('Users');
		$user->load(array('user_id' => $this->id));

		$user->social_params = $jsonString;
		$user->store();

		return $config;
	}

	/**
	 * Get user's Social Goals
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getSocialGoals()
	{
		$config = $this->getConfig();
		$socialGoals = $config->get('socialgoals');

		// bind goals permalink
		foreach ($socialGoals as $goal => $data) {

			if (!is_object($data)) {
				continue;
			}

			$permalink = $this->getGoalsPermalink($goal);
			$data->permalink = $permalink;
		}

		return $socialGoals;
	}

	/**
	 * Generate goals permalink
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function getGoalsPermalink($key)
	{
		// go to edit profile page
		if ($key == 'updateavatar' || $key == 'completeprofile') {
			return ESR::profile(array('layout' => 'edit'));
		}

		// Browse user page
		if ($key == 'addfriend') {
			return ESR::users();
		}

		// redirect to group
		if ($key == 'joincluster') {
			return ESR::groups();
		}

		// default redirection
		return ESR::dashboard();
	}

	/**
	 * Method to determine user has post a status update before
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function hasStatusUpdate()
	{
		$model = ES::model('Stream');

		$totalStream = $model->getTotalStreamBy($this->id);

		if ($totalStream > 0) {
			return true;
		}

		return false;
	}

	/**
	 * Method to determine user has post a comment before
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function hasCommentPost()
	{
		$model = ES::model('Comments');
		$totalComment = $model->getTotalCommentsBy($this->id);

		if ($totalComment > 0) {
			return true;
		}

		return false;
	}

	/**
	 * Determine whether user has friend
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function hasFriends()
	{
		$totalFriends = $this->getTotalFriends();

		if ($totalFriends > 0) {
			return true;
		}

		return false;
	}

	/**
	 * Determines whether user has joined a cluster
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function hasClusters()
	{
		$totalClusters = $this->getTotalClusters();

		if ($totalClusters > 0) {
			return true;
		}

		return false;
	}

	/**
	 * Determines whether user already completed their profile
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function hasCompletedProfile()
	{
		$completion = $this->getProfileCompleteness();

		if ($completion >= 100) {
			return true;
		}

		return false;
	}

	/**
	 * Initialize social goals value
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function loadSocialGoals($options = array())
	{
		$goals = $this->getSocialGoals();

		// List of goals and function
		$allowed = $this->goalsList;

		$total = 0;
		$completed = 0;

		foreach ($allowed as $key => $functionName) {

			if (isset($goals->$key)) {
				$total++;

				// We only let user to achieve the goal for one time only
				if ($goals->$key->value) {
					$completed++;
					continue;
				}

				$configName = 'socialgoals.' . $key . '.value';
				$configValue = isset($options[$key]) ? $options[$key] : $this->$functionName();

				$this->setConfig($configName, $configValue);

				if ($configValue) {
					$completed++;
				}
			}
		}

		// Calculate Completion percentage
		$percentage = (int) (($completed / $total) * 100);

		$this->setConfig('socialgoals.percentagecomplete', $percentage);
		$this->setConfig('socialgoals.initialized', true);

		// Store the progress
		$newConfig = $this->storeConfig();

		// Return new goals progress
		return $newConfig->get('socialgoals');
	}

	/**
	 * Check for user's goals completion
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function checkGoalsCompletion($percentageOnly = false)
	{
		$goals = $this->getSocialGoals();

		if (!isset($goals->initialized) || !$goals->initialized) {

			// Initialize social goals progress
			$goals = $this->loadSocialGoals();
		}

		if ($percentageOnly) {
			return $goals->percentagecomplete;
		}

		return $goals;
	}

	/**
	 * Update Social Goals Progress
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function updateGoals($key)
	{
		if (!$key) {
			return false;
		}

		$goals = $this->checkGoalsCompletion();

		// Do not proceed if user already achieved all the goals
		if ($goals->percentagecomplete >= 100) {
			return true;
		}

		// Do not proceed if user already achieved this before
		if ($goals->$key->value) {
			return true;
		}

		// The trick here is to change the `initialized` value from true to false,
		// so that the system will automatically re-update the data next time user refresh the page.
		$this->setConfig('socialgoals.initialized', false);
		$this->storeConfig();

		return true;
	}

	/**
	 * Update user's last story posting datetime
	 *
	 * @since	2.1
	 * @access	public
	 */
	public function updateLastStoryTime()
	{
		$now = ES::date()->toSql();

		$this->setConfig('last.story.time', $now);
		$this->storeConfig();

		return true;
	}

	/**
	 * get user's last story posting datetime
	 *
	 * @since	2.1
	 * @access	public
	 */
	public function getLastStoryTime()
	{
		$lastDateTime = $this->getConfig('last.story.time', '');
		return $lastDateTime;
	}

	/**
	 * Determine if user are allow to post story via story form
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function canPostStory()
	{
		$access = $this->getAccess();

		if (!$access->get('story.user.post') && !$this->isSiteAdmin()) {
			return false;
		}

		return true;
	}


	/**
	 * Determine if story flood control enabled and user are no withing the flood interval.
	 *
	 * @since	2.1
	 * @access	public
	 */
	public function canSubmitStory()
	{
		if ($this->isSiteAdmin()) {
			return true;
		}

		$access = $this->getAccess();

		if ($access->get('story.flood.user')) {

			$floodInterval = (int) $access->get('story.flood.interval');
			$lastPosting = $this->getLastStoryTime();

			if ($floodInterval && $lastPosting) {
				$check = ES::date('- ' . $floodInterval . ' seconds')->toSql();
				$now = ES::date()->toSql();

				if ($lastPosting > $check) {
					return false;
				}
			}
		}

		return true;
	}

	/**
	 * Determine whether user are allow to post story update based on cluster type
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function canPostClusterStory($clusterType, $clusterId)
	{
		$access = $this->getAccess();

		if ($clusterType == SOCIAL_TYPE_GROUP) {

			// Check for profile type access
			if (!$access->get('story.group.post') && !$this->isSiteAdmin()) {
				return false;
			}

			$group = ES::group($clusterId);

			if (!$group->canViewStoryForm($this)) {
				return false;
			}

			// Get the group params
			$params = $group->getParams();

			// Ensure that the user has permissions to see the story form
			$permissions = $params->get('stream_permissions', null);

			if (!is_null($permissions)) {

				// If the user is not an admin, ensure that permissions has member
				if ($group->isMember() && !in_array('member', $permissions) && !$group->isOwner() && !$group->isAdmin()) {
					return false;
				}

				// If the user is an admin, ensure that permissions has admin
				if ($group->isAdmin() && !in_array('admin', $permissions) && !$group->isOwner()) {
					return false;
				}

				$type = $group->getParams()->get('permission_type', null);

				// Check for profile type
				if (!is_null($type) && in_array('selected', $type) && !$group->isAdmin() && !$group->isOwner()) {

					$profileType = $group->getParams()->get('permission_profiles', null);

					// Get profile type from current logged in user
					$profile = ES::user()->getProfile();

					if (!is_null($profileType) && !in_array($profile->id, $profileType)) {
						return false;
					}
				}

				// Check for selected members
				if (!is_null($type) && in_array('selectedUsers', $type) && !$group->isAdmin() && !$group->isOwner()) {
					$users = $group->getparams()->get('permission_users', null);

					// Get current logged in user
					$user = ES::user();

					if (!is_null($user->id) && !in_array($user->id, $users)) {
						return false;
					}
				}
			}
		}

		if ($clusterType == SOCIAL_TYPE_EVENT) {

			$event = ES::event($clusterId);

			if (!$event->canPostUpdates()) {
				return false;
			}

			$params = $event->getParams();

			$permissions = $params->get('stream_permissions', null);

			if (!is_null($permissions)) {

				// If the user is not an admin, ensure that permissions has member
				if ($event->isMember() && !in_array('member', $permissions) && !$event->isOwner() && !$event->isAdmin()) {
					return false;
				}

				// If the user is an admin, ensure that permissions has admin
				if ($event->isAdmin() && !in_array('admin', $permissions) && !$event->isOwner()) {
					return false;
				}

				$type = $event->getParams()->get('permission_type', null);

				// Check for profile type
				if (!is_null($type) && in_array('selected', $type) && !$event->isAdmin() && !$event->isOwner()) {

					$profileType = $event->getParams()->get('permission_profiles', null);

					// Get profile type from current logged in user
					$profile = ES::user()->getProfile();

					if (!is_null($profileType) && !in_array($profile->id, $profileType)) {
						return false;
					}
				}
			}
		}

		return true;
	}

	/**
	 * Method to send reset password token email
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function remindPassword($email = null)
	{
		// Load backend language file.
		ES::language()->loadAdmin();

		if (!$email) {
			$email = $this->email;
		}

		$model = ES::model('Users');

		// Get user id
		$id = $model->getUserId('email', $email);

		if(!$id) {
			$this->setError(JText::_('COM_EASYSOCIAL_USERS_NO_SUCH_USER_WITH_EMAIL'));
			return false;
		}

		// Reload user
		$user = ES::user($id);

		// Ensure that the user is not blocked
		if ($user->block) {
			$this->setError(JText::_('COM_EASYSOCIAL_USERS_USER_BLOCKED'));
			return false;
		}

		// Super administrator is not allowed to reset passwords.
		if ($user->authorise('core.admin')) {
			$this->setError( JText::_('COM_EASYSOCIAL_PROFILE_REMIND_PASSWORD_SUPER_ADMIN'));
			return false;
		}

		// Make sure the user has not exceeded the reset limit
		if (!$this->checkResetLimit($user)) {
			$resetLimit = (int) JFactory::getApplication()->getParams()->get('reset_time');
			$this->setError(JText::_('COM_EASYSOCIAL_PROFILE_REMIND_PASSWORD_EXCEEDED', $resetLimit));
			return false;
		}

		// Set the confirmation token.
		$token = JApplication::getHash(JUserHelper::genRandomPassword());
		$salt = JUserHelper::getSalt('crypt-md5');
		$hashedToken = md5($token . $salt) . ':' . $salt;

		// Set the new activation
		$user->activation = $hashedToken;

		// Save the user to the database.
		if (!$user->save(true)) {
			$this->setError(JText::_('COM_EASYSOCIAL_PROFILE_REMIND_PASSWORD_SAVE_ERROR'));
			return false;
		}

		// Get the application data.
		$jConfig = ES::jConfig();

		// Default username
		$username = $user->username;

		// Use email as username if system only allow to login with emails. #508
		if ($this->config->get('registrations.emailasusername') && $this->config->get('general.site.loginemail')) {
			$username = $email;
		}

		// Push arguments to template variables so users can use these arguments
		$params = array(
				'site' => $jConfig->getValue('sitename'),
				'username' => $username,
				'name' => $user->getName(),
				'id' => $user->id,
				'avatar' => $user->getAvatar(SOCIAL_AVATAR_LARGE),
				'profileLink' => $user->getPermalink(true, true),
				'email' => $email,
				'token' => $token
			);

		// Get the email title.
		$title = JText::_('COM_EASYSOCIAL_EMAILS_REMIND_PASSWORD_TITLE');

		// Immediately send out emails
		$mailer = ES::mailer();

		// Get the email template.
		$mailTemplate = $mailer->getTemplate();

		// Set recipient
		$mailTemplate->setRecipient($user->name, $user->email);

		// Set title
		$mailTemplate->setTitle($title);

		// Set the contents
		$mailTemplate->setTemplate('site/user/remind.password', $params);

		// Set the priority. We need it to be sent out immediately since this is user registrations.
		$mailTemplate->setPriority(SOCIAL_MAILER_PRIORITY_IMMEDIATE);

		// Try to send out email now.
		$state = $mailer->create($mailTemplate);

		return $state;
	}

	/**
	 * Remind username
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function remindUsername($email = null)
	{
		// Load backend language file.
		ES::language()->loadAdmin();

		if (!$email) {
			$email = $this->email;
		}

		$model = ES::model('Users');

		// Get user id
		$id = $model->getUserId('email', $email);

		if (!$id) {
			$this->setError(JText::_('COM_EASYSOCIAL_USERS_NO_SUCH_USER_WITH_EMAIL'));
			return false;
		}

		// Reload user
		$user = ES::user($id);

		// Ensure that the user is not blocked
		if ($user->block) {
			$this->setError(JText::_('COM_EASYSOCIAL_USERS_USER_BLOCKED'));
			return false;
		}

		// Get the application data.
		$jConfig = ES::jConfig();

		// Push arguments to template variables so users can use these arguments
		$params = array(
				'site' => $jConfig->getValue('sitename'),
				'username' => $user->username,
				'name' => $user->getName(),
				'id' => $user->id,
				'avatar' => $user->getAvatar(SOCIAL_AVATAR_LARGE),
				'profileLink' => $user->getPermalink(true, true),
				'email' => $email
			);

		// Get the email title.
		$title = JText::sprintf('COM_EASYSOCIAL_EMAILS_REMIND_USERNAME_TITLE', $jConfig->getValue('sitename'));

		// Immediately send out emails
		$mailer = ES::mailer();

		// Get the email template.
		$mailTemplate = $mailer->getTemplate();

		// Set recipient
		$mailTemplate->setRecipient($user->name, $user->email);

		// Set title
		$mailTemplate->setTitle($title);

		// Set the contents
		$mailTemplate->setTemplate('site/user/remind.username', $params);

		// Set the priority. We need it to be sent out immediately since this is user registrations.
		$mailTemplate->setPriority(SOCIAL_MAILER_PRIORITY_IMMEDIATE);

		// Try to send out email now.
		$state = $mailer->create($mailTemplate);

		return $state;
	}

	/**
	 * Method to check if user reset limit has been exceeded within the allowed time period.
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function checkResetLimit($user = null)
	{
		if (!$user) {
			$user = ES::user();
		}

		$params = JFactory::getApplication()->getParams();
		$maxCount = (int) $params->get('reset_count');
		$resetHours = (int) $params->get('reset_time');
		$result = true;

		$lastResetTime = strtotime($user->lastResetTime) ? strtotime($user->lastResetTime) : 0;
		$hoursSinceLastReset = (strtotime(JFactory::getDate()->toSql()) - $lastResetTime) / 3600;

		// If it's been long enough, start a new reset count
		if ($hoursSinceLastReset > $resetHours) {
			$user->lastResetTime = JFactory::getDate()->toSql();
			$user->resetCount = 1;
		} elseif ($user->resetCount < $maxCount) {
			// If we are under the max count, just increment the counter
			$user->resetCount;
		} else {
			// At this point, we know we have exceeded the maximum resets for the time period
			$result = false;
		}

		return $result;
	}

	/**
	 * Get workflow for this user
	 *
	 * @since	2.1
	 * @access	public
	 */
	public function getWorkflow()
	{
		$profile = $this->getProfile();
		return $profile->getWorkflow();
	}
}

/**
 * This class would be used to store all user objects
 *
 */
class SocialUserStorage
{
	static $users 	= array();
	static $fields 	= array();
	static $badges 	= array();
}
