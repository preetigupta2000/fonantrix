<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="main">
	<r:require modules="aboutstyles"/>
  </head>

<body>
	<div id="page-title">
		
		<h1><g:message code="about.site.heading" /></h1>
		<p><g:message code="about.site.note" /></p>
		
	</div> <!-- /page-title -->

	<div id="content">
		
		<div class="container">
			
			<div class="row">
				
				<div class="grid-6">
					
					<h2><span class="slash">//</span> <g:message code="about.site.item1.head" /></h2>
					
					<p><g:message code="about.site.item1.text.p1" /></p>
					
					<p><g:message code="about.site.item1.text.p2" /></p>
					
				</div> <!-- /grid-6 -->
				
				
				<div class="grid-6">
					
					<h2><span class="slash">//</span> <g:message code="about.site.item2.head" /></h2>
					
					<p><g:message code="about.site.item2.text.p2" /></p>
					
					<p><g:message code="about.site.item2.text.p2" /></p>
				
				</div> <!-- /grid-6 -->
				
			</div> <!-- /row -->
			
			
			<hr class="row-divider" />
			
			
			<div class="row">
				
				<div class="grid-12">
					
					<h2><span class="slash">//</span> <g:message code="about.site.ourteam.heading" /></h2>
					
					<p><g:message code="about.site.ourteam.note" /></p>
					
				</div> <!-- /grid-12 -->
				
			</div> <!-- /row -->
			
			
			<div class="row">
				
				<div class="grid-4">	
					
					<div class="profile">
						
						<img src="${resource(dir: 'images/profiles', file: 'profile-1.png')}" alt="Profile Pic" />						
											
						<p class="profile-title"><g:message code="about.site.ourteam.profile1.title" /></p>
						
						<p><g:message code="about.site.ourteam.profile1.comments" /></p>
						
					</div> <!-- /profile -->
					
				</div> <!-- /grid-4 -->
				
				
				<div class="grid-4">	
					
					<div class="profile">
						
						<img src="${resource(dir: 'images/profiles', file: 'profile-2.png')}" alt="Profile Pic" />						
						
					
						<p class="profile-title"><g:message code="about.site.ourteam.profile2.title" /></p>
						
						<p><g:message code="about.site.ourteam.profile2.comments" /></p>
						
					</div> <!-- /profile -->
					
				</div> <!-- /grid-4 -->
				
				
				<div class="grid-4">		
					
					<div class="profile">
						
						<img src="${resource(dir: 'images/profiles', file: 'profile-3.png')}" alt="Profile Pic" />
											
						<p class="profile-title"><g:message code="about.site.ourteam.profile3.title" /></p>
						
						<p><g:message code="about.site.ourteam.profile3.comments" /></p>
						
					</div> <!-- /profile -->
					
				</div> <!-- /grid-4 -->
				
			</div> <!-- /row -->
			<hr class="row-divider" />
			
			
			<div class="row">
				
				<div class="grid-12">
					
					<h2><span class="slash">//</span> <g:message code="about.site.chooseus.heading" /></h2>
					
					<p><g:message code="about.site.chooseus.note" /></p>
					
				</div> <!-- /grid-12 -->
				
			</div> <!-- /row -->
			
			
			<div class="row">
				
				<div class="grid-12">
					
				<div class="choose-item">
					
					<h3>
						<i class="icon-star"></i>
						 <g:message code="about.site.chooseus.reason1" />							
					</h3>
				</div> <!-- /choose-item -->
									
				<div class="choose-item">
					<h3>
						<i class="icon-star"></i>
						<g:message code="about.site.chooseus.reason2" />							
					</h3>
				</div> <!-- /choose-item -->

				<div class="choose-item">
					<h3>
						<i class="icon-star"></i>
						<g:message code="about.site.chooseus.reason3" />							
					</h3>
				</div> <!-- /choose-item -->
				
				<div class="choose-item">
					
					<h3>
						<i class="icon-star"></i>
						<g:message code="about.site.chooseus.reason4" />							
					</h3>
				</div> <!-- /choose-item -->
				<div class="choose-item">
					<h3>
						<i class="icon-star"></i>
						<g:message code="about.site.chooseus.reason5" />							
					</h3>
				</div> <!-- /choose-item -->				
				<div class="choose-item">
					<h3>
						<i class="icon-star"></i>
						<g:message code="about.site.chooseus.reason6" />							
					</h3>
				</div> <!-- /choose-item -->
				</div> <!-- /grid-12 -->
				
			</div> <!-- /row -->
			
		</div> <!-- /container -->
	</div> <!-- /content -->	
	<script>
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(2)').not(".language").addClass("active");
	</script>		
  </body>
</html>
