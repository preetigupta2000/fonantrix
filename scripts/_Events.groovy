includeTargets << grailsScript("_GrailsInit")
eventPackagingEnd = {kind->	
		includeTargets << new File("scripts/DeployCss.groovy")
		deployCSS()
}


