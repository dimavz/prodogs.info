<?php defined('_JEXEC') or die; ?>

<div class="joms-chat__input-wrapper">
    <div v-if="attachment" class="joms-chat__input-preview">
        <img v-if="attachment.type === 'image'" v-bind:src="attachment.url" alt="placeholder" />
        <div v-if="attachment.type === 'file'"><strong>{{ attachment.name }}</strong></div>
        <i class="fa fa-times" v-on:click.prevent.stop="removeAttachment"></i>
    </div>
    <input type="text" placeholder="<?php echo JText::_('COM_COMMUNITY_CHAT_TYPE_YOUR_MESSAGE_HERE'); ?>" v-on:keyup.enter="submit" />
    <div class="joms-chat__input-actions">
        <a href="#" v-on:click.prevent.stop="attachFile">
            <i class="fa fa-file-archive-o"></i>
        </a>
        <a href="#" v-on:click.prevent.stop="attachImage">
            <i class="fa fa-camera"></i>
        </a>
    </div>
</div>
