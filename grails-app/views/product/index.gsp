<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
	<r:require modules="pricingstyles"/>
  </head>

<body>
	<div id="page-title">
		
		<h1>Products - SocialTouch</h1>
		<p>Helps you stay in touch with people you should!</p>
		
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
						        		Android App	        		
					        		</div> <!-- /plan-title -->
					                
						            <div class="plan-price">
										<ul>
											<li><strong>Free</strong> setup</li>
											<li><strong>1</strong> Website</li>
											<li><strong>2</strong> Projects</li>
											<li><strong>1GB</strong> Storage</li>
										</ul>
									</div> <!-- /plan-price -->
									
						        </div> <!-- /plan-header -->       
						        
						        <div class="plan-features">
						        	<img src="${resource(dir: 'images', file: 'socialtouch.jpg')}" width="251" height="395" alt="Social Touch" />
								</div> <!-- /plan-features -->
								
								<div class="plan-actions">				
									<a target="_blank" href="http://www.socialtouch.co/Quick_Demo.html" class="btn">Quick Demo</a>				
								</div> <!-- /plan-actions -->
					
							</div> <!-- /plan -->
					    </div> <!-- /plan-container -->
					    
					    <div class="plan-container best-value">
					        <div class="plan">
						        <div class="plan-header">
					                
						        	<div class="plan-title">
						        		iPhone App	        		
					        		</div> <!-- /plan-title -->
					                
						            <div class="plan-price">
										<ul>
											<li><strong>Free</strong> setup</li>
											<li><strong>1</strong> Website</li>
											<li><strong>2</strong> Projects</li>
											<li><strong>1GB</strong> Storage</li>
										</ul>
									</div> <!-- /plan-price -->
									
						        </div> <!-- /plan-header -->	          
						        
						        <div class="plan-features">
									<img src="${resource(dir: 'images', file: 'iphone-screen.gif')}" height="395" alt="Social Touch" />
								</div> <!-- /plan-features -->
								
								<div class="plan-actions">				
									<a href="javascript:;" class="btn">Coming Soon !!!</a>				
								</div> <!-- /plan-actions -->
					
							</div> <!-- /plan -->
					    </div> <!-- /plan-container -->
					    
					</div> <!-- /pricing-plans -->
					
				</div> <!-- /grid-12 -->
				
			</div> <!-- /row -->
			
		</div> <!-- /container -->
		
	</div> <!-- /content -->	
	<r:script disposition="defer">
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(4)').addClass("active");
	</r:script>		
  </body>
</html>
