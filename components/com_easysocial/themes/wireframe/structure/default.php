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
?>
<div id="es" class="es-frontend es-main <?php echo $view . $task . $object . $layout . $suffix; ?> <?php echo $this->renderMobileClass(); ?>" data-es-structure>
	<?php echo $this->render('module', 'es-general-top'); ?>

	<?php if ($show != 'iframe' && $this->config->get('general.layout.toolbar')) { ?>
		<?php echo $toolbar; ?>
	<?php } ?>

	<?php echo $this->render('module', 'es-general-after-toolbar'); ?>

	<?php echo ES::info()->html(); ?>

	<?php echo $this->render('module', 'es-general-before-contents'); ?>

	<?php echo $contents; ?>

	<?php echo $this->render('module', 'es-general-bottom'); ?>

	<div><?php echo $scripts; ?></div>

	<div data-es-popbox-error style="display:none;"><?php echo JText::_('COM_EASYSOCIAL_POPBOX_ERROR_UNABLE_TO_LOAD_CONTENT'); ?></div>
</div>
