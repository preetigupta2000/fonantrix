modules = {
	corestyles {
		resource url:'less/custom-bootstrap.less',attrs:[rel: "stylesheet/less", type:'css']
		resource url:'less/focus.less',attrs:[rel: "stylesheet/less", type:'css']
		resource url:'less/focus-responsive.less',attrs:[rel: "stylesheet/less", type:'css']
		resource url:'css/bootstrap-editable.css'
	}
	
	corestylesrtl {
		resource url:'less/custom-bootstrap.less',attrs:[rel: "stylesheet/less", type:'css']
		resource url:'css/focus-rtl.css'
		resource url:'css/focus-responsive-rtl.css'
	}
	
	homestyles	{
		dependsOn "corestyles"
		resource url:'css/pages/homepage.css'
	}
	
	homestylesrtl	{
		dependsOn "corestylesrtl"
		resource url:'css/pages/homepage-rtl.css'
	}
	
	aboutstyles	{
		dependsOn "corestyles"
		resource url:'css/pages/about.css'
	}
	
	aboutstylesrtl	{
		dependsOn "corestylesrtl"
		resource url:'css/pages/about-rtl.css'
	}
	
	servicestyles	{
		dependsOn "corestyles"
		resource url:'css/pages/services.css'
	}
	
	servicestylesrtl	{
		dependsOn "corestylesrtl"
		resource url:'css/pages/services-rtl.css'
	}
	
	faqstyles	{
		dependsOn "corestyles"
		resource url:'js/plugins/faq/faq.css'
	}
	
	contactstyles	{
		dependsOn "corestyles"
		resource url:'css/pages/contact.css'
	}
	
	contactstylesrtl	{
		dependsOn "corestylesrtl"
		resource url:'css/pages/contact.css'
	}
	
	aboutstyles	{
		dependsOn "corestyles"
		resource url:'css/pages/about.css'
	}
	
	pricingstyles	{
		dependsOn "corestyles"
		resource url:'css/components/plans.css'
	}
	
	pricingstylesrtl	{
		dependsOn "corestyles"
		resource url:'css/components/plans-rtl.css'
	}
	
	casestudystyles	{
		dependsOn "corestyles"
		resource url:'css/pages/casestudy.css'
	}
	
	casestudystylesrtl	{
		dependsOn "corestylesrtl"
		resource url:'css/pages/casestudy.css'
	}
	
	libs {
		resource url:'js/jquery-1.7.2.min.js'
		//Bootstrap JS components
		resource url:'js/bootstrap-alert.js'
		resource url:'js/bootstrap-button.js'
		resource url:'js/bootstrap-carousel.js'
		resource url:'js/bootstrap-collapse.js'
		resource url:'js/bootstrap-dropdown.js'
		resource url:'js/bootstrap-modal.js'
		resource url:'js/bootstrap-tooltip.js'
		resource url:'js/bootstrap-popover.js'
		resource url:'js/bootstrap-scrollspy.js'
		resource url:'js/bootstrap-tab.js'
		resource url:'js/bootstrap-transition.js'
		resource url:'js/bootstrap-typeahead.js'
		resource url:'js/bootstrap-transition.js'
		
		resource url:'js/bootstrap-editable/bootstrap-editable.min.js'
	}
	
	corejs {
		dependsOn "libs"
		resource url:'js/index.js'
		resource url:'js/focus.js'
		resource url:'js/plugins/faq/faq.js'
	}
}
