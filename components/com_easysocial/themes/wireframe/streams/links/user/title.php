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
<?php if ($target && $actor->id != $target->id ) { ?>
	<?php echo $this->html('html.user', $actor); ?>
	&nbsp;<i class="fa fa-caret-right"></i>&nbsp;
	<?php echo $this->html('html.user', $target); ?>
<?php } else { ?>

	<?php if ($stream->showPageTitle()) { ?>
		<?php echo $this->html('html.user', $actor->id, true); ?>
		<?php echo $this->html('html.anywhereTitle', $stream); ?>
	<?php } else { ?>
		<?php echo JText::sprintf('APP_USER_LINKS_STREAM_SHARED_LINK', $this->html('html.user', $actor), $assets->get('link')); ?>
	<?php } ?>

<?php } ?>
