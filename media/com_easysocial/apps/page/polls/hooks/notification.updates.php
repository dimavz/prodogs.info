<?php
/**
* @package      EasySocial
* @copyright    Copyright (C) 2010 - 2016 Stack Ideas Sdn Bhd. All rights reserved.
* @license      GNU/GPL, see LICENSE.php
* EasySocial is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined('_JEXEC') or die('Unauthorized Access');

class SocialPageAppPollsHookNotificationUpdates
{
    /**
     * Processes comment notifications
     *
     * @since   2.0
     * @access  public
     * @param   string
     * @return
     */
    public function execute(SocialTableNotification &$item)
    {
        // Get the page item
        $page = ES::page($item->context_ids);

        // [Page] - For Page poll creator will always be the Page itself
        $item->setActorAlias($page);
        
        // Format the title
        if ($item->cmd == 'pages.polls.create') {

            $item->title = JText::sprintf('APP_PAGE_STORY_POLLS_CREATED_IN_PAGE', $page->getName());

            $item->image = $page->getAvatar();

            return $item;
        }

        return $item;
    }
}
