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
		<div class="service-icon-small">
			<i class="icon-map-marker"></i> <g:message code="services.site.item1.head" />
		</div> <!-- /service-icon -->
		<p><g:message code="services.site.mobility.note" /></p>
	</div> <!-- /page-title -->

	
	<div id="content">
		
		<div class="container">
			
			
			<div class="row">
				
				<div class="grid-12">
					
					<div id="service-mobile-dev">
						<img class="pull-right" src="${resource(dir: 'images/gallery', file: 'report-custom-mobile.jpg')}" alt="" />
						<div class="service-details mobility">					
							<p><g:message code="services.site.mobility.text.p1" /></p>
							<ul>
								<li><g:message code="services.site.mobility.text.bullet1" /></li>
								<li><g:message code="services.site.mobility.text.bullet2" /></li>
								<li><g:message code="services.site.mobility.text.bullet3" /></li>
								<li><g:message code="services.site.mobility.text.bullet4" /></li>
								<li><g:message code="services.site.mobility.text.bullet5" /></li>
								<li><g:message code="services.site.mobility.text.bullet6" /></li>
							</ul>
							<p><g:message code="services.site.mobility.text.p2" /></p>
							<p><g:message code="services.site.mobility.text.p3" /></p>
							<ul>
								<li><g:message code="services.site.mobility.text.p3.bullet1" /></li>
								<li><g:message code="services.site.mobility.text.p3.bullet2" /></li>
								<li><g:message code="services.site.mobility.text.p3.bullet3" /></li>
							</ul>
							<p><g:message code="services.site.mobility.text.p4" /></p>
							<p><g:message code="services.site.mobility.text.p5" /></p>
							<ul>
								<li><g:message code="services.site.mobility.text.p5.bullet1" /></li>
								<li><g:message code="services.site.mobility.text.p5.bullet2" /></li>
								<li><g:message code="services.site.mobility.text.p5.bullet3" /></li>
							</ul>
							<h4><g:message code="services.site.mobility.text.p6" /></h4>
							<h5><g:message code="services.site.mobility.text.p6.head1" /></h5>
							<ul>
								<li><g:message code="services.site.mobility.text.p6.head1.bullet1" /></li>
								<li><g:message code="services.site.mobility.text.p6.head1.bullet2" /></li>
								<li><g:message code="services.site.mobility.text.p6.head1.bullet3" /></li>
							</ul>
							<h5><g:message code="services.site.mobility.text.p6.head2" /></h5>
							<ul>
								<li><g:message code="services.site.mobility.text.p6.head2.bullet1" /></li>
								<li><g:message code="services.site.mobility.text.p6.head2.bullet2" /></li>
								<li><g:message code="services.site.mobility.text.p6.head2.bullet3" /></li>
								<li><g:message code="services.site.mobility.text.p6.head2.bullet4" /></li>
							</ul>
							<h5><g:message code="services.site.mobility.text.p6.head3" /></h5>
							<ul>
								<li><g:message code="services.site.mobility.text.p6.head3.bullet1" /></li>
								<li><g:message code="services.site.mobility.text.p6.head3.bullet2" /></li>
								<li><g:message code="services.site.mobility.text.p6.head3.bullet3" /></li>
								<li><g:message code="services.site.mobility.text.p6.head3.bullet4" /></li>
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
