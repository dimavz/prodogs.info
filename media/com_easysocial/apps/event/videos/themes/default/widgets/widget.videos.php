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
defined('_JEXEC') or die('Unauthorized Access');
?>
<div class="es-side-widget">
	<div class="es-side-widget__hd">
		<div class="es-side-widget__title">
			<?php echo JText::_('COM_EASYSOCIAL_VIDEOS_FILTERS_RECENT_VIDEOS'); ?>
			<span class="es-side-widget__title-counter">(<?php echo $totalVideos;?>)</span>
		</div>
	</div>
	<div class="es-side-widget__bd">
		<ul class="o-nav o-nav--stacked">
			<?php if ($videos) { ?>
				<?php foreach ($videos as $video) { ?>
				<li>
					<a href="<?php echo $video->getPermalink();?>" data-es-video="<?php echo $video->id; ?>" class="">
						<div class="o-flag">
							<div class="o-flag__image o-flag--top">
								<img class="widget-video-preview" src="<?php echo $video->getThumbnail();?>" alt="<?php echo $this->html('string.escape' , $video->getTitle());?>" />
							</div>
							<div class="o-flag__body">
								<div class="es-side-widget__bd-title"><?php echo $video->getTitle(); ?></div>
							</div>
							<div class="es-side-widget__bd-desc"><?php echo $video->getDuration();?></div>
						</div>
					</a>
				</li>
				<?php } ?>
			<?php } else { ?>
			<li>
				<div class="t-fs--sm">
					<?php echo JText::_('COM_EASYSOCIAL_WIDGETS_NO_VIDEOS_CURRENTLY'); ?>
				</div>
			</li>
			<?php } ?>
		</ul>

		<?php if ($videos) { ?>
		<div>
			<a class="es-side-widget-btn-showmore" href="<?php echo ESR::videos(array('uid' => $group->getAlias(), 'type' => SOCIAL_TYPE_GROUP));?>"><?php echo JText::_('COM_ES_VIEW_ALL');?></a>
		</div>
		<?php } ?>
	</div>
</div>
