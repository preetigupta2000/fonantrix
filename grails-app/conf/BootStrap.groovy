import groovy.json.JsonSlurper
import fonantrix.Carousel
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
		
		String jsonHomeData = new File(servletContext.getRealPath("/json/home.json")).text
		if (!Carousel.count()) {
			def slurper = new JsonSlurper()
			def allCarousels = slurper.parseText(jsonHomeData)
			allCarousels.carousels.each
			{
				new Carousel(name: it.name, description: it.description, description2: it.description2, imageName: it.imageName, imageDir: it.imageDir, sequence: it.sequence).save(failOnError: true)
			}
		}
    }
    def destroy = {
    }
}
