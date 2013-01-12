<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="main">
  </head>

  <body>
	<div id="page-title">
		<h1><a href="services"><g:message code="services.site.heading" /></a> </h1>
		<div class="service-icon-small service-web-dev-small">
			<i class="icon-cogs"></i> <fon:message type="text" url="admin" code="services.site.item3.head" />
		</div> <!-- /service-icon -->
		<p><fon:message type="textarea" url="admin" code="services.site.webbased.note" /></p>
		
	</div> <!-- /page-title -->

	
	<div id="content">
		
		<div class="container">
			
			
			<div class="row">
				
				<div class="grid-12">
					
					<div id="service-mobile-dev">
						
						<div class="service-details mobility">
							<img class="pull-right" src="${resource(dir: 'images/gallery', file: 'web.png')}" alt="" />
							<p><fon:message type="textarea" url="admin" code="services.site.webbased.text.p1" /></p>						
							<h4><fon:message type="textarea" url="admin" code="services.site.webbased.text.p2" /></h4>
							<h5><fon:message type="text" url="admin" code="services.site.webbased.text.p2.head1" /></h5>
							<ul>
								<li><fon:message type="textarea" url="admin" code="services.site.webbased.text.p2.head1.bullet1" /></li>
								<li><fon:message type="textarea" url="admin" code="services.site.webbased.text.p2.head1.bullet2" /></li>
								<li><fon:message type="textarea" url="admin" code="services.site.webbased.text.p2.head1.bullet3" /></li>								
								<li><fon:message type="textarea" url="admin" code="services.site.webbased.text.p2.head1.bullet4" /></li>
								<li><fon:message type="textarea" url="admin" code="services.site.webbased.text.p2.head1.bullet5" /></li>								
							</ul>
							<div>
								<img class="pull-right" src="${resource(dir: 'images', file: 'responsive_design.png')}" alt="" />
								<h4><fon:message type="text" url="admin" code="services.site.webbased.text.p2.head2" /></h4>
								<p><fon:message type="textarea" url="admin" code="services.site.webbased.text.p2.head2.p1" /></p>
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
