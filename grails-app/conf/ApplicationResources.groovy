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
		
		resource url:'js/libs/bootstrap-editable/bootstrap-editable.js'
	}
	
	corejs {
		dependsOn "libs"
		resource url:'js/index.js'
		resource url:'js/focus.js'
		resource url:'js/plugins/faq/faq.js'
	}
}
