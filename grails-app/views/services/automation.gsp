<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
	<r:require modules="servicestyles"/>
  </head>

  <body>
	<div id="page-title">
		<h1><a href="services">Our Services</a> </h1>
		<div class="service-icon-small service-web-dev-small">
			<i class="icon-cogs"></i> Automation - Quality Assurance
		</div> <!-- /service-icon -->
		<p>Quality assurance and testing are extremely crucial in the software development cycle and should be introduced at the earliest stage of the project.</p>
		
	</div> <!-- /page-title -->

	
	<div id="content">
		
		<div class="container">
			
			
			<div class="row">
				
				<div class="grid-12">
					
					<div id="service-mobile-dev">
						
						<div class="service-details mobility">
							<img class="pull-right" src="${resource(dir: 'images', file: 'automation.jpg')}" alt="" />
							<p>The dedicated Quality Assurance Department at Fonantrix uses a wide range of comprehensive testing methods and tools like QTP, selenium to ensure that we deliver only the highest quality solutions. Fonantrix QA specialists have expertise in multiple technologies, platforms and standards. Our experience in domains embraces such areas as reporting application and advanced web portals, complex internet applications and client-server software.</p>						
							<h4>Quality Assurance and Testing Services</h4>
							<img class="pull-left" src="${resource(dir: 'images', file: 'automation2.jpg')}" alt="" />
							<ul>
								<li>Functional and Regression Testing</li>
								<li>GUI and Usability Testing</li>
								<li>Accessibility Testing</li>								
								<li>Compatibility Testing</li>
								<li>Performance Testing</li>
								<li>Installation/Configuration Testing</li>
								<li>System/Integration Testing</li>
								<li>Security Testing</li>
								<li>Internationalization/Localization Testin</li>
								<li>User Acceptance Testing (UAT)</li>
							</ul>							
						</div> <!-- /service-details -->
						
					</div> <!-- /service -->
					
				</div> <!-- /grid-4 -->
				
			</div> <!-- /row -->
								
			
		</div> <!-- /container -->
		
	</div> <!-- /content -->
	<script>
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(3)').addClass("active");
	</script>	
  </body>
</html>
