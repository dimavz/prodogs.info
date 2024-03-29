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
<?php if (!$event->isPending()) { ?>
	<?php echo $this->html('cover.event', $event, 'info'); ?>
<?php } ?>

<?php if ($event->isRecurringEvent()) { ?>
<div class="well">
	<?php echo JText::sprintf('COM_EASYSOCIAL_EVENTS_RECURRING_EVENT_YOU_ARE_EDITING_RECURRING_EVENT', $event->getParent()->getPermalink(true, false, 'edit')); ?>
</div>
<?php } ?>

<?php echo $this->html('responsive.toggle'); ?>

<div class="es-container es-events-edit" data-events-edit data-es-container>
	<div class="es-sidebar" data-sidebar>
		<?php echo $this->render('module', 'es-events-edit-sidebar-top'); ?>

		<div class="es-side-widget">
			<?php echo $this->html('widget.title', 'COM_EASYSOCIAL_PROFILE_SIDEBAR_ABOUT'); ?>

			<div class="es-side-widget__bd">
				<ul class="o-tabs o-tabs--stacked">
					<?php $i = 0; ?>
					<?php foreach ($steps as $step) { ?>
						<li class="o-tabs__item <?php echo $i == 0 ? ' active' :'';?>" data-step-nav data-for="<?php echo $step->id;?>">
							<a href="javascript:void(0);" class="o-tabs__link"><?php echo $step->get('title'); ?></a>
						</li>
						<?php $i++; ?>
					<?php } ?>

					<?php if ($event->isDraft()) { ?>
						<li class="o-tabs__item" data-step-nav data-for="history">
							<a href="javascript:void(0);" class="o-tabs__link"><?php echo JText::_('COM_ES_APPROVAL_HISTORY'); ?></a>
						</li>
					<?php } ?>
				</ul>
			</div>
		</div>

		<?php echo $this->render('module', 'es-events-edit-sidebar-bottom'); ?>
	</div>

	<div class="es-content">

		<?php echo $this->render('module', 'es-events-edit-before-contents'); ?>

		<div data-events-edit-fields>
			<form method="post" action="<?php echo JRoute::_('index.php'); ?>" class="es-forms" data-form>

				<div class="tab-content">
					<?php if ($event->isDraft()) { ?>
					<div class="tab-content__item" data-step-content data-id="history">
						<div class="es-forms__group">
							<div class="es-forms__content">
								<?php echo $this->html('cluster.approvalHistory', $rejectedReasons); ?>
							</div>
						</div>
					</div>
					<?php } ?>

					<?php $i = 0; ?>
					<?php foreach($steps as $step){ ?>
						<div class="tab-content__item step-<?php echo $step->id;?> <?php echo $i == 0 ? 'is-active' : '';?>" data-step-content data-id="<?php echo $step->id; ?>">
							<div class="es-forms__group">
								<div class="es-forms__content">
									<div class="o-form-horizontal">
									<?php if($step->fields){ ?>
										<?php foreach($step->fields as $field){ ?>
											<?php echo $this->loadTemplate('site/registration/steps/field', array('field' => $field, 'errors' => '')); ?>
										<?php } ?>
									<?php } ?>
									</div>
								</div>
							</div>
						</div>
						<?php $i++; ?>
					<?php } ?>
				</div>

				<div class="es-forms__actions">
					<div class="o-form-actions">
						<?php if (!$event->isPending()) { ?>
							<?php if ($event->hasRecurringEvents()) { ?>
							<div class="o-alert o-alert--warning"><?php echo JText::_('COM_EASYSOCIAL_EVENTS_EDIT_RECURRING_EVENT_APPLY_INFO'); ?></div>
							<?php } ?>

							<?php if ($event->isRecurringEvent()) { ?>
							<div class="o-alert o-alert--warning"><?php echo JText::sprintf('COM_EASYSOCIAL_EVENTS_EDIT_RECURRING_EVENT_APPLY_THIS_INFO', $event->getParent()->getPermalink(true, false, 'edit')); ?></div>
							<?php } ?>

							<div class="t-lg-pull-left">
								<a href="<?php echo $event->getPermalink();?>" class="btn btn-es-default-o"><?php echo JText::_('COM_ES_CANCEL'); ?></a>
							</div>

							<div class="t-lg-pull-right">
								<?php if ($event->hasRecurringEvents() || $event->isRecurringEvent()) { ?>

									<?php if ($event->hasRecurringEvents()) { ?>
										<button type="button" class="btn btn-es-primary-o" data-edit-save="all"><?php echo JText::_('COM_EASYSOCIAL_EVENTS_EDIT_RECURRING_EVENT_APPLY_ALL_BUTTON'); ?></button>
									<?php } ?>

									<button type="button" class="btn btn-es-primary-o" data-edit-save><?php echo JText::_('COM_EASYSOCIAL_EVENTS_EDIT_RECURRING_EVENT_APPLY_THIS_BUTTON'); ?></button>
								<?php } else { ?>
									<button type="button" class="btn btn-es-primary-o" data-task="update" data-edit-save>
										<?php echo JText::_('COM_ES_UPDATE');?>
									</button>
								<?php } ?>
							</div>
						<?php } else { ?>
							<div class="t-lg-pull-left">
								<a href="<?php echo ESR::manage(array('layout' => 'clusters'));?>" class="btn btn-es-default-o"><?php echo JText::_('COM_EASYSOCIAL_CLOSE_BUTTON'); ?></a>
							</div>

							<div class="t-lg-pull-right">
								<button type="button" class="btn btn-es-danger-o" data-task="reject" data-edit-save><?php echo JText::_('COM_EASYSOCIAL_REJECT_BUTTON');?></button>
								<button type="button" class="btn btn-es-primary-o" data-task="approve" data-edit-save><?php echo JText::_('COM_EASYSOCIAL_APPROVE_BUTTON');?></button>
							</div>
						<?php } ?>
					</div>
				</div>

				<input type="hidden" name="conditionalRequired" value="<?php echo ES::string()->escape($conditionalFields); ?>" data-conditional-check />
				<input type="hidden" name="Itemid" value="<?php echo JRequest::getVar('Itemid');?>" />
				<input type="hidden" name="option" value="com_easysocial" />
				<input type="hidden" name="controller" value="events" />
				<input type="hidden" name="task" value="update" data-task-hidden-input />
				<input type="hidden" name="id" value="<?php echo $event->id;?>" />
				<input type="hidden" name="applyRecurring" value="0" />

				<?php if ($event->isPending()) { ?>
					<input type="hidden" name="moderate" value="1" />
				<?php } ?>
				<?php echo JHTML::_('form.token'); ?>
			</form>
		</div>

		<?php echo $this->render('module', 'es-events-edit-after-contents'); ?>
	</div>
</div>
