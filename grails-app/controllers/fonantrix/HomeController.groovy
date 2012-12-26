package fonantrix

class HomeController {
	
	/**
	 * Dependency injection for the simpleMail.
	 */
	def myMailSender

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
		render(view: "/services/mobility")
	}
	
	def socialmedia() {
		render(view: "/services/socialmedia")
	}
	
	def webbased() {
		render(view: "/services/webbased")
	}
	
	def cloud() {
		render(view: "/services/cloud")
	}
	
	def automation(){
		render(view: "/services/automation")
	}
	
	def expertopinion(){
		render(view: "/casestudy/expertopinion")
	}
	
	def ourwork(){
		render(view: "/casestudy/ourwork")
	}
	
	def sendemail(){
		myMailSender.messageEmail = params.email
		myMailSender.messageBody = params.body
		myMailSender.messageSubject = params.name
		myMailSender.test()
		render(view: "/contact/index")
	}
}
