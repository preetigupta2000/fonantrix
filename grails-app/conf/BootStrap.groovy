import groovy.json.JsonSlurper
import fonantrix.Chart
import fonantrix.Series
import fonantrix.authentication.User
import fonantrix.authentication.Role
import fonantrix.authentication.UserRole
import redis.clients.jedis.*

class BootStrap {

	def redisService
	def grailsApplication
	
    def init = { servletContext ->
		
			//Jedis jedis = new Jedis(System.getenv("REDISTOGO_URL"))
			//Jedis jedis = new Jedis("localhost")
		/*
		System.out.println("redis port:" + grailsApplication.config.grails.redis.port)
		System.out.println("redis host:" + grailsApplication.config.grails.redis.host)
		System.out.println("redis username:" + grailsApplication.config.grails.redis.username)
		System.out.println("redis password:" + grailsApplication.config.grails.redis.password)
		*/
	
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
					loadingChartDatatoRedis(it, i)
					
					//System.out.println((jedis.lrange("charts." + i + ".xAxisjson",0,-1)).toListString())
					//System.out.println("jedis:" + (jedis.lrange("charts." + i + ".xAxisjson",0,-1)))
					def aChart
					redisService.withRedis { Jedis redis ->
						
System.out.println("####" + (redis.lrange("charts." + i + ".xAxisjson",-10,10)))						
						aChart  = new Chart(number: i,
								  type: redis.get("charts." + i + ".type"), 
								  title: redis.get("charts." + i + ".title"), 
								  subtitle: redis.get("charts." + i + ".subtitle"), 
								  xAxisTitle: redis.get("charts." + i + ".xAxisTitle"), 
								  xAxisjson: (redis.lrange("charts." + i + ".xAxisjson",-10,10).toListString()), 
								  yAxistitle: redis.get("charts." + i + ".yAxistitle"), 
								  plotLinescolor:  redis.get("charts." + i + ".plotLinescolor")).save(failOnError: true)
					}
					def aSeries
					if(jsonSeries.seriess) {
						jsonSeries.seriess.each	{
							loadingSeriesDatatoRedis(it, i)
							redisService.withRedis { Jedis redis ->
								aSeries = new Series(no: it.no, 
										  type: redis.get("charts." + i + ".series" + it.no + ".type"), 
										  name: redis.get("charts." + i + ".series" + it.no + ".name"), 
										  dataValue: redis.lrange("charts." + i + ".series" + it.no + ".dataValue",-10,10).toListString(), 
										  additionalNodes: redis.get("charts." + i + ".series" + it.no + ".additionalNodes"))
							}
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
	
	def loadingChartDatatoRedis(it, i){
		// adding chart info to redis
		redisService.withRedis { Jedis redis ->
			redis.set("charts." + i + ".type", it.type);
			redis.set("charts." + i + ".title", it.title)
			redis.set("charts." + i + ".subtitle", it.subtitle)
			redis.set("charts." + i + ".xAxisTitle", it.xAxisTitle)
			if (!redis.exists("charts." + i + ".xAxisjson")) {
				def jsonArray = it.xAxisjson.split(",")
				//System.out.println("jsonArray:" + jsonArray)
				for( element in jsonArray){
					redis.rpush("charts." + i + ".xAxisjson", element.trim())
				}
			}
			redis.set("charts." + i + ".yAxistitle", it.yAxistitle)
			redis.set("charts." + i + ".plotLinescolor", it.plotLinescolor)
		}
    }
	
	def loadingSeriesDatatoRedis(it, i){
		// adding series data to redis
		redisService.withRedis { Jedis redis ->
			redis.set("charts." + i + ".series" + it.no + ".type", it.type)
			redis.set("charts." + i + ".series" + it.no + ".name", it.name)
			redis.set("charts." + i + ".series" + it.no + ".additionalNodes", it.additionalNodes)
			if (!redis.exists("charts." + + i + ".series"+ it.no + ".dataValue")) {
				if (it.type.equals("pie") || it.type.equals("function")) {
					//System.out.println("data: " + it.data);
					//System.out.println("charts." + i + ".series"+ it.no + ".dataValue")
					redis.rpush("charts." + i + ".series"+ it.no + ".dataValue", it.data)
				} else {
					def dataArray = it.data.split(",")
					for( element in dataArray){
						redis.rpush("charts." + + i + ".series"+ it.no + ".dataValue", element.trim())
					}
				}
			}
		}
	}
	def destroy = {
	}
}
