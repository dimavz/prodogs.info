<?php
/**
* @package		EasySocial
* @copyright	Copyright (C) 2010 - 2014 Stack Ideas Sdn Bhd. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* EasySocial is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined( '_JEXEC' ) or die( 'Unauthorized Access' );
?>
<div data-field-joomla_username>
	<div class="o-input-group">
		<input type="text" class="o-form-control validation keyup length-4 required username<?php echo $params->get( 'check_username' , true ) ? ' has-checkbutton' : '';?>"
			name="username"
			id="<?php echo $element;?>"
			value="<?php echo $username; ?>"
			autocomplete="off"
			data-username-input
			placeholder="<?php echo JText::_( 'PLG_FIELDS_JOOMLA_USERNAME_USERNAME' ); ?>" />

		<?php if( $params->get( 'check_username' , true ) ){ ?>
		<span class="o-input-group__btn">
			<button type="button" class="btn btn-es-default-o" id="checkUsername" data-username-check>
				<?php echo JText::_( 'PLG_FIELDS_JOOMLA_USERNAME_CHECK_BUTTON' );?>
			</button>
		</span>
		<?php } ?>
	</div>

	<div class="" data-username-available style="margin:0">
		<span class="help-block text-success" data-username-available style="display: none;">
			<span><?php echo JText::_( 'PLG_FIELDS_JOOMLA_USERNAME_AVAILABLE' );?></span>
		</span>
	</div>
</div>
