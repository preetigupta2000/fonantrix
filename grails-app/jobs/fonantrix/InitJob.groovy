package fonantrix

import org.grails.plugins.localization.*

class InitJob {
    static triggers = {
      simple repeatInterval: 50000l, repeatCount: 0
	  		 // execute job once in 5 seconds
    }

    def execute() {
        // execute job
		Localization.load()
    }
}
