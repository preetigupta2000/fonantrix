<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
	<r:require modules="pricingstyles"/>
  </head>

<body>
	<div id="page-title">
		
		<h1>Products</h1>
		<p>We develop our own products and help companies worldwide to develop, test and support their commercial software products/solutions in shortest possible time and within their budget...</p>
		
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
						        		SocialTouch	        		
					        		</div> <!-- /plan-title -->
					                
						            <div class="plan-price">
						            	<p>Helps you stay in touch with people you should!</p>
										<ul>
											<li>Android & iPhone (coming soon!)</li>
											<li>Personal & Professional list</li>
											<li>Reminders & Prioritization</li>
											<li>Get all contacts in ONE</li>
										</ul>
									</div> <!-- /plan-price -->
									
						        </div> <!-- /plan-header -->       
						        
						        <div class="plan-features">
						        	<img style="margin-bottom:3em;" src="${resource(dir: 'images', file: 'android-v-iphone.jpg')}" alt="Social Touch" />
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
						        		Time Management	        		
					        		</div> <!-- /plan-title -->
					                
						            <div class="plan-price">
						            	<p>Helps you stay up to date with your schedule and objectives!</p>
										<ul>
											<li>Cross Domain & Devices</li>
											<li>Concentration and Focus</li>
											<li>Effective Scheduling</li>
											<li>Managing Conflicting Priorities</li>
										</ul>
									</div> <!-- /plan-price -->
									
						        </div> <!-- /plan-header -->	          
						        
						        <div class="plan-features">
									<img src="${resource(dir: 'images', file: 'problemsolvingmap-time.jpg')}" alt="Social Touch" />
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
