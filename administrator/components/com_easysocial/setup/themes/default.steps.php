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

<?php foreach ($steps as $step) { ?>
<div class="col-cell<?php echo $step->className;?>">
	<b><?php echo JText::sprintf('Step %1$s', $step->index);?></b>
	<div><?php echo JText::_($step->title);?></div>
</div>
<?php } ?>

<div class="col-cell<?php echo $active == 'complete' ? ' current' : '';?>">
	<b><?php echo JText::sprintf('Step %1$s', count($steps) + 1);?></b>
	<div><?php echo JText::_('COM_EASYSOCIAL_INSTALLATION_COMPLETE');?></div>
</div>