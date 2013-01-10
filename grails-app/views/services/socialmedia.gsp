<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="main">
	<g:if test="${direction == 'rtl'}">
	    <r:require modules="servicestylesrtl"/>
	</g:if>
	<g:else>
		<r:require modules="servicestyles"/>
	</g:else>
  </head>

  <body>
	<div id="page-title">
		<h1><a href="services"><g:message code="services.site.heading" /></a> </h1>
		<div class="service-icon-small service-web-design-small">
			<i class="icon-tint"></i> <fon:message type="text" url="admin" code="services.site.item2.head" />
		</div> <!-- /service-icon -->
		<p><fon:message type="textarea" url="admin" code="services.site.socialmedia.note" /></p>
		
	</div> <!-- /page-title -->

	
	<div id="content">
		
		<div class="container">
			
			
			<div class="row">
				
				<div class="grid-12">
					
					<div id="service-mobile-dev">
						
						<div class="service-details">
							<img class="pull-right" src="${resource(dir: 'images/gallery', file: 'social-networking-logos.png')}" alt="" />
							<p><fon:message type="textarea" url="admin" code="services.site.socialmedia.text.p1" /></p>						
							<p><fon:message type="textarea" url="admin" code="services.site.socialmedia.text.p2" /></p>	
							<h4><fon:message type="text" url="admin" code="services.site.socialmedia.head1.heading" /></h4>
							<p><fon:message type="textarea" url="admin" code="services.site.socialmedia.head1.text.p1" /></p>												
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
