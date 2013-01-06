package fonantrix

import org.grails.plugins.localization.*
import grails.converters.JSON

class AdminController {

	def index = {
		println "inside index" + params.pk + params.name
		def localization = Localization.findByCode( params.name )
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
