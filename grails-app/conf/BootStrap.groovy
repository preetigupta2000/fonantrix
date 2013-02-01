import groovy.json.JsonSlurper
import fonantrix.Chart
import fonantrix.Series
import fonantrix.authentication.User
import fonantrix.authentication.Role
import fonantrix.authentication.UserRole
import redis.clients.jedis.*

class BootStrap {

    def init = { servletContext ->
		
			Jedis jedis = new Jedis("localhost")
		
			def adminRole;
			if (!Role.count()) {
				adminRole = new Role(authority: 'ROLE_ADMIN').save(failOnError: true, flush: true)
			}
				
			if (!User.count()) {
				
				def adminUser = new User(username: 'admin@fonantrix.com', firstName: 'Fonantrix', lastName: 'Admin',enabled: true, password: 'admin', email: 'admin@fonantrix.com')
				adminUser.save(flush: true)
	
				UserRole.create adminUser, adminRole, true
			}
		
			String jsonChartData = new File(servletContext.getRealPath("/json/chart.json")).text
			if (!Chart.count()) {
				def slurper = new JsonSlurper()
				def allCharts = slurper.parseText(jsonChartData)
				int i = 1
				allCharts.charts.each
				{
					def jsonSeries = it
					loadingChartDatatoRedis(jedis, it, i)
					
					//System.out.println((jedis.lrange("charts." + i + ".xAxisjson",0,-1)).toListString())
					//System.out.println("jedis:" + (jedis.lrange("charts." + i + ".xAxisjson",0,-1)))
					
					def aChart  = new Chart(number: i,
								  type: jedis.get("charts." + i + ".type"), 
								  title: jedis.get("charts." + i + ".title"), 
								  subtitle: jedis.get("charts." + i + ".subtitle"), 
								  xAxisTitle: jedis.get("charts." + i + ".xAxisTitle"), 
								  xAxisjson: (jedis.lrange("charts." + i + ".xAxisjson",0,-1).toListString()), 
								  yAxistitle: jedis.get("charts." + i + ".yAxistitle"), 
								  plotLinescolor:  jedis.get("charts." + i + ".plotLinescolor")).save(failOnError: true)
					def aSeries
					if(jsonSeries.seriess) {
						jsonSeries.seriess.each	{
							loadingSeriesDatatoRedis(jedis, it, i)
							aSeries = new Series(no: it.no, 
									  type: jedis.get("charts." + i + ".series" + it.no + ".type"), 
									  name: jedis.get("charts." + i + ".series" + it.no + ".name"), 
									  dataValue: jedis.lrange("charts." + i + ".series" + it.no + ".dataValue",0,-1).toListString(), 
									  additionalNodes: jedis.get("charts." + i + ".series" + it.no + ".additionalNodes"))
							//System.out.println("name" + jedis.lrange("charts." + i + ".series" + it.no + ".dataValue",0,-1))
							aChart.addToSeriess(aSeries).save(failOnError: true)
	
					}
					i++;
				}
			}
			//System.out.println(jedis.get("charts.1.type"))
			//System.out.println(jedis.get("charts.1.plotLinescolor"))
			//System.out.println(jedis.get("charts.1.series1"))
			//System.out.println(jedis.lrange("charts.1.series1.dataValue",0,-1))
	    }
    }
	
	def loadingChartDatatoRedis(jedis, it, i){
		// adding chart info to redis
		jedis.set("charts." + i + ".type", it.type)
		jedis.set("charts." + i + ".title", it.title)
		jedis.set("charts." + i + ".subtitle", it.subtitle)
		jedis.set("charts." + i + ".xAxisTitle", it.xAxisTitle)
		//jedis.lpush("charts." + i + ".xAxisjson", it.xAxisjson)
		if (!jedis.exists("charts." + i + ".xAxisjson")) {
			def jsonArray = it.xAxisjson.split(",")
			//System.out.println("jsonArray:" + jsonArray)
			for( element in jsonArray){
				//System.out.println("element:" + element.trim())
				jedis.rpush("charts." + i + ".xAxisjson", element.trim())
				//System.out.println("output" + jedis.lrange("charts." + i + ".xAxisjson",0,-1))
			}
		}
		jedis.set("charts." + i + ".yAxistitle", it.yAxistitle)
		jedis.set("charts." + i + ".plotLinescolor", it.plotLinescolor)
    }
	
	def loadingSeriesDatatoRedis(jedis, it, i){
		// adding series data to redis
		jedis.set("charts." + i + ".series" + it.no + ".type", it.type)
		jedis.set("charts." + i + ".series" + it.no + ".name", it.name)
		jedis.set("charts." + i + ".series" + it.no + ".additionalNodes", it.additionalNodes)
		if (!jedis.exists("charts." + + i + ".series"+ it.no + ".dataValue")) {
			if (it.type.equals("pie")) {
				jedis.rpush("charts." + + i + ".series"+ it.no + ".dataValue", it.data)
			} else {
				def dataArray = it.data.split(",")
				for( element in dataArray){
					jedis.rpush("charts." + + i + ".series"+ it.no + ".dataValue", element.trim())
				}
			}
		}
	}
	def destroy = {
	}
}
