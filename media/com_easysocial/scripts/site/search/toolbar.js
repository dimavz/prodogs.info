EasySocial.module("site/search/toolbar", function($){

var module	= this;

EasySocial.Controller("Search.Toolbar", {
	defaultOptions: {
		popboxWrapper: "",
		showadvancedlink: true,
		"{textfield}": "[data-nav-search-input]",
		"{filters}": "[data-filters]"
	}
}, function(self, opts, base) { return {

	init : function() {
		self.options.showadvancedlink = self.element.data('showadvancedlink') == 0 ? 0 : 1 ;

		self.filters().addController(EasySocial.Controller.Search.Toolbar.Filter, {
			"{parent}": self
		});
	},

	cache: {},

	showPopBox: false,

	rePopBox: null,

	search: $.debounce(function(keyword) {

		if (self.loading) {
			return;
		}

		if (!keyword || !(keyword=$.trim(keyword)) || keyword.length <= 2) {
			return;
		}

		var textfield = self.textfield();

		var cacheIndex = keyword;

		// Cheap fix
		textfield.popbox("widget").hide();
		textfield.popbox("widget").destroy();

		var filters = [];
		$("[data-search-filtertypes]:checked").each( function(idx, ele) {

			filterValue = $(ele).val();
			filters.push(filterValue);
		});

		var task =
			// Take from cache if keyword has been searched before
			// self.cache[cacheIndex] ||
			// Else make and ajax call
			EasySocial.ajax("site/controllers/search/getItems", {
				"q": keyword,
				"mini": "1",
				"showadvancedlink": self.options.showadvancedlink,
				"filtertypes" : filters
			});

		task.fail(function(message) {
				console.log(message);
			}).always(function(){
				self.loading = false;
			});

		self.hide();

		base.popbox({
			content: task,
			id: "es",
			component: opts.popboxWrapper,
			type: "nav-search",
			toggle: "click",
			cache: false,
			offset: 5
		});

		var popbox = base.popbox("widget");

		popbox.show();
		popbox.keyword = keyword;

	}, 250),


	reSearch: function(keyword) {

		if (self.loading) {
			return;
		}

		if (!keyword || !(keyword=$.trim(keyword)) || keyword.length <= 2) {
			return;
		}

		var textfield = self.textfield();

		var cacheIndex = keyword;

		// Cheap fix
		self.textfield().popbox("widget").hide();
		self.textfield().popbox("widget").destroy();

		var filters = [];
		$("[data-search-filtertypes]:checked").each( function(idx, ele) {

			filterValue = $(ele).val();
			filters.push(filterValue);

			// valueInteger = parseInt(filterValue);
			// cacheIndex += valueInteger.toString();
		});

		var task =
			// Else make and ajax call
			EasySocial.ajax("site/controllers/search/getItems", {
				"q": keyword,
				"mini": "1",
				"showadvancedlink": self.options.showadvancedlink,
				"filtertypes" : filters
			})
			.done(function(){
			});

		task
			.fail(function(message) {
				console.log(message);
			})
			.always(function(){
				self.loading = false;
				self.showPopBox = true;
			});

		self.hide();

		base.popbox({
			content: task,
			id: "es",
			component: "",
			type: "search",
			toggle: "click",
			cache: false,
			offset: 0
		});

	},

	hide: function() {
		var popbox = base.popbox("widget");

		if (popbox) {
			popbox.hide();
		}
	},

	show: function() {
		var popbox = base.popbox("widget");
		popbox.show();
	},

	"{textfield} keydown": function() {
		self.hide();
	},

	"{textfield} keyup": function(textfield, event) {

		// 27 == escape
		if (event.which===27) {
			return;
		}

		var keyword = textfield.val();
		self.search(keyword);
	},

	"{self} popboxLoading": function(el, event, popbox) {

		popbox.loader.width(base.width());

		popbox.loader
			.position(popbox.position);

		base.addClass("is-active");
	},

	"{self} popboxActivate": function(el, event, popbox) {

		popbox.tooltip.width(base.width());

		popbox.tooltip
			.position(popbox.position);

		base.addClass("is-active");
	},

	"{self} popboxDeactivate": function(el, event, popbox) {

		base.removeClass("is-active");
	}

}});



EasySocial.Controller("Search.Toolbar.Filter", {
	defaultOptions: {
		"{wrapper}": "[data-filters-wrapper]",

		"{filterButton}": "[data-filter-button]",

		"{filterDropdown}" : ".dropdown-menu",
		"{filterDropdownInput}" : ".dropdown-menu input",
		"{filterDropdownLabel}" : ".dropdown-menu label",

		"{filterBox}" : "[data-search-filtertypes]",
		"{filter}": "[data-filter]"

	}
}, function(self, opts, base) { return {
	init : function() {
	},

	"{self} blur": function(ele, event) {

		console.log('test');

        if (self.parent.showPopBox) {
            self.parent.show();
        }
	},

	"{wrapper} click": function(wrapper, event) {
		event.preventDefault();
		event.stopPropagation();

		// Prevent closing of search dropdown
	},

	"{filter} click": function(link, event) {
		event.preventDefault();
		event.stopPropagation();

		var checked = link.data('filter') == 'select' ? true : false;

		self.filterBox().prop('checked', checked);
	},

    "{filterButton} click": function(ele, event) {

        // When filter button is clicked, we should hide the popbox
        if (self.element.hasClass('open')) {
            // we are doing a close action here.
            // if (self.parent.showPopBox) {
            //     self.parent.show();
            // }
            // self.parent.hide();

        	var keyword = self.parent.textfield().val();
            self.parent.search(keyword);
        } else {
            self.parent.hide();
        }
    },

    "{filterDropdownInput} click": function (el, ev) {
        ev.stopPropagation();

        // var keyword = self.parent.textfield().val();

        // console.log(keyword, self.parent.textfield());

        // self.parent.reSearch(keyword);
    },

    "{filterDropdownLabel} click": function (el, ev) {
        ev.stopPropagation();
    }

}});

module.resolve();

});
