<?php
/**
* @package		EasySocial
* @copyright	Copyright (C) 2010 - 2016 Stack Ideas Sdn Bhd. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* EasySocial is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined('_JEXEC') or die('Unauthorized Access');
?>
<?php if ($pages) { ?>
    <ul class="g-list-inline">
    <?php foreach ($pages as $page) { ?>
        <li class="t-lg-mb--md t-lg-mr--md">
            <a href="<?php echo $page->getPermalink();?>" class="o-avatar"
            data-es-provide="tooltip"
            data-original-title="<?php echo $page->getName();?>"
            data-placement="bottom">
                <div class="embed-responsive-item">
                    <img src="<?php echo $page->getAvatar(SOCIAL_AVATAR_MEDIUM);?>" alt="<?php echo $this->html('string.escape', $page->getName());?>" />
                </div>
            </a>
        </li>
    <?php } ?>
    </ul>
<?php } else { ?>
<div class="t-text--muted">
    <?php echo $emptyMessage; ?>
</div>
<?php } ?>