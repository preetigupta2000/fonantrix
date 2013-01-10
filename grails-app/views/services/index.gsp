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
		
		<h1><fon:message type="text" url="admin" code="services.site.heading" /></h1>
		<p><fon:message type="textarea" url="admin" code="services.site.note" /></p>
		
	</div> <!-- /page-title -->

	
	<div id="content">
		
		<div class="container">
			
			
			<div class="row">
				
				<div class="grid-4">
					
					<div id="service-mobile-dev" class="service">
						
						<div class="service-icon">
							<i class="icon-map-marker"></i>
						</div> <!-- /service-icon -->	
						
						<h3><fon:message type="text" url="admin" code="services.site.item1.head" /></h3>						
						
						<div class="service-details">
							<p><fon:message type="textarea" url="admin" code="services.site.item1.text.p1" /></p>						
						</div> <!-- /service-details -->
						
					</div> <!-- /service -->
					
				</div> <!-- /grid-4 -->
				
				<div class="grid-4">
					
					<div id="service-web-design" class="service">
						
						<div class="service-icon">
							<i class="icon-tint"></i>
						</div> <!-- /service-icon -->
						
						<h3><fon:message type="text" url="admin" code="services.site.item2.head" /></h3>							
						
						<div class="service-details">
							<p><fon:message type="textarea" url="admin" code="services.site.item2.text.p1" /></p>
						</div> <!-- /service-details -->
						
					</div> <!-- /service -->
					
				</div> <!-- /grid-4 -->
				
				<div class="grid-4">
					
					<div id="service-web-dev" class="service">
						
						<div class="service-icon">
							<i class="icon-cogs"></i>
						</div> <!-- /service-icon -->
						
						<h3><fon:message type="text" url="admin" code="services.site.item3.head" /></h3>							
						
						<div class="service-details">
							<p><fon:message type="textarea" url="admin" code="services.site.item3.text.p1" /></p>						
						</div> <!-- /service-details -->
						
					</div> <!-- /service -->
					
				</div> <!-- /grid-4 -->
				
				
			</div> <!-- /row -->
			
			<div class="row">
				
				<div class="grid-4">
					
					<div id="service-mobile-dev" class="service">
						
						<div class="service-icon">
							<i class="icon-cloud"></i>
						</div> <!-- /service-icon -->	
						
						<h3><fon:message type="text" url="admin" code="services.site.item4.head" /></h3>						
						
						<div class="service-details">
							<p><fon:message type="textarea" url="admin" code="services.site.item4.text.p1" /></p>						
						</div> <!-- /service-details -->
						
					</div> <!-- /service -->
					
				</div> <!-- /grid-4 -->
				
				<div class="grid-4">
					
					<div id="service-web-dev" class="service">
						
						<div class="service-icon">
							<i class="icon-wrench"></i>
						</div> <!-- /service-icon -->
						
						<h3><fon:message type="text" url="admin" code="services.site.item5.head" /></h3>							
						
						<div class="service-details">
							<p><fon:message type="textarea" url="admin" code="services.site.item5.text.p1" /></p>						
						</div> <!-- /service-details -->
						
					</div> <!-- /service -->
					
				</div> <!-- /grid-4 -->
				
				<div class="grid-4">
										
				</div> <!-- /grid-4 -->
				
			</div> <!-- /row -->
						
			
		</div> <!-- /container -->
		
	</div> <!-- /content -->
	<script>
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(3)').not(".language").addClass("active");
		$('.editable').editable();
	</script>	
  </body>
</html>
