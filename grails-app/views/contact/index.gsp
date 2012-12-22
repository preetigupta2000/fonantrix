<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
	<r:require modules="contactstyles"/>
  </head>

<body>
	<div id="page-title">
		
		<h1>Contact Us</h1>
		<p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		
	</div> <!-- /page-title -->
	
	
	<div id="contact-map">
		<iframe width="100%" height="180" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.ca/maps?f=q&source=s_q&hl=en&geocode=&q=New+York&sll=49.891235,-97.15369&sspn=47.259509,86.923828&ie=UTF8&hq=&hnear=New+York,+United+States&ll=40.714867,-74.005537&spn=0.019517,0.018797&z=14&iwloc=near&output=embed"></iframe>
	</div> <!-- /contact-map -->
	
	
	
	<div id="content">
		
		<div class="container">
			
			<div class="row">
				
				<div class="grid-8">
					
					<h3><span class="slash">//</span> Send a Message</h3>
					
					<p>Suspendisse pellentesque imperdiet turpis, at tincidunt odio porta sed. Pellentesque tincidunt facilisis nisi non venenatis. Cras urna libero, fermentum non volutpat a, rhoncus nec lacus.</p>
					
					<form method="post" action="/contact">
						<fieldset>
							<div class="clearfix">
								<label for="name"><span>Name:</span></label>
								<div class="input">
									<input tabindex="1" size="18" id="name" name="name" type="text" value="">
								</div>
							</div>
							
							<div class="clearfix">
								<label for="email"><span>Email:</span></label>
								<div class="input">
									<input tabindex="2" size="25" id="email" name="email" type="text" value="" class="input-xlarge">
								</div>
							</div>
							
							<div class="clearfix">
								<label for="message"><span>Message:</span></label>
								<div class="input">
									<textarea tabindex="3" class="input-xlarge" id="message" name="body" rows="7"></textarea>
								</div>
							</div>
							
							<div class="actions">
								<button tabindex="3" type="submit" class="btn btn-warning btn-large">Send message</button>
							</div>
						</fieldset>
					</form>
					
				</div> <!-- /grid-8 -->
				
				
				<div class="grid-4">
				
					<div class="sidebar">
						
						<h3><span class="slash">//</span> More Information</h3>
						
						<p>
							<strong>Address</strong> <br>
							123 Street Name, Suite # <br>
							City, State 12345, Country							
						</p>
						
						<p>
							<strong>Phone</strong><br>
							Phone: (123) 123-4567<br>
							Fax: (123) 123-4567<br>
							Toll Free: (800) 123-4567
						</p>
						
					</div> <!-- /sidebar -->					
	
					
				</div> <!-- /grid-4 -->
				
			</div> <!-- /row -->
			
		</div> <!-- /container -->
		
	</div> <!-- /content -->	
	<r:script disposition="defer">
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(6)').addClass("active");
	</r:script>		
  </body>
</html>
