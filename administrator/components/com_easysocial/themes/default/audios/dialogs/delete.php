<?php
/**
* @package      EasySocial
* @copyright    Copyright (C) 2010 - 2017 Stack Ideas Sdn Bhd. All rights reserved.
* @license      GNU/GPL, see LICENSE.php
* EasySocial is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined('_JEXEC') or die('Unauthorized Access');
?>
<dialog>
	<width>400</width>
	<height>150</height>
	<selectors type="json">
	{
		"{submit}": "[data-submit-button]",
		"{cancelButton}": "[data-cancel-button]",
		"{form}": "[data-dialog-form]"
	}
	</selectors>
	<bindings type="javascript">
	{
		"{cancelButton} click": function() {
			this.parent.close();
		},

		"{submit} click": function() {
			this.form().submit();
		}
	}
	</bindings>
	<title><?php echo JText::_('COM_ES_AUDIO_DELETE_AUDIO'); ?></title>
	<content>
		<p><?php echo JText::_('COM_ES_AUDIO_DELETE_AUDIO_CONFIRMATION'); ?></p>
		<form data-dialog-form method="post" action="<?php echo JRoute::_('index.php');?>">

			<?php echo $this->html('form.action', 'audios', 'delete'); ?>

			<?php foreach ($ids as $id) { ?>
			<input type="hidden" name="cid[]" value="<?php echo $id;?>" />
			<?php } ?>
		</form>
	</content>
	<buttons>
		<button data-cancel-button type="button" class="btn btn-es-default btn-sm"><?php echo JText::_('COM_ES_CANCEL'); ?></button>
		<button data-submit-button type="button" class="btn btn-es-danger btn-sm"><?php echo JText::_('COM_ES_AUDIO_DELETE_AUDIO'); ?></button>
	</buttons>
</dialog>
