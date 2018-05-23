
EasySocial.ready(function($) {

	$.ajax({
		url: "<?php echo SOCIAL_UPDATER_LANGUAGE;?>",
		jsonp: "callback",
		dataType: "jsonp",
		data: {
			"key": "<?php echo $this->config->get('general.key');?>",
			"domain": "<?php echo $domain;?>"
		},
		success: function(data) {

			// If there is an error with the response, we should display the error message here            
			if (data.code == 400) {
				$('[data-languages-wrapper]').addClass('has-error');
				$('[data-languages-error]').html(data.error);

				return;
			}

			// Store the data on the server if it was successful
			if (data.code == 200) {
				EasySocial.ajax('admin/controllers/languages/update', {
					"languages": data.languages
				}).done(function() {
					window.location = '<?php echo rtrim(JURI::root() , '/');?>/administrator/index.php?option=com_easysocial&view=languages';
				});
			}

		}
	});


});