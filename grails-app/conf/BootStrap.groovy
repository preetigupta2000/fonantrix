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
				def aChart  = new Chart(type: it.type, title: it.title, subtitle: it.subtitle, xAxisTitle: it.xAxisTitle, xAxisjson: it.xAxisjson, yAxistitle: it.yAxistitle, 
							plotLinescolor: it.plotLinescolor).save(failOnError: true)
				def aSeries
				// adding chart info to redis
				jedis.set("charts." + i + ".type", it.type)
				jedis.set("charts." + i + ".title", it.title)
				jedis.set("charts." + i + ".subtitle", it.subtitle)
				jedis.set("charts." + i + ".xAxisTitle", it.xAxisTitle)
				jedis.lpush("charts." + i + ".xAxisjson", it.xAxisjson)
				jedis.set("charts." + i + ".yAxistitle", it.yAxistitle)
				jedis.set("charts." + i + ".plotLinescolor", it.plotLinescolor)
					
				if(jsonSeries.seriess) {
					jsonSeries.seriess.each	{
						aSeries = new Series(no: it.no, value: it.value, dataValue: it.data, additionalNodes: it.additionalNodes)
						aChart.addToSeriess(aSeries).save(failOnError: true)
						// adding series data to redis
						jedis.set("charts." + i + ".series" + it.no, it.value)
						jedis.set("charts." + i + ".series" + it.no + ".additionalNodes", it.additionalNodes)
						if (!jedis.exists("charts." + + i + ".series"+ it.no + ".dataValue")) {
							if (it.type)
							def dataArray = it.data.split(",")
							for( element in dataArray){
								jedis.rpush("charts." + + i + ".series"+ it.no + ".dataValue", element.trim())
							}
						}
					}
				}
				i++;
			}
		}
		//System.out.println(jedis.get("charts.1.type"))
		//System.out.println(jedis.get("charts.1.plotLinescolor"))
		//System.out.println(jedis.get("charts.1.series1"))
		System.out.println(jedis.lrange("charts.1.series1.dataValue",0,-1))
    }
    def destroy = {
    }
}
