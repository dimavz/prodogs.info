EasySocial.ready(function($) {

// Create recaptcha task
var task = [
	'recaptcha_<?php echo $uid;?>',
	{
		'sitekey': '<?php echo $key;?>',
		'theme': '<?php echo $theme;?>'
	}
];

// Render recaptcha form
var runTask = function() {

	// Only run if the task really exists
	if (task) {
		grecaptcha.render.apply(grecaptcha, task);
	}
}

// If grecaptcha is not ready, add to task queue
if (!window.grecaptcha) {
	var tasks = window.recaptchaTasks || (window.recaptchaTasks = []);
	tasks.push(task);
// Else run task straightaway
} else {
	runTask(task);
}

// If recaptacha script is not loaded
if (!window.recaptchaScriptLoaded) {
	EasySocial.require().script("//www.google.com/recaptcha/api.js?onload=recaptchaCallback&render=explicit&hl=<?php echo $language;?>");
	window.recaptchaScriptLoaded = true;
}

window.recaptchaCallback = function() {

	if (tasks) {
		// var task;
		while (task = tasks.shift()) {
			runTask(task);
		}

		runTask(task);
	}
};

});