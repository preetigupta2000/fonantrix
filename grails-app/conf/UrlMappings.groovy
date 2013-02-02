class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		"/chart"(controller:"chart")
		"/updatechart"(controller:"chart", action:"refreshData")
		"/dynamicchart"(controller:"chart", action:"getDynamicData")
		
		"/"(controller:"home")
		"/home"(controller:"home")
		"/about"(controller:"home", action:"about" )
		"/services"(controller:"home", action:"services" )
		"/product"(controller:"home", action:"product" )
		"/faq"(controller:"home", action:"faq" )
		"/contact"(controller:"home", action:"contact" )
		"/casestudy"(controller:"home", action:"casestudy" )
		"/mobility"(controller:"home", action:"mobility" )
		"/socialmedia"(controller:"home", action:"socialmedia" )
		"/webbased"(controller:"home", action:"webbased" )
		"/cloud"(controller:"home", action:"cloud" )
		"/automation"(controller:"home", action:"automation" )
		"/expertopinion"(controller:"home", action:"expertopinion" )
		"/ourwork"(controller:"home", action:"ourwork" )
		"/sendemail"(controller:"home", action:"sendemail" )
		
		"/admin/$id?"(controller:"admin")
		
		"/login/$action?/$id?"(controller:"login")
		"/logout/$action?/$id?"(controller:"logout")
		
		"500"(view:'/error')
	}
}
