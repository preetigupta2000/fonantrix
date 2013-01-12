<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="main">
  </head>

  <body>
	<div id="page-title">
		<h1><a href="services"><g:message code="services.site.heading" /></a> </h1>
		<div class="service-icon-small service-web-dev-small">
			<i class="icon-cogs"></i> <fon:message type="text" url="admin" code="services.site.item5.head" />
		</div> <!-- /service-icon -->
		<p><fon:message type="textarea" url="admin" code="services.site.automation.note" /></p>
		
	</div> <!-- /page-title -->

	
	<div id="content">
		
		<div class="container">
			
			
			<div class="row">
				
				<div class="grid-12">
					
					<div id="service-mobile-dev">
						
						<div class="service-details mobility">
							<img class="pull-right" src="${resource(dir: 'images', file: 'automation.jpg')}" alt="" />
							<p><fon:message type="textarea" url="admin" code="services.site.automation.text.p1" /></p>						
							<h4><fon:message type="text" url="admin" code="services.site.automation.head1" /></h4>
							<img class="pull-left" src="${resource(dir: 'images', file: 'automation2.jpg')}" alt="" />
							<ul>
								<li><fon:message type="textarea" url="admin" code="services.site.automation.head1.bullet1" /></li>
								<li><fon:message type="textarea" url="admin" code="services.site.automation.head1.bullet2" /></li>
								<li><fon:message type="textarea" url="admin" code="services.site.automation.head1.bullet3" /></li>								
								<li><fon:message type="textarea" url="admin" code="services.site.automation.head1.bullet4" /></li>
								<li><fon:message type="textarea" url="admin" code="services.site.automation.head1.bullet5" /></li>
								<li><fon:message type="textarea" url="admin" code="services.site.automation.head1.bullet6" /></li>
								<li><fon:message type="textarea" url="admin" code="services.site.automation.head1.bullet7" /></li>
								<li><fon:message type="textarea" url="admin" code="services.site.automation.head1.bullet8" /></li>
								<li><fon:message type="textarea" url="admin" code="services.site.automation.head1.bullet9" /></li>
								<li><fon:message type="textarea" url="admin" code="services.site.automation.head1.bullet10" /></li>
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
		$('.editable').editable();
	</script>	
  </body>
</html>
