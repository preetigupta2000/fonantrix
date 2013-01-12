<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="main">
  </head>

  <body>
	<div id="page-title">
		<h1><a href="services"><g:message code="services.site.heading" /></a> </h1>
		<div class="service-icon-small">
			<i class="icon-map-marker"></i> <fon:message type="text" url="admin" code="services.site.item4.head" />
		</div> <!-- /service-icon -->
		<p><fon:message type="textarea" url="admin" code="services.site.cloud.note" /></p>
		
	</div> <!-- /page-title -->

	
	<div id="content">
		
		<div class="container">
			
			
			<div class="row">
				
				<div class="grid-12">
					
					<div id="service-mobile-dev">
						
						<div class="service-details mobility">
							<p><fon:message type="textarea" url="admin" code="services.site.cloud.text.p1" /></p>						
							<h4><fon:message type="text" url="admin" code="services.site.cloud.text.p1.head1" /></h4>
							<div>
								<img class="pull-left" src="${resource(dir: 'images', file: 'ama.png')}" alt="Amazon WebServices" />
								<h5><fon:message type="text" url="admin" code="services.site.cloud.text.p1.head1.subtitle" /></h5>
								<p><fon:message type="textarea" url="admin" code="services.site.cloud.text.p1.head1.text.p1" /></p>
							</div>
							<h4 style="clear: both;"><fon:message type="text" url="admin" code="services.site.cloud.text.p1.head2" /></h4>
							<div>
								<img class="pull-left" src="${resource(dir: 'images', file: 'google.png')}" alt="Google" />
								<h5><fon:message type="text" url="admin" code="services.site.cloud.text.p1.head2.subtitle" /></h5>
								<p><fon:message type="textarea" url="admin" code="services.site.cloud.text.p1.head2.text.p1" /></p>
							</div>
							<h4 style="clear: both;"><fon:message type="text" url="admin" code="services.site.cloud.text.p1.head3" /></h5>
							<div>
								<img class="pull-left" src="${resource(dir: 'images', file: 'sales.png')}" alt="Salesforce" />
								<h5><fon:message type="text" url="admin" code="services.site.cloud.text.p1.head3.subtitle" /></h5>
								<p><fon:message type="textarea" url="admin" code="services.site.cloud.text.p1.head3.text.p1" /></p>
							</div>							
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
