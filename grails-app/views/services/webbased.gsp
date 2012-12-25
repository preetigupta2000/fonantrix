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
			<i class="icon-cogs"></i> Web based Data Visualization & Reporting
		</div> <!-- /service-icon -->
		<p>Web-based systems are making it easier to analyze and spread data for those who need to know more. This potential is still not widely used though.</p>
		
	</div> <!-- /page-title -->

	
	<div id="content">
		
		<div class="container">
			
			
			<div class="row">
				
				<div class="grid-12">
					
					<div id="service-mobile-dev">
						
						<div class="service-details mobility">
							<img class="pull-right" src="${resource(dir: 'images/gallery', file: 'web.png')}" alt="" />
							<p>Fonantrix has been working in the field of custom software development for Data visualization and reporting services. Our expert team has taken part in hundreds of application development projects. We are experienced in developing management system, reporting applications and advanced systems with complex business logic dealing with large amounts of data and transactions. We are able to supply you with an innovative, trustworthy software solution to complement your most complicated business ideas.</p>						
							<h4>The scope of our services often includes:</h4>
							<h5>Application Services </h5>
							<ul>
								<li><b>Application Development</b> - custom application development tailored to the client's specific business requirements. We deliver rich internet applications combining our solid cross-domain experience, technological expertise and an established development methodology.</li>
								<li><b>Application Migration and Porting</b> - our migration services include porting applications to a new technology platform, database and server porting, data migration, standalone-to-web migration of legacy applications.</li>
								<li><b>Application Reengineering and Enhancement</b> - we provide reverse engineering of existing systems to understand their business functionality and technical architecture and introduce new/enhanced business logic and improved performance.</li>								
								<li><b>Application Audit and Testing</b> - independent software audit and testing of your web application including code reviews, functionality-to-requirements verification, GUI usability and HTML standards compliance testing and performance/security/stability testing.</li>
								<li><b>Application Maintenance</b> - our web application maintenance and support services are aimed at ensuring stable and uninterrupted operation of your business system. The services include problems analysis, resolution and application enhancement.</li>								
							</ul>
							<div>
								<img class="pull-right" src="${resource(dir: 'images', file: 'responsive_design.png')}" alt="" />
								<h4>Responsive Web Design</h4>
								<p>Browsers are changing. Your users might be on a desktop, or they might be using their smartphone or tablet. Very soon, they might be using something that doesn’t yet exist to access your site. The point is that your website needs to detect and respond to the device and possibilities of your audience’s actual use. We employs responsive, DRY techniques to allow the same website to present comfortably and appropriately in all browser environments. No more pinch and zoom.</p>
							</div>
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
