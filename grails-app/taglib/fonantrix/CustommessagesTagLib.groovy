package fonantrix

class CustommessagesTagLib {

	static namespace = "fon"
	
	def message = { attrs, body ->
		//out << "<g:message code=\"" + attrs.code + "\" />"
		def g = grailsApplication.mainContext.getBean('org.codehaus.groovy.grails.plugins.web.taglib.ApplicationTagLib')
		def reurnProp = g.message(code:attrs.code)
		
		boolean editable = false
		
		if (attrs.type != null)
			editable = true
		String retrunValue = reurnProp
		if (editable)
		{
			retrunValue = "<a href='#' class='editable' id='" + attrs.code + "'  data-pk='1' data-type='" + attrs.type + "' data-name='" + attrs.code + "' data-url='" + attrs.url + "' data-original-title='" + attrs.title +"'>" + reurnProp + "</a>"
		}
		out << retrunValue
	}
}
