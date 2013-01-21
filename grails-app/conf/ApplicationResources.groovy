modules = {	
	libs {
		resource url:'js/libs/jquery-1.7.2.min.js'
		//Bootstrap JS components
		resource url:'js/libs/bootstrap-alert.js'
		resource url:'js/libs/bootstrap-button.js'
		resource url:'js/libs/bootstrap-carousel.js'
		resource url:'js/libs/bootstrap-collapse.js'
		resource url:'js/libs/bootstrap-dropdown.js'
		resource url:'js/libs/bootstrap-modal.js'
		resource url:'js/libs/bootstrap-tooltip.js'
		resource url:'js/libs/bootstrap-popover.js'
		resource url:'js/libs/bootstrap-scrollspy.js'
		resource url:'js/libs/bootstrap-tab.js'
		resource url:'js/libs/bootstrap-transition.js'
		resource url:'js/libs/bootstrap-typeahead.js'
		resource url:'js/libs/bootstrap-transition.js'
		resource url:'js/focus.js'
	}
	
	corejs {
		dependsOn "libs"
		resource url:'js/libs/bootstrap-editable/bootstrap-editable.js'
		resource url:'js/index.js'
		resource url:'js/plugins/faq/faq.js'
	}
	
	chartjs {
		dependsOn "libs"
		resource url:'js/highcharts/highcharts.js'
		resource url:'js/highcharts/modules/exporting.js'
		resource url:'js/index.js'
	}
}
