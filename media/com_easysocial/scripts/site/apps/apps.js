EasySocial.module('site/apps/apps', function($) {

var module = this;

EasySocial.require()
.library('history')
.done(function($) {

EasySocial.Controller('Apps', {
	defaultOptions : {
		"tnc": true,

		// Content area
		"{wrapper}": "[data-wrapper]",
		"{contents}": "[data-contents]",
		"{item}": "[data-item]",

		// Filters
		"{filterItem}": "[data-filter-item]",

		// Item actions
		"{install}": "[data-install]",
		"{uninstall}": "[data-uninstall]",
		"{settings}": "[data-settings]"
	}
}, function(self, opts) { return {

	init : function() {
	},
	
	setActiveFilter: function(filterItem) {
		self.filterItem().removeClass('active');
		filterItem.addClass('active');
		filterItem.addClass('is-loading');

		self.wrapper().addClass('is-loading');

		// Find the anchor
		var anchor = filterItem.find('a');
		anchor.route();
	},

	setContents: function(contents) {
		self.wrapper().removeClass('is-loading');

		// Append the output back.
		self.contents().html(contents);
	},

	getAppId: function(element) {
		var item = self.getAppSelector(element);

		return item.data('id');
	},

	getAppSelector: function(element) {
		var item = $(element).closest(self.item.selector);

		return item;
	},

	"{filterItem} click": function(filterItem, event) {
		event.preventDefault();
		event.stopPropagation();

		// Remove the content.
		self.contents().empty();

		// Add active class to the current filter item.
		self.setActiveFilter(filterItem);

		// Get the filter type
		var type = filterItem.data("filter-item");

		EasySocial.ajax('site/views/apps/filter', {
			"filter": type
		}).done(function(output) {

			// Append the output into the content
			self.setContents(output);
		});
	},	

	"{install} click" : function(button, event) {
		var selector = self.getAppSelector(button);
		var id = self.getAppId(button);

		EasySocial.dialog({
			"content": EasySocial.ajax('site/views/apps/getTnc'),
			"bindings": {
				'{cancelButton} click': function() {
					EasySocial.dialog().close();
				},

				'{installButton} click': function(el) {
					var agreed = !opts.tnc || this.agreeCheckbox().is(':checked');

					if (!agreed) {
						this.termsError().show();
						return;
					}

					var installing = EasySocial.ajax('site/controllers/apps/installApp', {
						"id": id
					}).done(function(){
						var uninstallButton = selector.find('[data-uninstall]');
						var settingsButton = selector.find('[data-settings]');
						uninstallButton.show();
						button.hide();
						settingsButton.removeClass('t-hidden');
					});

					EasySocial.dialog({
						"content": installing,
						"bindings": {
							"{closeButton} click" : function(){
								EasySocial.dialog().close();
							}
						}
					});
				}
			}
		});
	},

	"{settings} click" : function(button, event) {		
		var id = self.getAppId(button);

		EasySocial.dialog({
			"content": EasySocial.ajax("site/views/apps/settings", {"id" : id}),
			"bindings": {
				"{cancelButton} click": function() {
					this.parent.close();
				},

				"{saveButton} click" : function() {
					var data = this.form().serializeJSON();

					EasySocial.ajax('site/controllers/apps/saveSettings', {
						"data" : data,
						"id" : id
					}).done(function() {
						EasySocial.dialog({
							content : EasySocial.ajax('site/views/apps/saveSuccess')
						});
					});
				}
			}
		})
	},

	'{uninstall} click': function(button, event) {
		var selector = self.getAppSelector(button);
		var id = self.getAppId(button);

		if (!button.enabled()) {
			return;
		}

		EasySocial.dialog({
			"content": EasySocial.ajax('site/controllers/apps/uninstall', {"id": id})
				.done(function(){
					var installButton = selector.find('[data-install]');
					var settingsButton = selector.find('[data-settings]');
					installButton.show();
					button.hide();
					settingsButton.addClass('t-hidden');					
				})
		});
	}
}});


module.resolve();
});

});