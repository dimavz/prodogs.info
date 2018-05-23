<?php
/**
 * Created by PhpStorm.
 * User: sergey
 * Date: 3/29/17
 * Time: 10:53
 */

$data = $displayData;
?>
	<div class="page-header"><h2><?php echo $data->params->get('comments.title') ?></h2></div>

<?php if(!empty($data->descr)): ?>
	<?php echo $data->descr; ?>
<?php endif; ?>

<?php if($data->item->params->get('comments.comments_access_post', 1) === 0 && $data->records['total']): ?>
	<div class="alert alert-warning"><?php echo JText::_('CMSG_COMMENTSDISABLED') ?></div>
<?php endif; ?>

<?php if(!empty($data->rating)): ?>
	<div id="rating-block" class="pull-right">
		<?php echo JText::_('CTOTALRATING') ?>:
		<?php echo RatingHelp::loadRating($data->params->get('comments.tmpl_rating', 'default'), $data->rating, 0, 0, 'Cobalt.ItemRatingCallBack', 0, 0) ?>
	</div>
<?php endif; ?>

<?php if(!empty($data->url_new) && in_array($data->params->get('comments.new_position', 2), array(
		1,
		3
	))
): ?>
	<a class="<?php echo $data->params->get('comments.new_class', 'btn btn-primary btn-large') ?>"
	   href="<?php echo JRoute::_($data->url_new) ?>">
		<?php echo $data->params->get('comments.button') ?>
	</a>
<?php endif; ?>


<?php echo $data->records['html'] ?>


<?php if(!empty($data->url_new) && in_array($data->params->get('comments.new_position', 2), array(
		2,
		3
	))
): ?>
	<a class="<?php echo $data->params->get('comments.new_class', 'btn btn-primary btn-large') ?>"
	   href="<?php echo JRoute::_($data->url_new) ?>">
		<?php echo $data->params->get('comments.button') ?>
	</a>
<?php endif; ?>

<?php if(!empty($data->url_all)): ?>
	<a class="btn btn-large" href="<?php echo JRoute::_($data->url_all) ?>">
		<?php echo $data->params->get('comments.button2') ?>
	</a>
<?php endif; ?>