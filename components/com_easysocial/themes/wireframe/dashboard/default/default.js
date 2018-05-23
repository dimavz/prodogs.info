
EasySocial.require()
.script('site/dashboard/default')
.done(function($){

	$('[data-es-dashboard]').implement(EasySocial.Controller.Dashboard, {
		title: "<?php echo $title;?>"
	});

	// Implement puller on the dashboard
	<?php if ($this->isMobile()) { ?>
	EasySocial.require()
	.script('site/vendors/puller')
	.done(function($) {

		window.initPuller = function() {
			return window.es.puller.init({
									mainElement: '[data-story-form]',
									triggerElement: '[data-story-form]',
									onRefresh: function (done) {
										setTimeout(function () {
											var controller = $('body').controller(EasySocial.Controller.System.Notifier);

											controller.check(true, true);
											done();

										}, 150);
									}
								});
		};

		var puller = this.initPuller();
	});
	<?php } ?>
});
