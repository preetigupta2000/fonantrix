modules = {
	corestyles {
		resource url:'less/custom-bootstrap.less',attrs:[rel: "stylesheet/less", type:'css']
		resource url:'css/focus.css'
		resource url:'css/focus-responsive.css'
	}
	
	homestyles	{
		resource url:'css/pages/homepage.css'

	}
	
	application {
		resource url:'js/jquery-1.7.2.min.js'
		//Bootstrap JS components
		resource url:'js/bootstrap-alert.js'
		resource url:'js/bootstrap-button.js'
		resource url:'js/bootstrap-carousel.js'
		resource url:'js/bootstrap-collapse.js'
		resource url:'js/bootstrap-dropdown.js'
		resource url:'js/bootstrap-modal.js'
		resource url:'js/bootstrap-popover.js'
		resource url:'js/bootstrap-scrollspy.js'
		resource url:'js/bootstrap-tab.js'
		resource url:'js/bootstrap-tooltip.js'
		resource url:'js/bootstrap-transition.js'
		resource url:'js/bootstrap-typeahead.js'
		resource url:'js/bootstrap-transition.js'
	}
	
	corejs {
		dependsOn "application"
		resource url:'js/focus.js'
	}
}