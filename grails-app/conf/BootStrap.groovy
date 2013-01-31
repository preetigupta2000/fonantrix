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
				def aChart  = new Chart(type: it.type, title: it.title, subtitle: it.subtitle, xAxisTitle: it.xAxisTitle, xAxisjson: it.xAxisjson, yAxistitle: it.yAxistitle, 
							plotLinescolor: it.plotLinescolor).save(failOnError: true)
				def aSeries
				// adding chart info to redis
				jedis.set("charts.1.type", it.type)
				jedis.set("charts.1.title", it.title)
				jedis.set("charts.1.subtitle", it.subtitle)
				jedis.set("charts.1.xAxisTitle", it.xAxisTitle)
				jedis.lpush("charts.1.xAxisjson", it.xAxisjson)
				jedis.set("charts.1.yAxistitle", it.yAxistitle)
				jedis.set("charts.1.plotLinescolor", it.plotLinescolor)
					
				if(jsonSeries.seriess) {
					jsonSeries.seriess.each	{
						aSeries = new Series(no: it.no, value: it.value, dataValue: it.data, additionalNodes: it.additionalNodes)
						aChart.addToSeriess(aSeries).save(failOnError: true)
						// adding series data to redis
						jedis.set("charts.1.series" + it.no, it.value)
						jedis.set("charts.1.series" + it.no + ".additionalNodes", it.additionalNodes)
						jedis.lpush("charts.1.series"+ it.no + ".dataValue", it.data)
					}
				}
			}
		}
		//assert jedis.get("charts.1.type")
		System.out.println(jedis.get("charts.1.type"))
		System.out.println(jedis.get("charts.1.plotLinescolor"))
		System.out.println(jedis.get("charts.1.series1"))
		System.out.println(jedis.lrange("charts.1.series1.dataValue",0,-1))
    }
    def destroy = {
    }
}
