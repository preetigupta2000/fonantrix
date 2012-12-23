<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
	<r:require modules="aboutstyles"/>
  </head>

<body>
	<div id="page-title">
		
		<h1>About Us</h1>
		<p>Fonantrix is your outsourced product development leader for a converged world, delivering innovation and value across technologies and geographies.</p>
		
	</div> <!-- /page-title -->

	<div id="content">
		
		<div class="container">
			
			<div class="row">
				
				<div class="grid-6">
					
					<h2><span class="slash">//</span> Our Philosophy</h2>
					
					<p>From conception, ideation and design, to delivery of today's most advanced and converging technologies, Fonantrix is ready to meet the technical challenges you face and deliver the expertise you demand. We are dedicated to help customers design, develop and deliver innovative products.</p>
					
					<p>Fonantrix designs and develops feature-rich products for companies embracing transformational advances in software and technology.</p>
					
				</div> <!-- /grid-6 -->
				
				
				<div class="grid-6">
					
					<h2><span class="slash">//</span> Our Mission</h2>
					
					<p>By leveraging our deep expertise in enterprise, Mobile, Web-based and user experience driven technologies, we enable our clients to focus on their core competencies while building mission-critical products to sustain, speed and secure the long-term success for the business.</p>
					
					<p>With offices located in Asia, Europe and North America, Fonantrix is the outsourced product development partner to deliver truly integrated global reach with local touch.</p>
				
				</div> <!-- /grid-6 -->
				
			</div> <!-- /row -->
			
			
			<hr class="row-divider" />
			
			
			<div class="row">
				
				<div class="grid-12">
					
					<h2><span class="slash">//</span> Our Team</h2>
					
					<p>We are a team... We win together, we lose together, we celebrate and we mourn together. And defeats are softened and victories sweetened because we did them together.</p>
					
				</div> <!-- /grid-12 -->
				
			</div> <!-- /row -->
			
			
			<div class="row">
				
				<div class="grid-4">	
					
					<div class="profile">
						
						<img src="${resource(dir: 'images/profiles', file: 'profile-1.png')}" alt="Profile Pic" />						
						
						<h4>Sanjeev Aggarwal</h4>
						
						<p class="profile-title">Chief Executive Officer</p>
						
						<p>Our designers not only focus on improving user experience, but they frequently study and refine their feel for the aesthetic.Our developers employ new and interesting technologies to find a solution that is elegant, functional and in line with best practices.</p>
						
					</div> <!-- /profile -->
					
				</div> <!-- /grid-4 -->
				
				
				<div class="grid-4">	
					
					<div class="profile">
						
						<img src="${resource(dir: 'images/profiles', file: 'profile-2.png')}" alt="Profile Pic" />						
						
						<h4>Parul Sharma</h4>
						
						<p class="profile-title">Chief Operating Officer</p>
						
						<p>Our software architects design solutions that are easy to maintain and extensible for the future. Our business analysts identify problems and work with our software architects to deliver solutions that ensure ongoing business agility, reduced total cost of ownership and strong ROI.</p>
						
					</div> <!-- /profile -->
					
				</div> <!-- /grid-4 -->
				
				
				<div class="grid-4">		
					
					<div class="profile">
						
						<img src="${resource(dir: 'images/profiles', file: 'profile-3.png')}" alt="Profile Pic" />
						
						<h4>Sandeep Pant</h4>
						
						<p class="profile-title">Chief Technology Officer</p>
						
						<p>Our project managers measure project progress & encourage a high level of communication between stakeholders, so that you can make informed decisions. They ensure successfully delivered solutions in a timely and resource effective manner.</p>
						
					</div> <!-- /profile -->
					
				</div> <!-- /grid-4 -->
				
			</div> <!-- /row -->
		</div> <!-- /container -->
	</div> <!-- /content -->	
	<r:script disposition="defer">
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(2)').addClass("active");
	</r:script>		
  </body>
</html>
