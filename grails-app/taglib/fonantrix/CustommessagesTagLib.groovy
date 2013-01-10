package fonantrix


class CustommessagesTagLib {

	static namespace = "fon"
	def springSecurityService
	
	def message = { attrs, body ->
		//out << "<g:message code=\"" + attrs.code + "\" />"

		def g = grailsApplication.mainContext.getBean('org.codehaus.groovy.grails.plugins.web.taglib.ApplicationTagLib')
		def reurnProp = g.message(code:attrs.code)
		
		boolean isLoggedIn = springSecurityService.isLoggedIn()
		
		boolean editable = false
		if (attrs.type != null)
			editable = true
			
		String retrunValue = reurnProp
		String requiredValue = ""
		String placementValue = ""
		String styles = "editable"
		if (isLoggedIn && editable)
		{
			if (attrs.required != null) 
				requiredValue = " data-placeholder='" + attrs.required + "' "
			if (attrs.placement != null)
				placementValue = " data-placement='" + attrs.placement + "' "
			if (attrs.addstyle != null)
				styles += " " +  attrs.addstyle
			retrunValue = "<a href='#' class='" + styles + "' id='" + attrs.code + "'" + requiredValue + placementValue + "data-pk='1' data-type='" + attrs.type + "' data-name='" + attrs.code + "' data-url='" + attrs.url + "' data-original-title='Update item'>" + reurnProp + "</a>"
			
		}
		out << retrunValue
	}
}
