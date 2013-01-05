package fonantrix

import org.springframework.web.context.request.RequestContextHolder
import org.grails.plugins.localization.*
import grails.converters.JSON

class AdminController {

    def update = { 
		def session = RequestContextHolder.currentRequestAttributes().getSession()
		String locale  = session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'
		
		println "inside controller" + params.pk + params.name + params.value  + locale
		
		def localization = Localization.findByCode( params.name )
		println localization.id
		/*if(localization) {
			def oldCode = localization.code
			localization.properties = params
			if(!localization.hasErrors() && localization.save()) {
				Localization.resetThis(oldCode)
				if (localization.code != oldCode) Localization.resetThis(localization.code)
				flash.message = "localization.updated"
				flash.args = [params.id]
				flash.defaultMessage = "Localization ${params.id} updated"
				redirect(action:show,id:localization.id)
			}
			else {
				render(view:'edit',model:[localization:localization])
			}
		}
		else {
			flash.message = "localization.not.found"
			flash.args = [params.id]
			flash.defaultMessage = "Localization not found with id ${params.id}"
			redirect(action:edit,id:params.id)
		}*/
	}
	
	def show = {
		
		println "inside show" + params.id
		def localization = Localization.get( params.id )

		if(!localization) {
			flash.message = "localization.not.found"
			flash.args = [params.id]
			flash.defaultMessage = "Localization not found with id ${params.id}"
			redirect(action:list)
		}
		else { return [ localization : localization ] }
	}
}
