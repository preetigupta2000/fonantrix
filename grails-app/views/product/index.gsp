<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="main">
  </head>

<body>
	<div id="page-title">
		
		<h1><fon:message type="text" url="admin" code="products.site.heading" /></h1>
		<p><fon:message type="textarea" url="admin" code="products.site.note" /></p>
		
	</div> <!-- /page-title -->

	
	<div id="content">
		
		<div class="container">
			
			<div class="row">
				
				<div class="grid-12">
					
					<div class="pricing-plans plans-2">
						
						<div class="plan-container">
					        <div class="plan">
						        <div class="plan-header">
					                
						        	<div class="plan-title">
						        		<fon:message type="text" url="admin" code="products.site.product1.heading" />	        		
					        		</div> <!-- /plan-title -->
					                
						            <div class="plan-price">
						            	<p><fon:message type="textarea" url="admin" code="products.site.product1.details" /></p>
										<ul>
											<li><fon:message type="textarea" url="admin" code="products.site.product1.feature1" /></li>
											<li><fon:message type="textarea" url="admin" code="products.site.product1.feature2" /></li>
											<li><fon:message type="textarea" url="admin" code="products.site.product1.feature3" /></li>
											<li><fon:message type="textarea" url="admin" code="products.site.product1.feature4" /></li>
										</ul>
									</div> <!-- /plan-price -->
									
						        </div> <!-- /plan-header -->       
						        
						        <div class="plan-features">
						        	<img style="margin-bottom:3em;" src="${resource(dir: 'images', file: 'android-v-iphone.jpg')}" alt="Social Touch" />
								</div> <!-- /plan-features -->
								
								<div class="plan-actions">				
									<a target="_blank" href="http://www.socialtouch.co/Quick_Demo.html" class="btn"><g:message code="products.site.quickdemo" /></a>				
								</div> <!-- /plan-actions -->
					
							</div> <!-- /plan -->
					    </div> <!-- /plan-container -->
					    
					    <div class="plan-container best-value">
					        <div class="plan">
						        <div class="plan-header">
					                
						        	<div class="plan-title">
						        		<fon:message type="text" url="admin" code="products.site.product2.heading" />	        		
					        		</div> <!-- /plan-title -->
					                
						            <div class="plan-price">
						            	<p><fon:message type="textarea" url="admin" code="products.site.product2.details" /></p>
										<ul>
											<li><fon:message type="textarea" url="admin" code="products.site.product2.feature1" /></li>
											<li><fon:message type="textarea" url="admin" code="products.site.product2.feature2" /></li>
											<li><fon:message type="textarea" url="admin" code="products.site.product2.feature3" /></li>
											<li><fon:message type="textarea" url="admin" code="products.site.product2.feature4" /></li>
										</ul>
									</div> <!-- /plan-price -->
									
						        </div> <!-- /plan-header -->	          
						        
						        <div class="plan-features">
									<img src="${resource(dir: 'images', file: 'problemsolvingmap-time.jpg')}" alt="Social Touch" />
								</div> <!-- /plan-features -->
								
								<div class="plan-actions">				
									<a href="javascript:;" class="btn"><g:message code="products.site.comingsoon" /></a>				
								</div> <!-- /plan-actions -->
					
							</div> <!-- /plan -->
					    </div> <!-- /plan-container -->
					    
					</div> <!-- /pricing-plans -->
					
				</div> <!-- /grid-12 -->
				
			</div> <!-- /row -->
			
		</div> <!-- /container -->
		
	</div> <!-- /content -->	
	<script>
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(4)').not(".language").addClass("active");
		$('.editable').editable();		
	</script>		
  </body>
</html>
