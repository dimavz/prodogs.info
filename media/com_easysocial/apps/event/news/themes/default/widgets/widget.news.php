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
<div class="es-side-widget is-module">
	<div class="es-side-widget__hd">
		<div class="es-side-widget__title">
			<?php echo JText::_('COM_ES_ANNOUNCEMENTS'); ?>

			<span class="es-side-widget__label">(<?php echo $total; ?>)</span>
		</div>
	</div>

	<div class="es-side-widget__bd">
		<?php if ($items) { ?>
		<ul class="o-nav o-nav--stacked">
			<?php foreach ($items as $item) { ?>
			<li class="o-nav__item ">
				<a href="<?php echo ESR::apps(array('layout' => 'canvas', 'customView' => 'item', 'uid' => $event->getAlias(), 'type' => SOCIAL_TYPE_EVENT, 'id' => $app->getAlias(), 'newsId' => $item->id), false); ?>">
					<?php echo $item->title; ?>
				</a>
				<div class="t-text--muted t-fs--sm"><?php echo ES::date($item->created)->format(JText::_('DATE_FORMAT_LC4')); ?></div>
			</li>
			<?php } ?>
		</ul>
		<?php } else { ?>
			<?php echo $this->html('widget.emptyBlock', 'APP_NEWS_WIDGET_NO_ANNOUNCEMENTS_YET'); ?>
		<?php } ?>

		<?php if ($total > count($items)) { ?>
		<div>
			<?php echo $this->html('widget.viewAll', 'COM_ES_VIEW_ALL', $event->getAppPermalink('news')); ?>
		</div>
		<?php } ?>
	</div>
</div>