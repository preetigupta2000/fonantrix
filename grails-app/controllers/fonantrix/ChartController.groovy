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
					type: it.type,
					name: it.name,
					data: it.dataValue,
					additionalNodes : it.additionalNodes]}
			]
			mergeData.push(data)
		}
		def json = new JsonBuilder(mergeData)
		
		//System.out.println("mergeData:" + mergeData)
		render(view: "/chart/index",  model:[charts:json.toString()])
	}
	
	def getLatestData() {
		Jedis jedis = new Jedis("localhost")
		def keys = jedis.keys("charts.*.series*.*Value");
		
		for (i in keys) {
			int index = jedis.llen(i)
			def splitKey = i.split("\\.");
			def chartNumber = splitKey[1]
			def seriesNo = splitKey[2].substring(6)

			//loading chart based on extracted chart no
			Chart chart = Chart.findByNumber(chartNumber)
			//loading series of the above loaded chart
			Series series = Series.findByChartAndNo(chart, seriesNo)
			
			if (index != 1) {
				String data = jedis.lindex(i, index-1)
				data = Float.parseFloat(data) * 2 
				jedis.rpush(i, data)
			}
			series.setDataValue(jedis.lrange(i,0,-1).toListString())
			series.save()
		}
		//val = jedis.lrange("charts.6.series2.dataValue",0,-1)
		
		forward controller: "chart", action: "index"
	}
	
	
}
