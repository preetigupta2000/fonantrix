package fonantrix

import groovy.json.JsonBuilder

import redis.clients.jedis.*

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
		def json = new JsonBuilder(mergeData)
		render(view: "/chart/index",  model:[charts:json.toString()])
	}
	
	def getLatestData() {
		Jedis jedis = new Jedis("localhost")
		def keys = jedis.keys("charts.*.series*.*Value");
		def val = jedis.lrange("charts.6.series2.dataValue",0,-1)
		System.out.println("data1:" + val)
		for (i in keys) {
			int index = jedis.llen(i)
			System.out.println("index:" + index)
			String data = jedis.lindex(i, index-1)
			System.out.println("value:" + data)
			data = Float.parseFloat(data) * 2 
			System.out.println("value2:" + data)
			jedis.rpush(i, data)
		}
		val = jedis.lrange("charts.6.series2.dataValue",0,-1)
		System.out.println("data2:" + val)
		render('')
		return
	}
	
}
