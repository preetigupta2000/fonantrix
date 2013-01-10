<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="main">
	<g:if test="${direction == 'rtl'}">
	    <r:require modules="homestylesrtl"/>
	</g:if>
	<g:else>
		<r:require modules="homestyles"/>
	</g:else> 	
  </head>

<body>
	<div id="masthead">
		
		<div class="container">
		
			<div id="masthead-carousel" class="carousel slide">
				
				<div class="carousel-inner">
					<div class="active item">
						<img src="${resource(dir: 'images/masthead', file: 'masthead.jpg')}" alt="" />
				
						<div class="masthead-details">
							
							<h2><fon:message code="home.site.carousel.item1.head" addstyle="biggertext" required="Required" type="text" url="admin" /></h2>
							
							<p><fon:message code="home.site.carousel.item1.text.p1" type="textarea" url="admin" /></p>
							
							<p><fon:message code="home.site.carousel.item1.text.p2" type="textarea" url="admin" /></p>
							
						</div> <!-- /masthead-details -->
					</div> <!-- /item -->
					
					<div class="item">
						<img src="${resource(dir: 'images/masthead', file: 'masthead-2.jpg')}" alt="" />
				
						<div class="masthead-details">
							
							<h2><fon:message code="home.site.carousel.item2.head" addstyle="biggertext" required="Required" type="text" url="admin" /></h2>
							
							<p><fon:message code="home.site.carousel.item2.text.p1" type="textarea" url="admin" /></p>
							
							<p><fon:message code="home.site.carousel.item2.text.p2" type="textarea" url="admin" /></p>
							
						</div> <!-- /masthead-details -->
					</div> <!-- /item -->
					
					<div class="item">
						<img src="${resource(dir: 'images/masthead', file: 'masthead-4.jpg')}" alt="" />
				
						<div class="masthead-details">
							
							<h2><fon:message code="home.site.carousel.item3.head" addstyle="biggertext" required="Required" type="text" url="admin" /></h2>
							
							<p><fon:message code="home.site.carousel.item3.text.p1" type="textarea" url="admin" /></p>
							
							<p><fon:message code="home.site.carousel.item3.text.p2" type="textarea" url="admin" /></p>
							
						</div> <!-- /masthead-details -->
					</div> <!-- /item -->
					
					<div class="item">
						<img src="${resource(dir: 'images/masthead', file: 'masthead-3.jpg')}" alt="" />
				
						<div class="masthead-details">
							
							<h2><fon:message code="home.site.carousel.item4.head" addstyle="biggertext" required="Required" type="text" url="admin" /></h2>
							
							<p><fon:message code="home.site.carousel.item4.text.p1" type="textarea" url="admin" /></p>
							
							<p><fon:message code="home.site.carousel.item4.text.p2" type="textarea" url="admin" /></p>
							
						</div> <!-- /masthead-details -->
					</div> <!-- /item -->
					
					<div class="item">
						<img src="${resource(dir: 'images/masthead', file: 'masthead-3.jpg')}" alt="" />
				
						<div class="masthead-details">
							
							<h2><fon:message code="home.site.carousel.item5.head" addstyle="biggertext" required="Required" type="text" url="admin"/></h2>
							
							<p><fon:message code="home.site.carousel.item5.text.p1" type="textarea" url="admin" /></p>
							
							<p><fon:message code="home.site.carousel.item5.text.p2" type="textarea" url="admin" /></p>
							
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
					<h1><fon:message code="home.site.welcome.heading" type="textarea" url="admin" /></h1>
				</div>
			</div> <!-- /row -->
			
			
			<hr class="row-divider" />
			
			<div class="row work-container">
				
				<div class="grid-3">
					<h2><span class="slash">//</span> <fon:message code="home.site.service.heading"  type="text" url="admin"/></h2>
					
					<p><fon:message code="home.site.service.note" type="textarea" url="admin"/></p>
					
					<a href="services" class="btn btn-small btn-warning"><fon:message code="home.site.service.button.text"/></a>
					
				</div> <!-- /grid-3 -->
				
				<div class="grid-3">
					<div class="work-item">
												
						<h3><fon:message code="home.site.service.item1.heading" type="text" url="admin"/></h3>
						
						<a class="thumbnail">
							<img src="${resource(dir: 'images/gallery', file: 'report-custom-mobile.jpg')}" alt="" />
						</a> <!-- /img -->
						
						<p><fon:message code="home.site.service.item1.summary" type="textarea" url="admin"/></p>
						
						<p><a href="mobility" class="">Read More »</a></p>			
					</div>
				</div> <!-- /grid-3 -->
				
				<div class="grid-3">
					<div class="work-item">
						
						<h3><fon:message code="home.site.service.item2.heading" type="text" url="admin"/></h3>
						
						<a class="thumbnail">
							<img src="${resource(dir: 'images/gallery', file: 'social-networking-logos.png')}" alt="" />
						</a> <!-- /img -->
						<p><fon:message code="home.site.service.item2.summary" type="textarea" url="admin"/></p>						
						<p><a href="socialmedia" class="">Read More »</a></p>			
					</div>
				</div> <!-- /grid-3 -->
				
				<div class="grid-3">
					<div class="work-item">
						
						<h3><fon:message code="home.site.service.item3.heading" type="text" url="admin" /></h3>
						
						<a class="thumbnail">
							<img src="${resource(dir: 'images/gallery', file: 'web.png')}" alt="" />
						</a> <!-- /img -->
						<p><fon:message code="home.site.service.item3.summary" type="textarea" url="admin" /></p>
												
						<p><a href="webbased" class="">Read More »</a></p>			
					</div>
				</div> <!-- /grid-3 -->
				
			</div> <!-- /row -->			
			
			<hr class="row-divider" />
			
			<div class="row divider service-container">
					
					<div class="grid-3">
						<h2><span class="slash">//</span> <fon:message code="home.site.casestudies.heading" type="text" url="admin" /></h2>
						
						<p><fon:message code="home.site.casestudies.note" type="textarea" url="admin"/></p>
						
						<a href="casestudy" class="btn btn-small btn-warning"><fon:message code="home.site.casestudies.button.text" /></a>
					</div>
					
					<div class="grid-3">
						<div class="service-item">
							
							<h3>
								<i class="icon-tint"></i> 
								<fon:message code="home.site.casestudies.item1.heading" type="text" url="admin" />
							</h3> <!-- /service-icon -->
							
							<p><fon:message code="home.site.casestudies.item1.summary" type="textarea" url="admin" /></p>
							
							<p><a href="casestudy" class="">Learn More »</a></p>
							
						</div> <!-- /service -->
					</div>
					
					<div class="grid-3">
						<div class="service-item">
							
							<h3>
								<i class="icon-map-marker"></i>		
								<fon:message code="home.site.casestudies.item2.heading" type="text" url="admin" />
							</h3> <!-- /service-icon -->
							
							<p><fon:message code="home.site.casestudies.item2.summary" type="textarea" url="admin" /></p>
							
							<p><a href="casestudy" class="">Learn More »</a></p>
							
						</div>				
					</div>
					
					<div class="grid-3">
						<div class="service-item">
							
							<h3>
								<i class="icon-cogs"></i> 
								<fon:message code="home.site.casestudies.item3.heading" type="text" url="admin" />
							</h3> <!-- /service-icon -->
							
							<p><fon:message code="home.site.casestudies.item3.summary" type="textarea" url="admin" /></p>
							
							<p><a href="casestudy" class="">Learn More »</a></p>
							
						</div>			
					</div>
				</div> <!-- /row -->
			
			<hr class="row-divider" />
			
			
			<div class="row divider about-container">
				
				<div class="grid-3">				
					<h2><span class="slash">//</span> <fon:message code="home.site.ourstory.heading" type="text" url="admin" /></h2>
					
					<p><fon:message code="home.site.ourstory.note" type="textarea" url="admin" /></p>
					
					<p><a href="ourwork" class="btn btn-small btn-warning"><fon:message code="home.site.ourstory.button.text" /></a>
				</p>
				
			</div> <!-- /grid-3 -->
			
			<div class="grid-4">
				<div class="about-item">
									
					<h3><fon:message code="home.site.ourstory.item1.heading" type="text" url="admin" /></h3>
					
					<p><fon:message code="home.site.ourstory.item1.summary" type="textarea" url="admin" /></p>
					
					<p><a href="about">Read More »</a></p>						
					
				</div> <!-- /about -->
			</div> <!-- /grid-4 -->
			
			<div class="grid-5">				
				<h3></h3>
			
				<div class="choose-item">
					
					<h3>
						<i class="icon-star"></i>
						<fon:message code="home.site.ourstory.item2.bullet1.head" type="text" url="admin" />						
					</h3>
					
					<p><fon:message code="home.site.ourstory.item2.bullet1.text" type="textarea" url="admin" /></p>
				</div> <!-- /choose-item -->
			
				<div class="choose-item">
					<h3>
						<i class="icon-star"></i>
						<fon:message code="home.site.ourstory.item2.bullet2.head" type="text" url="admin" />							
					</h3>
					
					<p><fon:message code="home.site.ourstory.item2.bullet2.text" type="textarea" url="admin" /></p>
				</div> <!-- /choose-item -->
												
				<p><a href="about">More Reasons »</a></p>
				
			</div> <!-- /grid-5 -->
				
			</div> <!-- /row -->
			
		</div> <!-- /container -->
		
	</div> <!-- /content -->
	<script>
		$(function () {
			$('#masthead-carousel').carousel ({ interval: false });
		});
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(1)').not(".language").addClass("active");
		$('.editable').editable();	
	</script>	
  </body>
</html>
