package fonantrix

import grails.converters.JSON

class ChartController {

    def index() { 
		def jsonstring = Chart.list() as JSON
		render(view: "/chart/index",  model:[charts:jsonstring])
	}
	
}
