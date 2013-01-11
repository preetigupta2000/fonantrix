includeTargets << grailsScript("_GrailsInit")

target(deployCSS:"Deploys CSS files") {
	grailsConsole.updateStatus "Started deploying CSS.....";
	compileLESS(argsMap);
	generateRTLCSS(argsMap);
	grailsConsole.updateStatus "CSS deployed successfully.....";
}

private compileLESS(def argsMap, def Constants, def config) {
	grailsConsole.updateStatus "Compiling LESS into CSS....."
	if(argsMap.skin){
		runCompileLess(argsMap.skin,Constants,config)
	} else {
		def skins = config.cgrails.skinning.skins
		skins.put(config.cgrails.skinning.baseskin,"")
		skins.each {skin->
			String skinname = skin.key
			runCompileLess(skinname,Constants,config)
		}
		
	}
	grailsConsole.updateStatus "Successfully Compiled LESS into CSS....."
}

private generateRTLCSS(def argsMap, def Constants, def config) {
	grailsConsole.updateStatus "Generating RTL CSS....."
	if(argsMap.skin){
		runRTLCompileLess(argsMap.skin,Constants,config)
	} else {
		def skins = config.cgrails.skinning.skins
		skins.put(config.cgrails.skinning.baseskin,"")
		skins.each{skin->
			String skinname = skin.key
			runRTLCompileLess(skinname,Constants,config)
		}
	}
	grailsConsole.updateStatus "Successfully generated RTL CSS....."
}

private runCompileLess(def skinname, def Constants, def config){
	def lessFileArray = config.cgrails.less.files
	String cssDir = Constants.CGRAILS_CSS_FOLDER_LOCATION
	lessFileArray.each {lessFilepath->
		String inputFilePath = "${cssDir}/${Constants.LESS_FOLDER_NAME}/${lessFilepath}.less"
		File inputFile = new File(inputFilePath)
		if(inputFile.exists()) {
			String ouputFilePath = "${cssDir}/${Constants.LESS_FOLDER_NAME}/${lessFilepath}.css"
			File ouputFile = new File(ouputFilePath)
			if(ouputFile.exists()) {
				ouputFile.delete()
			}
			grailsConsole.updateStatus "Compiling ${inputFilePath} to ${ouputFilePath} ....."
			ant.exec(failonerror: "false",executable:"cmd"){
				arg(value:"/c")
				arg(value:"cscript")
				arg(value:"//nologo")
				arg(value:"${cgrailsPluginDir}/" + Constants.LESS_BUILDCOMPILER_PATH)
				arg(value:"${inputFilePath}")
				arg(value:"${ouputFilePath}")
				//arg(value:"-compress")
			}
		} else {
			grailsConsole.updateStatus "ERROR.....";
			grailsConsole.updateStatus "LESS file not found: " + inputFilePath;
			grailsConsole.updateStatus "Please specify correct LESS file path in CgrailsConfig.";
			exit(1)
		}
	}
}
private runRTLCompileLess(def skinname, def Constants, def config){
	String cssDir = Constants.CGRAILS_CSS_FOLDER_LOCATION
	def cssFileArray = config.cgrails.less.files
	cssFileArray.each {cssFilepath->
		String inputFilePath = "${cssDir}/${skinname}/${Constants.LESS_FOLDER_NAME}/${cssFilepath}.css"
		File inputFile = new File(inputFilePath)
		if(inputFile.exists()) {
			String ouputFilePath = "${cssDir}/${skinname}/${Constants.LESS_FOLDER_NAME}/${cssFilepath}-rtl.css"
			File ouputFile = new File(ouputFilePath)
			if(ouputFile.exists()) {
				ouputFile.delete()
			}
			grailsConsole.updateStatus "Compiling ${inputFilePath} to ${ouputFilePath} ....."
			ant.exec(executable:"cmd"){
				arg(value:"/c")
				arg(value:"r2")
				arg(value:"${inputFilePath}")
				arg(value:"${ouputFilePath}")
			}
		} else {
			grailsConsole.updateStatus "ERROR.....";
			grailsConsole.updateStatus "File not found: " + inputFilePath;
			grailsConsole.updateStatus "Please specify correct LESS file path in CgrailsConfig.";
			exit(1)
		}
	}
}

setDefaultTarget(deployCSS)
