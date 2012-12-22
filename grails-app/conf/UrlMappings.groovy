class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:"home")
		"/home"(controller:"home")
		"/about"(controller:"home", action:"about" )
		"/services"(controller:"home", action:"services" )
		"/pricing"(controller:"home", action:"pricing" )
		"/faq"(controller:"home", action:"faq" )
		"/contact"(controller:"home", action:"contact" )
		"500"(view:'/error')
	}
}
