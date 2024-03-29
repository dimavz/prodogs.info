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

<div class="es-container" data-es-container>
	<div class="es-sidebar" data-sidebar>
		<div class="es-side-widget">
			<?php echo $this->html('widget.title', 'COM_ES_STATISTICS'); ?>

			<div class="es-side-widget__bd">
				<ul class="o-nav o-nav--stacked">
					<li class="o-nav__item t-lg-mb--sm">
						<span class="o-nav__link t-text--muted">
							<i class="es-side-widget__icon fa fa-tasks t-lg-mr--md"></i>
							<b><?php echo $totalPosts;?></b> <?php echo JText::_('APP_KUNENA_TOTAL_POSTS'); ?>
						</span>
					</li>
					<li class="o-nav__item t-lg-mb--sm">
						<span class="o-nav__link t-text--muted">
							<i class="es-side-widget__icon fa fa-users t-lg-mr--md"></i>
							<b><?php echo $totalReplies;?></b> <?php echo JText::_('APP_KUNENA_TOTAL_REPLIES'); ?>
						</span>
					</li>
					<li class="o-nav__item t-lg-mb--sm">
						<span class="o-nav__link t-text--muted">
							<i class="es-side-widget__icon fa fa-thumbs-o-up t-lg-mr--md"></i>
							<b><?php echo $thanks;?></b> <?php echo JText::_('APP_KUNENA_THANKS'); ?>
						</span>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="es-content">
		<div class="app-kunena <?php echo !$posts ? 'is-empty' : '';?>">
			<?php if ($posts) { ?>
				<?php foreach ($posts as $topic) { ?>
					<?php echo $this->loadTemplate('apps:/user/kunena/themes/default/profile/item', array('topic' => $topic, 'kunenaTemplate' => $kunenaTemplate)); ?>
				<?php } ?>
			<?php } ?>

			<?php echo $this->html('html.emptyBlock', JText::sprintf('APP_KUNENA_EMPTY_POSTS', $user->getName()), 'fa-info-circle'); ?>
		</div>
	</div>
</div>
