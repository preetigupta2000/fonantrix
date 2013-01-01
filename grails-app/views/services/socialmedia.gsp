<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="main">
	<r:require modules="servicestyles"/>
  </head>

  <body>
	<div id="page-title">
		<h1><a href="services"><g:message code="services.site.heading" /></a> </h1>
		<div class="service-icon-small service-web-design-small">
			<i class="icon-tint"></i> <g:message code="services.site.item2.head" />
		</div> <!-- /service-icon -->
		<p><g:message code="services.site.socialmedia.note" /></p>
		
	</div> <!-- /page-title -->

	
	<div id="content">
		
		<div class="container">
			
			
			<div class="row">
				
				<div class="grid-12">
					
					<div id="service-mobile-dev">
						
						<div class="service-details">
							<img class="pull-right" src="${resource(dir: 'images/gallery', file: 'social-networking-logos.png')}" alt="" />
							<p><g:message code="services.site.socialmedia.text.p1" /></p>						
							<p><g:message code="services.site.socialmedia.text.p2" /></p>	
							<h4><g:message code="services.site.socialmedia.head1.heading" /></h4>
							<p><g:message code="services.site.socialmedia.head1.text.p1" /></p>												
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
