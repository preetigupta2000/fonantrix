package fonantrix

import grails.converters.JSON
import groovy.json.JsonBuilder

class ChartController {

    def index() { 

		def chartList = Chart.list()
		
		def mergeData = [];
		
		chartList.eachWithIndex { chart, index ->
			def data = [
				type : chart.type,
				title : chart.title,
				subtitle : chart.subtitle,
				xAxisTitle : chart.xAxisTitle,
				xAxisjson : chart.xAxisjson,
				xAxisjson : chart.xAxisjson,
				yAxistitle : chart.yAxistitle,
				plotLinescolor : chart.plotLinescolor,
				series : chart.seriess.collect {[
					value: it.value,
					data: it.dataValue,
					additionalNodes : it.additionalNodes]}
			]
			mergeData.push(data)
		}
		//System.out.println("mergeData:" + mergeData)
		def json = new JsonBuilder(mergeData)
		
		//System.out.println(json.toString())
		render(view: "/chart/index",  model:[charts:json.toString()])
		/*
		def jsonstring = Chart.list() as JSON
		System.out.println(jsonstring)
		render(view: "/chart/index",  model:[charts:jsonstring])
		*/
	}
	
}
