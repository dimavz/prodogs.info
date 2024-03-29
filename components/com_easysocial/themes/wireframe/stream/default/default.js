
EasySocial.require()
.script('site/stream/stream')
.done(function($){

	$('[data-es-streams]').implement('EasySocial.Controller.Stream', {
		checknew: <?php echo $this->config->get('stream.updates.enabled') ? 'true' : 'false'; ?>,
		source: "<?php echo $view; ?>",
		sourceId: "<?php echo JRequest::getVar('id', ''); ?>",
		autoload: <?php echo $autoload ? 'true' : 'false'; ?>,
		commentOptions: {
				'attachments': <?php echo $this->config->get('comments.attachments') ? 'true' : 'false';?>,
				'errorMessage': "<?php echo JText::_('COM_ES_COMMENT_ERROR_MESSAGE'); ?>"
		}
	});
});
