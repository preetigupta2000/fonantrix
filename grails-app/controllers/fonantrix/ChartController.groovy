package fonantrix

import grails.converters.JSON
import groovy.json.JsonBuilder

class ChartController {

    def index() { 
		
		(Chart.list()).eachWithIndex { chart, index ->
			def data = [
				type : chart.type,
				title : chart.title,
				subtitle : chart.subtitle,
				xAxisTitle : chart.xAxisTitle,
				xAxisjson : chart.xAxisjson,
				xAxisjson : chart.xAxisjson,
				yAxistitle : chart.yAxistitle,
				plotLinescolor : chart.plotLinescolor,
				seriess : chart.seriess.collect {[
					no: it.no,
					value: it.value,
					data: it.data,
					additionalNodes : it.additionalNodes]}
			]
		}
		def json = new JsonBuilder(data)
		
		render(view: "/chart/index",  model:[charts:json.toString()])
	}
	
}
