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

class EasySocialViewSubscriptions extends EasySocialSiteView
{
	/**
	 * Post processing after a user is being subscribed
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function follow(SocialSubscriptions $subscription)
	{
		$theme = ES::themes();
		$output = $theme->html('user.subscribe', $subscription->getTarget());
		
		return $this->ajax->resolve($output);
	}

	/**
	 * Post processing after a user is being unsubscribed
	 *
	 * @since	2.0
	 * @access	public
	 */
	public function unfollow(SocialSubscriptions $subscriptions)
	{
		$theme = ES::themes();
		$output = $theme->html('user.subscribe', $subscriptions->getTarget());

		return $this->ajax->resolve($output);
	}
}
