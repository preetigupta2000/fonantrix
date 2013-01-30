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
			int i = 0
			allCharts.charts.each
			{
				def jsonSeries = it
				new Chart(type: it.type, title: it.title, subtitle: it.subtitle, xAxisTitle: it.xAxisTitle, xAxisjson: it.xAxisjson, yAxistitle: it.yAxistitle, 
							plotLinescolor: it.plotLinescolor).save(failOnError: true)
				
				if(jsonSeries.products) {
					jsonSeries.seriess.each	{
						new Series(no: it.no, value: it.value, data: it.data, additionalNodes: it.additionalNodes).save(failOnError: true)
					}
				}
				/*if (i == 0) {
					jedis.set("charts.1.type", it.type)
					jedis.set("charts.1.title", it.title)
					jedis.set("charts.1.subtitle", it.subtitle)
					jedis.set("charts.1.xAxisTitle", it.xAxisTitle)
					jedis.lpush("charts.1.xAxisjson", it.xAxisjson)
					jedis.lpush("charts.1.yAxistitle", it.yAxistitle)
					jedis.lpush("charts.1.plotLinescolor", it.plotLinescolor)
					jedis.hmset("charts.1.seriesData1", it.seriesData1)
					jedis.hmset("charts.1.seriesData2", it.seriesData2)
					i = 1;
				}*/
			}
		}
		//assert jedis.get("charts.1.type")
		System.out.println(jedis.get("charts.1.type"))
    }
    def destroy = {
    }
}
