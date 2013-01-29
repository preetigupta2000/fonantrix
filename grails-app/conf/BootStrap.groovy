import groovy.json.JsonSlurper
import fonantrix.Chart
import fonantrix.authentication.User
import fonantrix.authentication.Role
import fonantrix.authentication.UserRole

class BootStrap {

    def init = { servletContext ->

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
			allCharts.charts.each
			{
				new Chart(type: it.type, title: it.title, subtitle: it.subtitle, xAxisTitle: it.xAxisTitle, xAxisjson: it.xAxisjson, yAxistitle: it.yAxistitle, plotLinescolor: it.plotLinescolor, 
							seriesData: it.seriesData, seriesData1: it.seriesData1, seriesData2: it.seriesData2, seriesData3: it.seriesData3, seriesData4: it.seriesData4, seriesData5: it.seriesData5,
							seriesData6: it.seriesData6, seriesData7: it.seriesData7, seriesData8: it.seriesData8, seriesData9: it.seriesData9).save(failOnError: true)
			}
		}
    }
    def destroy = {
    }
}
