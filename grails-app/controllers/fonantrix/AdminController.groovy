package fonantrix

import org.grails.plugins.localization.Localization
import grails.converters.JSON
import org.springframework.web.servlet.support.RequestContextUtils as RCU

class AdminController {

	def index = {
		String currentLocale = RCU.getLocale(request)

		if (currentLocale == null || currentLocale.equals("en") || currentLocale.equals("en_US"))
			currentLocale = "*"
		//println currentLocale
		def localization = Localization.findByCodeAndLocale( params.name, currentLocale)
		
		def id = localization.id
		if(localization) {
		 def oldCode = localization.code
		 localization.text = params.value
		 if(!localization.hasErrors() && localization.save()) {
			 Localization.resetThis(oldCode)
			 if (localization.code != oldCode) Localization.resetThis(localization.code)
			 
			 flash.message = "localization.updated"
			 flash.args = [id]
			 flash.defaultMessage = "Localization ${id} updated"
		 }
		 else {
			 render(view:'edit',model:[localization:localization])
		 }
		}
		else {
		 flash.message = "localization.not.found"
		 flash.args = [id]
		 flash.defaultMessage = "Localization not found with code ${params.name}"
		}
		render('')
		return
	}
}
