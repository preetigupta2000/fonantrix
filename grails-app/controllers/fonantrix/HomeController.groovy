package fonantrix

import org.springframework.web.context.request.RequestContextHolder

class HomeController {
	
	public static final String RIGHT_TO_LEFT = "rtl"
	public static final String LEFT_TO_RIGHT = "ltr"
	public static final List<String> RTL_LANGUAGES = ["iw","ar","fa","ur"]
	
	/**
	 * Dependency injection for the simpleMail.
	 */
	def myMailSender

	private def directiveCalculator() {
		//getting the orientation set in the session
		def direction = LEFT_TO_RIGHT;
		def session = RequestContextHolder.currentRequestAttributes().getSession()
		String locale  = session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'
		if(locale){
			if (RTL_LANGUAGES.contains(locale)) {
				direction = RIGHT_TO_LEFT;
			} else {
				direction = LEFT_TO_RIGHT;
			}
		}
		return direction;
	}
	
    def index() { 
		render(view: "/home/index", model: [direction: directiveCalculator()])
	}
	
	def about() {
		render(view: "/about/index", model: [direction: directiveCalculator()])
	}
	
	def services() {
		render(view: "/services/index", model: [direction: directiveCalculator()])
	}
	
	def product() {
		render(view: "/product/index", model: [direction: directiveCalculator()])
	}
	
	def faq() {
		render(view: "/faq/index", model: [direction: directiveCalculator()])
	}
	
	def contact() {
		render(view: "/contact/index", model: [direction: directiveCalculator()])
	}
	
	def casestudy() {
		render(view: "/casestudy/index", model: [direction: directiveCalculator()])
	}
	
	def mobility() {
		render(view: "/services/mobility", model: [direction: directiveCalculator()])
	}
	
	def socialmedia() {
		render(view: "/services/socialmedia", model: [direction: directiveCalculator()])
	}
	
	def webbased() {
		render(view: "/services/webbased", model: [direction: directiveCalculator()])
	}
	
	def cloud() {
		render(view: "/services/cloud", model: [direction: directiveCalculator()])
	}
	
	def automation(){
		render(view: "/services/automation", model: [direction: directiveCalculator()])
	}
	
	def expertopinion(){
		render(view: "/casestudy/expertopinion", model: [direction: directiveCalculator()])
	}
	
	def ourwork(){
		render(view: "/casestudy/ourwork", model: [direction: directiveCalculator()])
	}
	
	def sendemail(){
		myMailSender.messageEmail = params.email
		myMailSender.messageBody = params.body
		myMailSender.messageSubject = params.name
		myMailSender.test()
		render(view: "/contact/index")
	}
}
