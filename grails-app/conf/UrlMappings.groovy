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
		"/mobility"(controller:"home", action:"mobility" )
		"/socialmedia"(controller:"home", action:"socialmedia" )
		"/webbased"(controller:"home", action:"webbased" )
		"/cloud"(controller:"home", action:"cloud" )
		"/automation"(controller:"home", action:"automation" )
		"500"(view:'/error')
	}
}
