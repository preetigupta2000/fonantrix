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
	
	def product() {
		render(view: "/product/index")
	}
	
	def faq() {
		render(view: "/faq/index")
	}
	
	def contact() {
		render(view: "/contact/index")
	}
	
	def casestudy() {
		render(view: "/casestudy/index")
	}
	
	def mobility() {
		render(view: "/casestudy/mobility")
	}
	
	def socialmedia() {
		render(view: "/casestudy/socialmedia")
	}
	
	def webbased() {
		render(view: "/casestudy/webbased")
	}
	
	def cloud() {
		render(view: "/casestudy/cloud")
	}
	
	def automation(){
		render(view: "/casestudy/automation")
	}
}
