package fonantrix

import groovy.json.JsonBuilder
import grails.converters.JSON

import org.codehaus.groovy.grails.web.context.ServletContextHolder
import org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes
import org.quartz.JobDataMap
import org.quartz.JobKey
import org.quartz.Scheduler
import org.quartz.impl.matchers.GroupMatcher
import org.springframework.context.ApplicationContext

import redis.clients.jedis.Jedis


class ChartController {

	def redisService
	def quartzScheduler

	
    def index() {
		if (params.launchFromMain)
		{
			session.setAttribute("showMainSiteButton", true)
		} else {
			session.setAttribute("showMainSiteButton", false)
		}

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
		render(view: "/chart/index",  model:[charts:json.toString(),showMainSiteButton:"true"])
	}
	
	def refreshData() {
		//Jedis jedis = new Jedis("localhost")
		def keys
		redisService.withRedis { Jedis redis ->
			keys = redis.keys("charts.*.series*.*Value");	
			for (i in keys) {
				int index
				index = redis.llen(i);
				def splitKey = i.split("\\.");
				def chartNumber = splitKey[1]
				def seriesNo = splitKey[2].substring(6)
	
				//loading chart based on extracted chart no
				Chart chart = Chart.findByNumber(chartNumber)
				//loading series of the above loaded chart
				Series series = Series.findByChartAndNo(chart, seriesNo)
				String data
				if (index != 1) {
					data = redis.lindex(i, index-1) 
					data = Float.parseFloat(data) + 10
					redis.rpush(i, data)
				}
				List<String> idList = redis.lrange(i, 0, -1)
				series.setDataValue(idList.toListString())
				series.save()
			}
		}
	
		redirect(controller: "chart", action: "index")
	}
	
	def zoomChart() {
		Chart chart = Chart.findByNumber(params.chartNo)
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
				additionalNodes : it.additionalNodes]
			}
		]
		
		def json = new JsonBuilder(data)
		render ([chart:json] as JSON)
	}
	
	def getDynamicData() {
		String myJobName = "fonantrix.GetRandomDataJob"
		
		ApplicationContext ctx = ServletContextHolder.getServletContext().getAttribute(GrailsApplicationAttributes.APPLICATION_CONTEXT)
		
		Scheduler scheduler = ctx.getBean("quartzScheduler")
			
		def key = "charts." + params.chartNo + ".series"+ params.serieNo + ".dataValue";

		for (String groupName : scheduler.getJobGroupNames()) {
			for (JobKey jobKey : scheduler.getJobKeys(GroupMatcher.jobGroupEquals(groupName))) {
			
				String jobName = jobKey.getName();
				String jobGroup = jobKey.getGroup();
				
				if ((jobName).equals(myJobName)) {
					scheduler.triggerJob(jobKey, new JobDataMap(["key":key,"type": params.serieType]));
				}
			}
		}
		//loading chart based on extracted chart no
		Chart chart = Chart.findByNumber(params.chartNo)
		//loading series of the above loaded chart
		Series series = Series.findByChartAndNo(chart, params.serieNo)
		List<String> idList
		List<String> lastElement
		redisService.withRedis { Jedis redis ->
			idList = redis.lrange(key,0,10)
			series.setDataValue(idList.toListString())
			series.save()
			int index = redis.llen(key);
			lastElement = redis.lrange(key,index-1,-1)
		}
//System.out.println("last:" + lastElement.toListString())		
		//render ( lastElement.toListString() + "#" + params.serieNo + )
		render ([points:lastElement.toListString(),serieNo:params.serieNo,contianerId:params.contianerId] as JSON)
	}
}
