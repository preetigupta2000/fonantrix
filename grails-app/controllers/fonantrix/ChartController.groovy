package fonantrix

import groovy.json.JsonBuilder

import redis.clients.jedis.Jedis;

class ChartController {

	def redisService
	
    def index() {
		def chartList = Chart.list()
		def mergeData = [];
		
		chartList.eachWithIndex { chart, index ->
			def data = [
				number : chart.number,
				type : chart.type,
				title : chart.title,
				subtitle : chart.subtitle,
				xAxisTitle : chart.xAxisTitle,
				xAxisjson : chart.xAxisjson,
				xAxisjson : chart.xAxisjson,
				yAxistitle : chart.yAxistitle,
				plotLinescolor : chart.plotLinescolor,
				series : chart.seriess.collect {[
					no: it.no,
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
	
	def refreshData() {
		//Jedis jedis = new Jedis("localhost")
		def keys
		redisService.withRedis { Jedis redis ->
			keys = redis.keys("charts.*.series*.*Value");
		}
		
		for (i in keys) {
			int index
			redisService.withRedis { Jedis redis ->
				index = redis.llen(i);
			}
			def splitKey = i.split("\\.");
			def chartNumber = splitKey[1]
			def seriesNo = splitKey[2].substring(6)

			//loading chart based on extracted chart no
			Chart chart = Chart.findByNumber(chartNumber)
			//loading series of the above loaded chart
			Series series = Series.findByChartAndNo(chart, seriesNo)
			
			if (index != 1) {
				String data
				redisService.withRedis { Jedis redis ->
					data = redis.lindex(i, index-1)
				} 
				data = Float.parseFloat(data) + 10
				redisService.withRedis { Jedis redis ->
					redis.rpush(i, data)
				}
			}
			List<String> idList = redisService.withRedis { Jedis redis ->
				redis.lrange(i, 0, -1)
			}
			
			series.setDataValue(idList.toListString())
			series.save()
		}
		//val = jedis.lrange("charts.6.series2.dataValue",0,-1)
		
		redirect(controller: "chart", action: "index")
	}
	
	def getDynamicData() {
		//Jedis jedis = new Jedis("localhost")
		def key = "charts." + params.chartNo + ".series"+ params.SerieNo + ".dataValue";
		int index
		redisService.withRedis { Jedis redis ->
			index = redis.llen(key);
		}

		//loading chart based on extracted chart no
		Chart chart = Chart.findByNumber(params.chartNo)
		//loading series of the above loaded chart
		Series series = Series.findByChartAndNo(chart, params.SerieNo)
		def data
		if (index != 1) {
			redisService.withRedis { Jedis redis ->
				data = redis.lindex(key, index-1)
			}
			data = Float.parseFloat(data) + 1
			redisService.withRedis { Jedis redis ->
				redis.rpush(key, data.toString())
			}
		}
		List<String> idList = redisService.withRedis { Jedis redis ->
			redis.lrange(key,0,-1)
		}
		series.setDataValue(idList.toListString())
		series.save()
		render ( data + ", " + params.SerieNo)
	}
}
