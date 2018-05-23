<?php
include_once JPATH_ROOT . DIRECTORY_SEPARATOR . 'components/com_cobalt/library/php/cobaltcomments.php';

class CobaltCommentsCobalt extends CobaltComments
{

	public function getNum($type, $item)
	{
		static $out = array();

		if(isset($out[$item->id]))
		{
			return $out[$item->id];
		}

		$db    = JFactory::getDbo();
		$query = $db->getQuery(TRUE);
		$query->select("count(*)");
		$query->from("#__js_res_record");
		$query->where("parent_id = " . $item->id);
		$query->where("parent = 'com_cobalt'");
		$query->where("published = 1");
		$query->where("hidden = 0");
		$db->setQuery($query);

		$out[$item->id] = $db->loadResult();

		return $out[$item->id];
	}

	public function getComments($type, $item)
	{
		$data = json_decode('{}');
		$data->params = $type->params;

		if(!$data->params->get('comments.type_id') || !$data->params->get('comments.section_id'))
		{
			JError::raiseNotice(500, 'Not all parameters set to display comments');

			return;
		}

		$data->user   = JFactory::getUser();
		if(!in_array($data->params->get('comments.access', 1), $data->user->getAuthorisedViewLevels()))
		{
			return;
		}

		$data->item    = $item;
		$data->app     = JFactory::getApplication();
		$data->stype   = ItemsStore::getType($data->params->get('comments.type_id'));
		$data->section = ItemsStore::getSection($data->params->get('comments.section_id'));

		$data->app->input->set('parent_id', $data->item->id);
		$data->app->input->set('parent', 'com_cobalt');
		$data->app->input->set('parent_user_id', $data->item->user_id);
		$data->app->input->set('parent_see_special', $data->params->get('comments.author_see'));


		include_once JPATH_ROOT . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_cobalt' . DIRECTORY_SEPARATOR . 'api.php';
		$api           = new CobaltApi();
		$data->records = $api->records($data->section->id, 'children',
			$data->params->get('comments.orderby'), array($data->stype->id), NULL,
			$data->params->get('comments.catid', 0), $data->params->get('comments.limit', 5),
			$data->params->get('comments.tmpl_list'));

		$data->app->input->set('parent', 0);
		$data->app->input->set('parent_id', 0);

		if((in_array($data->params->get('comments.button_access'), $data->user->getAuthorisedViewLevels()) ||
				($data->params->get('comments.button_access') == -1 && $data->item->user_id && $data->user->get('id') == $data->item->user_id)) &&
			$data->item->params->get('comments.comments_access_post', 1))
		{
			$data->url_new = 'index.php?option=com_cobalt&view=form&section_id=' . $data->section->id;
			$data->url_new .= '&type_id=' . $data->stype->id . ':' . JApplicationHelper::stringURLSafe($data->stype->name);
			if($data->params->get('comments.catid', 0))
			{
				$data->url_new .= '&cat_id=' . $data->params->get('comments.catid', 0);
			}
			$data->url_new .= '&parent_id=' . $data->item->id;
			$data->url_new .= '&Itemid=' . $data->section->params->get('general.category_itemid');
			$data->url_new .= '&return=' . Url::back();
		}
		else
		{
			if($data->records['total'] == 0)
			{
				return;
			}
		}

		if($data->records['total'] > $data->params->get('comments.limit', 5))
		{
			$data->url_all = 'index.php?option=com_cobalt&view=records&section_id=' . $data->section->id;
			$data->url_all .= '&parent_id=' . $data->item->id;
			$data->url_all .= '&parent=' . $data->app->input->get('option');
			$data->url_all .= '&view_what=children';
			$data->url_all .= '&page_title=' . urlencode(base64_encode(JText::sprintf($data->params->get('comments.title2', 'All discussions of %s'), $data->item->title)));
			$data->url_all .= '&Itemid=' . $data->section->params->get('general.category_itemid');
			$data->url_all .= '&return=' . Url::back();
		}

		if($data->params->get('comments.rating') && $data->records['total'])
		{
			$db    = JFactory::getDbo();
			$query = $db->getQuery(TRUE);
			$query->select("AVG(votes_result)");
			$query->from("#__js_res_record");
			$query->where("parent_id = " . $data->item->id);
			$query->where("parent = 'com_cobalt'");
			if(CStatistics::hasUnPublished($data->section->id))
			{
				$query->where("published = 1");
			}
			$query->where("hidden = 0");
			$db->setQuery($query);

			$data->rating = $db->loadResult();
		}

		$data->descr = $data->params->get('comments.descr');
		if($data->descr)
		{
			if(strlen($data->descr) == strlen(strip_tags($data->descr)))
			{
				$data->descr = "<p>{$data->descr}</p>";
			}
		}


		$tmpl = $data->params->get('comments.layout', 'default');
		return JLayoutHelper::render($tmpl, $data, JPATH_ROOT . '/components/com_cobalt/library/php/comments/cobalt/layouts');
	}

	public function getIndex($type, $item)
	{
		$db = JFactory::getDbo();

		$db->setQuery("SELECT fieldsdata FROM #__js_res_record WHERE published = 1 AND hidden = 0 AND parent_id = {$item->id} AND parent = 'com_cobalt'");
		$list = $db->loadColumn();

		return implode(', ', $list);
	}

	public function getLastComment($type, $item)
	{
		if(self::enable())
		{
			$comment = JComments::getLastComment($item->id, 'com_cobalt');

			return 'User "' . $comment->name . '" wrote "' . $comment->comment . '" (' . $comment->date . ')';
		}
	}
}

