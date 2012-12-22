<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
	<r:require modules="aboutstyles"/>
  </head>

<body>
	<div id="page-title">
		
		<h1>About Us</h1>
		<p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		
	</div> <!-- /page-title -->

	<div id="content">
		
		<div class="container">
			
			<div class="row">
				
				<div class="grid-6">
					
					<h2><span class="slash">//</span> Our Philosophy</h2>
					
					<p>Nullam ligula sapien, pharetra eget volutpat vel, consequat in lectus.</p>
					
					<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Vivamus purus arcu, commodo cursus egestas et, dictum lobortis dui. Curabitur at mi eu mi sollicitudin faucibus at at libero.</p>
					
				</div> <!-- /grid-6 -->
				
				
				<div class="grid-6">
					
					<h2><span class="slash">//</span> Our Mission</h2>
					
					<p>Mauris viverra, tortor eget interdum lacinia, lacus mi tempor purus, eu commodo enim dui ac nisl. Morbi euismod ante quis tellus imperdiet porta. Morbi nisi nibh, facilisis a varius id, adipiscing vel purus.</p>
					
					<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
				
				</div> <!-- /grid-6 -->
				
			</div> <!-- /row -->
			
			
			<hr class="row-divider" />
			
			
			<div class="row">
				
				<div class="grid-12">
					
					<h2><span class="slash">//</span> Our Team</h2>
					
					<p>Mauris viverra, tortor eget interdum lacinia, lacus mi tempor purus, eu commodo enim dui ac nisl. Morbi euismod ante quis tellus imperdiet porta. Morbi nisi nibh, facilisis a varius id, adipiscing vel purus.</p>
					
				</div> <!-- /grid-12 -->
				
			</div> <!-- /row -->
			
			
			<div class="row">
				
				<div class="grid-4">	
					
					<div class="profile">
						
						<img src="${resource(dir: 'images/profiles', file: 'profile-1.png')}" alt="Profile Pic" />						
						
						<h4>John Doe</h4>
						
						<p class="profile-title">Chief Executive Officer</p>
						
						<p>Mauris viverra, tortor eget interdum lacinia, lacus mi tempor purus, eu commodo enim dui ac nisl. Morbi euismod ante quis tellus imperdiet porta. Morbi nisi nibh, facilisis a varius id, adipiscing vel purus.</p>
						
					</div> <!-- /profile -->
					
				</div> <!-- /grid-4 -->
				
				
				<div class="grid-4">	
					
					<div class="profile">
						
						<img src="${resource(dir: 'images/profiles', file: 'profile-2.png')}" alt="Profile Pic" />						
						
						<h4>Jane Doe</h4>
						
						<p class="profile-title">Chief Operating Officer</p>
						
						<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.</p>
						
					</div> <!-- /profile -->
					
				</div> <!-- /grid-4 -->
				
				
				<div class="grid-4">		
					
					<div class="profile">
						
						<img src="${resource(dir: 'images/profiles', file: 'profile-3.png')}" alt="Profile Pic" />
						
						<h4>John Doe</h4>
						
						<p class="profile-title">Chief Technology Officer</p>
						
						<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Vivamus purus arcu, commodo cursus egestas et, dictum lobortis dui. Curabitur at mi eu mi sollicitudin faucibus at at libero.</p>
						
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
