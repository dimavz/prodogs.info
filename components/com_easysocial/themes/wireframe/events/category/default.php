<?php
/**
* @package      EasySocial
* @copyright    Copyright (C) 2010 - 2018 Stack Ideas Sdn Bhd. All rights reserved.
* @license      GNU/GPL, see LICENSE.php
* EasySocial is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined('_JEXEC') or die('Unauthorized Access');
?>
<div class="es-events-category" data-events-category>
	<div class="es-cat-header">
		<div class="es-cat-header__hd">
			<div class="o-flag">
				<div class="o-flag__image o-flag--top">
					<a href="" class="o-avatar es-cat-header__avatar">
						<img src="<?php echo $category->getAvatar();?>" alt="<?php echo $this->html('string.escape', $category->get('title'));?>">
					</a>
				</div>
				<div class="o-flag__body">
					<div class="es-cat-header__hd-content-wrap">
						<div class="o-grid__cell">
							<div class="es-cat-header__title-link"><?php echo $category->get('title'); ?></div>
							<div class="es-cat-header__desc">
								<?php echo $category->get('description'); ?>
							</div>

							<?php if ($childs) { ?>
								<b><?php echo JText::_('COM_ES_CLUSTER_SUBCATEGORIES'); ?>: </b>
								<ul class="g-list-inline g-list-inline--delimited">
									<?php if (count($childs) > 5) { ?>
										<?php for ($i = 0; $i < 4; $i++) { ?>
										<li data-breadcrumb="/">
											<a href="<?php echo $childs[$i]->getPermalink(); ?>"><?php echo $childs[$i]->getTitle(); ?></a>
										</li>
										<?php } ?>

										<li data-breadcrumb="/" class="g-list-inline__last-item">
											<div class="btn-group">
												<a href="javascript:void(0);" class=" dropdown-toggle_" data-bs-toggle="dropdown">
													<?php echo JText::_('COM_EASYSOCIAL_READMORE'); ?> <i class="i-chevron i-chevron--down"></i>
												</a>

												<ul class="dropdown-menu dropdown-menu-right">
													<?php for ($i=4; $i < count($childs); $i++) { ?>
														<li>
															<a href="<?php echo $childs[$i]->getPermalink(); ?>"><?php echo $childs[$i]->getTitle(); ?></a>
														</li>
													<?php } ?>
												</ul>
											</div>
										</li>
									<?php } else { ?>
										<?php foreach ($childs as $child) { ?>
											<li data-breadcrumb="/">
												<a href="<?php echo $child->getPermalink(); ?>"><?php echo $child->getTitle(); ?></a>
											</li>
										<?php } ?>
									<?php } ?>
								</ul>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="es-cat-header__ft">
			<div class="pull-left">
				<ul class="g-list-inline g-list-inline--space-right">
					<li>
						<i class="fa fa-users"></i> <?php echo JText::sprintf(ES::string()->computeNoun('COM_EASYSOCIAL_EVENTS_TOTAL_EVENTS', $totalEvents), $totalEvents); ?>
					</li>
					<li>
						<i class="fa fa-photo"></i> <?php echo JText::sprintf(ES::string()->computeNoun('COM_EASYSOCIAL_EVENTS_TOTAL_ALBUMS', $totalAlbums), $totalAlbums); ?>
					</li>
				</ul>
			</div>

			<?php if ($this->access->allowed('events.create', true) && !$this->access->intervalExceeded('events.limit', $this->my->id) && $category->hasAccess('create', $this->my->profile_id) && !$category->container) { ?>
			<a href="<?php echo ESR::events(array('controller' => 'events', 'task' => 'selectCategory', 'category_id' => $category->id));?>" class="btn btn-es-primary btn-sm pull-right">
				<?php echo JText::_('COM_EASYSOCIAL_EVENTS_CREATE_EVENT'); ?>
			</a>
			<?php } ?>

		</div>
	</div>

	<div class="es-container t-lg-mt--xl">

		<div class="es-sidebar" data-sidebar>

			<!-- do not remove this element. This element is needed for the stream loodmore to work properly -->
			<div data-filter-item data-type="eventcategory" data-id="<?php echo $category->id;?>" class="active" data-stream-identifier="<?php echo $stream->getIdentifier(); ?>"></div>

			<?php echo $this->render('module', 'es-profiles-sidebar-top' , 'site/dashboard/sidebar.module.wrapper'); ?>

			<?php echo $this->includeTemplate('site/events/category/widgets/events'); ?>
			<?php echo $this->includeTemplate('site/events/category/widgets/albums'); ?>
			<?php echo $this->includeTemplate('site/events/category/widgets/guests'); ?>

			<?php echo $this->render('module', 'es-profiles-sidebar-bottom', 'site/dashboard/sidebar.module.wrapper'); ?>
		</div>

		<div class="es-content">
			<div class="es-snackbar">
				<h1 class="es-snackbar__title"><?php echo JText::_('COM_EASYSOCIAL_EVENTS_RECENT_UPDATES'); ?></h1>
			</div>

			<div class="es-content-wrap" data-es-event-item-content>
				<?php echo $stream->html();?>
			</div>
		</div>
	</div>

</div>
