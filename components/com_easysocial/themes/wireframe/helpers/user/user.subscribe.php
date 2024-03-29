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
?>
<?php if (!$isFollowing) { ?>
	<a href="javascript:void(0);" class="btn btn-es-default-o btn-sm btn--es-subscription" data-es-subscription data-task="follow" data-id="<?php echo $user->id;?>">
        <div class="o-loader o-loader--sm"></div>
	    <?php echo JText::_('COM_EASYSOCIAL_PROFILE_FOLLOW');?>
	</a>
<?php } else { ?>
	<a href="javascript:void(0);" class="btn btn-es-danger-o btn-sm btn--es-subscription" 
		data-es-subscription 
		data-task="unfollow" 
		data-id="<?php echo $user->id;?>">
        <div class="o-loader o-loader--sm"></div>
	    <?php echo JText::_('COM_EASYSOCIAL_PROFILE_UNFOLLOW');?>
	</a>
<?php } ?>