<?php
/**
 * Cobalt by MintJoomla
 * a component for Joomla! 1.7 - 2.5 CMS (http://www.joomla.org)
 * Author Website: http://www.mintjoomla.com/
 * @copyright Copyright (C) 2012 MintJoomla (http://www.mintjoomla.com). All rights reserved.
 * @license GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */
defined('_JEXEC') or die('Restricted access');
echo JRoute::_($item->url);

if(!class_exists('CarticleHelper'))
{
	class CarticleHelper
	{

		var $k = 0;

		public function isnext($obj)
		{
			return (isset($obj->items[$this->k]));
		}
		public function display(&$obj)
		{
			if(empty($obj->items[$this->k]))
			{
				return;
			}
			$i = $o = 0;
			$params = $obj->tmpl_params['list'];

			/* Ярлыки и иконки полей */
			// Флаг для отображения ярлыков полей
			$show_labels = ($params->get('tmpl_params.show_labels')==1)? TRUE: FALSE;
			
			// Флаг для отображения иконок полей
			$show_icons = ($params->get('tmpl_params.show_icons')==1)? TRUE: FALSE;

			/* Параметры вгруппировки полей*/
			// Значения $item_grouping_type
			// Значение 0 - не группировать
			// Значение 1 - группировать как Табы
			// Значение 2 - группировать как Слайдеры
			// Значение 3 - группировать как Филдсеты
			//$item_grouping_type = $params->get('tmpl_params.item_grouping_type');

			$item = $obj->items[$this->k];
			unset($obj->items[$this->k++]);
			?>
			<article class="has-context<?php if($item->featured) {echo ' featured';}?>">
				<div class="pull-right controls">
					<div class="btn-group" style="display: none;">
						<?php echo HTMLFormatHelper::bookmark($item, $obj->submission_types[$item->type_id], $params);?>
						<?php echo HTMLFormatHelper::follow($item, $obj->section);?>
						<?php echo HTMLFormatHelper::repost($item, $obj->section);?>
						<?php echo HTMLFormatHelper::compare($item, $obj->submission_types[$item->type_id], $obj->section);?>
						<?php if($item->controls):?>
							<a href="#" data-toggle="dropdown" class="dropdown-toggle btn btn-mini">
								<?php echo HTMLFormatHelper::icon('gear.png');  ?>
							</a>
							<ul class="dropdown-menu">
								<?php echo list_controls($item->controls);?>
							</ul>
						<?php endif;?>
					</div>
				</div>
				<h2>
					<?php if($params->get('tmpl_core.item_title')):?>
						<?php if(in_array($params->get('tmpl_core.item_link'), $obj->user->getAuthorisedViewLevels())):?>
						<a <?php echo $item->nofollow ? 'rel="nofollow"' : '';?> href="<?php echo JRoute::_($item->url);?>">
							<?php echo $item->title?>
						</a>
						<?php else :?>
							<?php echo $item->title?>
						<?php endif;?>
					<?php endif;?>
					<?php echo CEventsHelper::showNum('record', $item->id);?>
				</h2>

				<?php if($params->get('tmpl_core.item_rating')):?>
					<div class="content_rating">
						<?php echo $item->rating;?>
					</div>
				<?php endif;?>
				<div class="clearfix"></div>
				<!-- Если в настройках шаблона включено отображение ярлыков и иконок -->
				<?php if($show_labels && $show_icons):?><!--"Показать ярлыки полей и иконки полей"-->
				
				<!-- Выводим поля без группировки -->
				<?php if(isset($item->fields_by_groups[null])):?>
					<dl class="dl-horizontal fields-list">
						<?php foreach ($item->fields_by_groups[null] as $field_id => $field):?>
							<dt id="<?php echo 'dt-'.$field_id; ?>" class="<?php echo $field->class;?>">
								<?php if($field->params->get('core.show_lable') > 1):?>
									<label id="<?php echo $field->id;?>-lbl">
										<?php echo $field->label; ?>
										<?php if($field->params->get('core.icon')):?>
											<?php echo HTMLFormatHelper::icon($field->params->get('core.icon'));  ?>
										<?php endif;?>
									</label>
									<?php if($field->params->get('core.label_break') > 1):?>
									<?php endif;?>
								<?php endif;?>
							</dt>
							<dd id="<?php echo 'dd-'.$field_id; ?>" class="<?php echo $field->fieldclass;?><?php echo ($field->params->get('core.label_break') > 1 ? ' line-brk' : NULL) ?>">
								<?php echo $field->result; ?>
							</dd>
						<?php endforeach;?>
					</dl>
					<?php unset($item->fields_by_groups[null]);?>
				<?php endif;?>
				
				<!-- Формируем вкладки Nav tabs -->
				<?php if(in_array($params->get('tmpl_params.item_grouping_type', 0), array(1)) && count($item->fields_by_groups)):?>
				<div class="clearfix"></div>
				<div class="tabbable <?php echo $params->get('tmpl_params.tabs_position');  ?>">
					<ul class="nav <?php echo $params->get('tmpl_params.tabs_style', 'nav-tabs');  ?>" id="tabs-list">
						<?php if(isset($item->fields_by_groups)):?>
							<?php foreach ($item->fields_by_groups as $group_id => $fields) :?>
								<li>
									<a href="#tab-<?php echo $o++?>" data-toggle="tab" aria-controls="<?php echo JText::_($group_id) ?>">
										<?php if(!empty($item->field_groups[$group_id]['icon']) && $params->get('tmpl_params.show_groupicon', 1)): ?>
										<?php echo HTMLFormatHelper::icon($item->field_groups[$group_id]['icon']) ?>
									<?php endif; ?>
									<?php echo JText::_($group_id) ?>
								</a>
							</li>
						<?php endforeach;?>
					<?php endif;?>
				</ul>
				<?php endif;?><!-- Конец формировки Nav tabs -->
				
				<!-- Формируем поля вкладок Tab panes -->
				<?php if(isset($item->fields_by_groups)):?>
					<div class="tab-content" id="tabs-box">
						<?php $t=0; ?>		
						<?php foreach ($item->fields_by_groups as $group_name => $fields) :?>
							<div class="tab-pane" id='tab-<?php echo $t++; ?>'>
								<dl class="dl-horizontal fields-list">
									<?php foreach ($fields as $field_id => $field):?>
										<dt id="<?php echo 'dt-'.$field_id; ?>" class="<?php echo $field->class;?>">
											<?php if($field->params->get('core.show_lable') > 1):?>
												<label id="<?php echo $field->id;?>-lbl">
													<?php echo $field->label; ?>
													<?php if($field->params->get('core.icon')):?>
														<?php echo HTMLFormatHelper::icon($field->params->get('core.icon'));  ?>
													<?php endif;?>
												</label>
												<?php if($field->params->get('core.label_break') > 1):?>
												<?php endif;?>
											<?php endif;?>
										</dt>
										<dd id="<?php echo 'dd-'.$field_id; ?>" class="<?php echo $field->fieldclass;?><?php echo ($field->params->get('core.label_break') > 1 ? ' line-brk' : NULL) ?>">
											<?php echo $field->result; ?>
										</dd>
									<?php endforeach;?>
								</dl>
							</div><!-- end "tab-pane" -->
						<?php endforeach;?>
					</div><!-- end  "tab-content"-->
				<?php endif;?>
			</div><!-- end tabbable -->

			<?php elseif ($show_labels):?><!-- "Показать только ярлыки полей" -->

			<?php elseif ($show_icons):?><!-- "Показать только иконки полей" -->

			<?php else: ?><!-- "НЕ показать ярлыки полей и иконки полей" -->

			<?php endif;?><!-- Конец блока отображение ярлыков и иконок -->



			<?php
			$category = array();
			$author = array();
			$details = array();

			if($params->get('tmpl_core.item_categories') && $item->categories_links)
			{
				$category[] = sprintf('%s: %s', (count($item->categories_links) > 1 ? JText::_('CCATEGORIES') : JText::_('CCATEGORY')), implode(', ', $item->categories_links));
			}
			if($params->get('tmpl_core.item_user_categories') && $item->ucatid)
			{
				$category[] = sprintf('%s: %s', JText::_('CUSERCAT'), $item->ucatname_link);
			}
			if($params->get('tmpl_core.item_author') && $item->user_id)
			{
				$author[] = JText::sprintf('CWRITTENBY', CCommunityHelper::getName($item->user_id, $obj->section));
			}
			if($params->get('tmpl_core.item_author_filter'))
			{
				$author[] = FilterHelper::filterButton('filter_user', $item->user_id, NULL, JText::sprintf('CSHOWALLUSERREC', CCommunityHelper::getName($item->user_id, $obj->section, array('nohtml' => 1))), $obj->section);
			}
			if($params->get('tmpl_core.item_ctime'))
			{
				$author[] = JText::sprintf('CONDATE', JHtml::_('date', $item->created, $params->get('tmpl_core.item_time_format')));
			}

			if($params->get('tmpl_core.item_mtime'))
			{
				$author[] = sprintf('%s: %s', JText::_('CCHANGEON'), JHtml::_('date', $item->modify, $params->get('tmpl_core.item_time_format')));
			}

			if($params->get('tmpl_core.item_extime'))
			{
				$author[] = sprintf('%s: %s', JText::_('CEXPIREON'), $item->expire ? JHtml::_('date', $item->expire, $params->get('tmpl_core.item_time_format')) : JText::_('CNEVER'));
			}

			if($params->get('tmpl_core.item_type'))
			{
				$details[] = sprintf('%s: %s %s', JText::_('CTYPE'), $item->type_name, ($params->get('tmpl_core.item_type_filter') ? FilterHelper::filterButton('filter_type', $item->type_id, NULL, JText::sprintf('CSHOWALLTYPEREC', $item->type_name), $obj->section) : NULL));
			}
			if($params->get('tmpl_core.item_hits'))
			{
				$details[] = sprintf('%s: %s', JText::_('CHITS'), $item->hits);
			}
			if($params->get('tmpl_core.item_comments_num'))
			{
				$details[] = sprintf('%s: %s', JText::_('CCOMMENTS'), CommentHelper::numComments($obj->submission_types[$item->type_id], $item));
			}
			if($params->get('tmpl_core.item_vote_num'))
			{
				$details[] = sprintf('%s: %s', JText::_('CVOTES'), $item->votes);
			}
			if($params->get('tmpl_core.item_favorite_num'))
			{
				$details[] = sprintf('%s: %s', JText::_('CFAVORITED'), $item->favorite_num);
			}
			if($params->get('tmpl_core.item_follow_num'))
			{
				$details[] = sprintf('%s: %s', JText::_('CFOLLOWERS'), $item->subscriptions_num);
			}
			?>

			<?php if($params->get('tmpl_core.item_readon')): ?>
				<p>
					<a class="btn btn-primary" href="<?php echo JRoute::_($item->url);?>"><?php echo JText::_('CREADMORE'); ?></a>
				</p>
			<?php endif;?>

			<?php if($category || $author || $details): ?>
				<div class="clearfix"></div>

				<div class="well well-small">
					<?php if($params->get('tmpl_core.item_author_avatar')):?>
						<div class="pull-right">
							<img class="img-polaroid" src="<?php echo CCommunityHelper::getAvatar($item->user_id, $params->get('tmpl_core.item_author_avatar_width', 40), $params->get('tmpl_core.item_author_avatar_height', 40));?>" />
						</div>
					<?php endif;?>
					<small>
						<dl>
							<?php if($category):?>
								<dt><?php echo JText::_('CCATEGORY');?></dt>
								<dd><?php echo implode(' ', $category);?></dd>
							<?php endif;?>
							<?php if($author):?>
								<dt><?php echo JText::_('Информация:');?></dt>
								<dd>
									<?php echo implode(', ', $author);?>
								</dd>
							<?php endif;?>
							<?php if($details):?>
								<dt>Активность:</dt>
								<dd class="hits">
									<?php echo implode(', ', $details);?>
								</dd>
							<?php endif;?>
						</dl>
					</small>
				</div>
			<?php endif;?>
		</article>

		<!-- Вставка Скриптов для  Табов -->
		<script type="text/javascript">
			<?php if(in_array($params->get('tmpl_params.item_grouping_type', 0), array(1))):?>
			jQuery('#tabs-list a:first').tab('show');
			<?php elseif(in_array($params->get('tmpl_params.item_grouping_type', 0), array(2))):?>
			jQuery('#tab-main').collapse('show');
		<?php endif;?>
	</script>

	<?php
}
}
}
?>


<?php
$k = 0;
$params = $this->tmpl_params['list'];
$leading = $params->get('tmpl_params.leading', 1);
$cols = $params->get('tmpl_params.blog_cols', 2);
$intro = $params->get('tmpl_params.blog_intro', 6);
$links = $params->get('tmpl_params.blog_links', 10);
$l = 0;
JHtml::_('dropdown.init');
$rows = $cols ? ceil($intro / $cols) : 0;
if($rows <= 0) $rows = 0;

$helper = new CarticleHelper();
$helper->k = 0;

$exclude = $params->get('tmpl_params.field_id_exclude');
settype($exclude, 'array');
foreach ($exclude as &$value) {
	$value = $this->fields_keys_by_id[$value];
}
$helper->exclude = $exclude;
?>
<?php if($params->get('tmpl_core.show_title_index')):?>
	<h2><?php echo JText::_('CONTHISPAGE')?></h2>
	<ul>
		<?php foreach ($this->items AS $item):?>
			<li><a href="#record<?php echo $item->id?>"><?php echo $item->title?></a></li>
		<?php endforeach;?>
	</ul>
<?php endif;?>

<style>
.dl-horizontal dd {
	margin-bottom: 10px;
}
.input-field-full {
	margin-left: 0px !important;
}
</style>


<?php if($leading && $helper->isnext($this)):?>
	<div class="items-leading">
		<?php for($i = 0; $i < $leading; $i++): ?>
			<div class="leading-<?php echo $i;?>">
				<?php echo $helper->display($this); ?>
			</div>
		<?php endfor;?>
	</div>
<?php endif;?>
<div class="clearfix"></div>

<?php if($intro && $helper->isnext($this)):?>
	<?php for($r = 0; $r < $rows; $r++):?>
		<div class="row-fluid">
			<?php for($c = 0; $c < $cols; $c++):?>
				<div class="span<?php echo round((12 / $cols));?>">
					<?php echo $helper->display($this);?>
				</div>
			<?php endfor;?>
		</div>
	<?php endfor;?>
<?php endif;?>

<?php if($links && $helper->isnext($this)):?>
	<div class="items-more">
		<h3><?php echo JText::_('CMORERECORDS')?></h3>
		<ul class="nav nav-tabs nav-stacked">
			<?php foreach ($this->items AS $item):?>
				<li class="has-context">
					<div class="pull-right controls">
						<div class="btn-group" style="display: none;">
							<?php echo HTMLFormatHelper::bookmark($item, $this->submission_types[$item->type_id], $params);?>
							<?php echo HTMLFormatHelper::follow($item, $this->section);?>
							<?php echo HTMLFormatHelper::repost($item, $this->section);?>
							<?php echo HTMLFormatHelper::compare($item, $this->submission_types[$item->type_id], $this->section);?>
							<?php if($item->controls):?>
								<a href="#" data-toggle="dropdown" class="dropdown-toggle btn btn-mini">
									<?php echo HTMLFormatHelper::icon('gear.png');  ?>
								</a>
								<ul class="dropdown-menu">
									<?php echo list_controls($item->controls);?>
								</ul>
							<?php endif;?>
						</div>
					</div>

					<a <?php echo $item->nofollow ? 'rel="nofollow"' : '';?> href="<?php echo JRoute::_($item->url);?>">
						<?php echo $item->title;?>
						<?php echo CEventsHelper::showNum('record', $item->id);?>
					</a>

				</li>
			<?php endforeach;?>
		</ul>
	</div>
<?php endif;?>

