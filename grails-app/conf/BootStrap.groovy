import groovy.json.JsonSlurper
import fonantrix.Carousel

class BootStrap {

    def init = { servletContext ->
		
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
