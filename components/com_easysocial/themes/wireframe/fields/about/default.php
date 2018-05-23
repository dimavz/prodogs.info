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
<?php if ($steps) { ?>
	<?php foreach ($steps as $step) { ?>

		<?php if (!empty($step->fields)) { ?>
			<table class="es-profile-data-table">
				<thead>
					<tr>
					   <th colspan="2">
							<div class="o-grid-sm">
								<div class="o-grid-sm__cell">
									<?php echo $step->_('title');?>
								</div>
								
								<?php if (isset($canEdit) && $canEdit) { ?>
								<div class="o-grid-sm__cell o-grid-sm__cell--auto-size o-grid-sm__cell--right">
									<a href="<?php echo $step->getEditLink(isset($objectId) ? $objectId : null, isset($routerType) ? $routerType : null);?>" class="btn btn-xs btn-es-default-o">
										<i class="fa fa-pencil"></i>
									</a>
								</div>
								<?php } ?>
							</div>
					   </th> 
					</tr>
				</thead>
				<tbody>
					<?php $empty = true; ?>

					<?php foreach ($step->fields as $field) { ?>
						<?php if (!empty($field->output)) { ?>
							<?php echo $field->output; ?>
							<?php $empty = false; ?>
						<?php } ?>
					<?php } ?>

					<?php if ($empty) { ?>
					<tr>
						<td colspan="2">
							<?php echo JText::_('COM_ES_ABOUT_NO_DETAILS_HERE');?>
						</td>
					</tr>
					<?php } ?>
				</tbody>
			</table>
		<?php } ?>
	<?php } ?>
<?php } ?>