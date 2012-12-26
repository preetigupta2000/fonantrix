<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
	<r:require modules="servicestyles"/>
  </head>

  <body>
	<div id="page-title">
		<h1><a href="services">Our Services</a> </h1>
		<div class="service-icon-small service-web-design-small">
			<i class="icon-tint"></i> Social Media Integration
		</div> <!-- /service-icon -->
		<p>You've probably heard the buzz about how social media can help expose your business to a huge number of potential clients. Some of you may already have used and understand how social media can be used and what the advantages are of using services like Twitter, Facebook Pages, LinkedIn and other social media sites to promote and build a reputation online.</p>
		
	</div> <!-- /page-title -->

	
	<div id="content">
		
		<div class="container">
			
			
			<div class="row">
				
				<div class="grid-12">
					
					<div id="service-mobile-dev">
						
						<div class="service-details">
							<img class="pull-right" src="${resource(dir: 'images/gallery', file: 'social-networking-logos.png')}" alt="" />
							<p>Fonantrix can help you to integrate a wide range of social media technologies, from Facebook "Like" buttons and Twitter integration, to more advanced, deep-level integration with both established and emerging social media platforms.</p>						
							<p>We have experience in developing real time social media applications for facebook, twitter, youtube.</p>	
							<h4>Enterprise Java</h4>
							<p>We love Java, and not just in our mugs. With unparalleled scalability and utility, this server-side Internet language is technology for our projects. The large number of useful frameworks and libraries created for Java, plus a thriving developer community, keep it flexible and up-to-date, just like our enterprise developers. So please, ask us about what we can do with Java for your enterprise project.</p>												
						</div> <!-- /service-details -->
						
					</div> <!-- /service -->
					
				</div> <!-- /grid-4 -->
				
			</div> <!-- /row -->
								
			
		</div> <!-- /container -->
		
	</div> <!-- /content -->
	<r:script disposition="defer">
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(3)').addClass("active");
	</r:script>	
  </body>
</html>
