<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
	<r:require modules="homestyles"/>
  </head>

<body>
	<div id="masthead">
		
		<div class="container">
		
			<div id="masthead-carousel" class="carousel slide">
				
				<div class="carousel-inner">
					<div class="active item">
						<img src="${resource(dir: 'images/masthead', file: 'masthead.jpg')}" alt="" />
				
						<div class="masthead-details">
							
							<h2>Masthead title goes right here!</h2>
							
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
							
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
							
						</div> <!-- /masthead-details -->
					</div> <!-- /item -->
					
					<div class="item">
						<img src="${resource(dir: 'images/masthead', file: 'masthead-2.jpg')}" alt="" />
				
						<div class="masthead-details">
							
							<h2>Masthead title goes right here!</h2>
							
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
							
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
							
						</div> <!-- /masthead-details -->
					</div> <!-- /item -->
					
					<div class="item">
						<img src="${resource(dir: 'images/masthead', file: 'masthead-4.jpg')}" alt="" />
				
						<div class="masthead-details">
							
							<h2>Masthead title goes right here!</h2>
							
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
							
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
							
						</div> <!-- /masthead-details -->
					</div> <!-- /item -->
					
					<div class="item">
						<img src="${resource(dir: 'images/masthead', file: 'masthead-3.jpg')}" alt="" />
				
						<div class="masthead-details">
							
							<h2>Masthead title goes right here!</h2>
							
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
							
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
							
						</div> <!-- /masthead-details -->
					</div> <!-- /item -->
					
				</div> <!-- /carousel-inner -->
				
				<a class="carousel-control left" href="#masthead-carousel" data-slide="prev">&lsaquo;</a>
				<a class="carousel-control right" href="#masthead-carousel" data-slide="next">&rsaquo;</a>
				
			</div> <!-- /masthead-carousel -->
			
		</div> <!-- /container -->
	
	</div> <!-- /masthead -->
	
	
	
	
	<div id="content">
		
		<div class="container">
		
			<div class="row">
				<div id="welcome" class="grid-12">
					<h1>Welcome to Our Small Agency. We specialize in Web Design and Development. Check out our outstanding portfolio, and get in.</h1>
				</div>
			</div> <!-- /row -->
			
			
			<hr class="row-divider" />
			
			
			<div class="row divider service-container">
				
				<div class="grid-3">
					<h2><span class="slash">//</span> Our Services</h2>
					
					<p>Maecenas a mi nibh, eu euismod orci. Vivamus viverra lacus vitae.</p>
					
					<a href="javascript:;" class="btn btn-small btn-warning">More Services</a>
				</div>
				
				<div class="grid-3">
					<div class="service-item">
						
						<h3>
							<i class="icon-tint"></i> 
							Website Design
						</h3> <!-- /service-icon -->
						
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
						
						<p><a href="javascript:;" class="">Learn More »</a></p>
						
					</div> <!-- /service -->
				</div>
				
				<div class="grid-3">
					<div class="service-item">
						
						<h3>
							<i class="icon-map-marker"></i>		
							Mobile Development
						</h3> <!-- /service-icon -->
						
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
						
						<p><a href="javascript:;" class="">Learn More »</a></p>
						
					</div>				
				</div>
				
				<div class="grid-3">
					<div class="service-item">
						
						<h3>
							<i class="icon-cogs"></i> 
							Web Development
						</h3> <!-- /service-icon -->
						
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
						
						<p><a href="javascript:;" class="">Learn More »</a></p>
						
					</div>			
				</div>
			</div> <!-- /row -->
			
			
			<hr class="row-divider" />
			
			
			<div class="row work-container">
				
				<div class="grid-3">
					<h2><span class="slash">//</span> Our Work</h2>
					
					<p>Maecenas a mi nibh, eu euismod orci. Vivamus viverra lacus vitae.</p>
					
					<a href="javascript:;" class="btn btn-small btn-warning">More Work</a>
					
				</div> <!-- /grid-3 -->
				
				<div class="grid-3">
					<div class="work-item">
						
						<h3>Portfolio Item #1</h3>
						
						<a class="thumbnail">
							<img src="${resource(dir: 'images/gallery', file: '1_small.jpg')}" alt="" />
						</a> <!-- /img -->
						
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						
						<p><a href="javascript:;" class="">View Project »</a></p>			
					</div>
				</div> <!-- /grid-3 -->
				
				<div class="grid-3">
					<div class="work-item">
						
						<h3>Portfolio Item #1</h3>
						
						<a class="thumbnail">
							<img src="${resource(dir: 'images/gallery', file: '2_small.jpg')}" alt="" />
						</a> <!-- /img -->
						
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						
						<p><a href="javascript:;" class="">View Project »</a></p>			
					</div>
				</div> <!-- /grid-3 -->
				
				<div class="grid-3">
					<div class="work-item">
						
						<h3>Portfolio Item #1</h3>
						
						<a class="thumbnail">
							<img src="${resource(dir: 'images/gallery', file: '3_small.jpg')}" alt="" />
						</a> <!-- /img -->
						
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						
						<p><a href="javascript:;" class="">View Project »</a></p>			
					</div>
				</div> <!-- /grid-3 -->
				
			</div> <!-- /row -->
			
			
			<hr class="row-divider" />
			
			
			<div class="row divider about-container">
				
				<div class="grid-3">				
					<h2><span class="slash">//</span> Our Story</h2>
					
					<p>Maecenas a mi nibh, eu euismod orci. Vivamus viverra lacus vitae.</p>
					
					<p><a href="javascript:;" class="btn btn-small btn-warning">More Story »</a>
				</p>
				
			</div> <!-- /grid-3 -->
			
			<div class="grid-4">
				<div class="about-item">
									
					<h3>About Us</h3>
					
					<p style="">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
					
					<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					
					<p><a href="javascript:;">Read More »</a></p>						
					
				</div> <!-- /about -->
			</div> <!-- /grid-4 -->
			
			<div class="grid-5">				
				<h3>Why Choose Us</h3>
			
				<div class="choose-item">
					
					<h3>
						<i class="icon-star"></i>
						Awesome #1							
					</h3>
					
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</div> <!-- /choose-item -->
			
				<div class="choose-item">
					<h3>
						<i class="icon-star"></i>
						Awesome #2							
					</h3>
					
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</div> <!-- /choose-item -->
				
				<div class="choose-item">
					
					<h3>
						<i class="icon-star"></i>
						Awesome #3							
					</h3>
					
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</div> <!-- /choose-item -->
				
				<p><a href="javascript:;">More Reasons »</a></p>
				
			</div> <!-- /grid-5 -->
				
			</div> <!-- /row -->
			
		</div> <!-- /container -->
		
	</div> <!-- /content -->

	<r:script disposition="defer">
		$(function () {
			$('#masthead-carousel').carousel ({ interval: false });
		});
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(1)').addClass("active");		
	</r:script>	
  </body>
</html>
