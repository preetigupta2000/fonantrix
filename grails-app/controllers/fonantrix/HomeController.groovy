package fonantrix

class HomeController {

    def index() { 
		
	}
	
	def about() {
		render(view: "/about/index")
	}
	
	def services() {
		render(view: "/services/index")
	}
	
	def faq() {
		render(view: "/faq/index")
	}
	
	def contact() {
		render(view: "/contact/index")
	}
}
