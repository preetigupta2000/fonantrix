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
		"/product"(controller:"home", action:"product" )
		"/faq"(controller:"home", action:"faq" )
		"/contact"(controller:"home", action:"contact" )
		"/casestudy"(controller:"home", action:"casestudy" )
		"500"(view:'/error')
	}
}
