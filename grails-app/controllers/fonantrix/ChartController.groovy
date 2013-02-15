package fonantrix

import groovy.json.JsonBuilder

import redis.clients.jedis.Jedis;
//import org.codehaus.groovy.grails.plugins.quartz.GrailsTaskClassProperty as GTCP
import org.quartz.JobDataMap
import org.quartz.JobDetail
import org.quartz.Scheduler
import org.quartz.JobKey

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
		//val = jedis.lrange("charts.6.series2.dataValue",0,-1)
		
		redirect(controller: "chart", action: "index")
	}
	
	def getDynamicData() {
		
		/*def runJob = {
			//quartzScheduler.triggerJob( 'DynamicData', 'GettingData')
			GetRandomDataJob.triggerNow();
		}*/
		//def job = jobManagerService.getJobs("")
		//quartzScheduler.triggerJob(job, 'GettingData', params ? new JobDataMap(params) : null)
		String myJobName = "DynamicData"
		
		Scheduler scheduler = quartzScheduler.getScheduler();
			 
		for (String groupName : scheduler.getJobGroupNames()) {
			
			for (JobKey jobKey : scheduler.getJobKeys(GroupMatcher.jobGroupEquals(groupName))) {
			
				String jobName = jobKey.getName();
				String jobGroup = jobKey.getGroup();
				
				if ((jobName).equals(myJobName)) {
					scheduler.triggerJob(jobeName, jobGroup);
					System.out.println("trigger job")
				}
			}
		}
		//Jedis jedis = new Jedis("localhost")
		def key = "charts." + params.chartNo + ".series"+ params.SerieNo + ".dataValue";

		System.out.println("params.chartNo:" + params.chartNo)
		System.out.println("params.SerieNo:" + params.SerieNo)
		//loading chart based on extracted chart no
		Chart chart = Chart.findByNumber(params.chartNo)
		//loading series of the above loaded chart
		Series series = Series.findByChartAndNo(chart, params.SerieNo)
		List<String> idList
		redisService.withRedis { Jedis redis ->
			idList = redis.lrange(key,0,-1)
			series.setDataValue(idList.toListString())
			series.save()
		}
		render ( idList.toListString() + ", " + params.SerieNo)
	}
}
