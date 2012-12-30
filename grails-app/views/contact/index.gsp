<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
	<r:require modules="contactstyles"/>
  </head>

<body>
	<div id="page-title">
		
		<h1>Contact Us</h1>
		<p>You are welcome to contact us for discussing about your specific needs. We are here to identify the most suitable solutions for you.</p>
		
	</div> <!-- /page-title -->
	
	
	<div id="contact-map">
		<iframe width="100%" height="260" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
		src="https://maps.google.com/maps/ms?msid=200588186747348546128.0004cbc56913f132006b6&amp;msa=0&amp;ie=UTF8&amp;t=m&amp;iwloc=0004cbc56cafabef79142&amp;ll=28.620354,77.386322&amp;spn=0.009286,0.019205&amp;output=embed"></iframe>
	</div> <!-- /contact-map -->
	
	
	
	<div id="content">
		
		<div class="container">
			
			<div class="row">
				
				<div class="grid-8">
					
					<h3><span class="slash">//</span> Send a Message</h3>
					
					<p>Contact us by filling out the form below or requesting a quote. We are available to discuss your specific project needs in greater detail to help find the best solution for you and your business.</p>
					
					<form method="post" action="sendemail">
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
							<strong>Head Office: Address</strong> <br>
							1521 Concord Pike, #301, Wilmington, DE 19803 <br>
							United State
						</p>
						
						<p>
							<strong>Branch Office: Address</strong><br>
							E-2, Sector 63<br>
							Noida (NCR-DELHI),<br>
							India
						</p>
						
						<h3><span class="slash">//</span> Open Positions</h3>
						
						<p>
							<ul>
								<li>Java Developer</li>
								<li>QE Automation Tester</li>
								<li>QE Automation Lead</li>
								<li>Senior Java Developer</li>
								<li>Java Trainees</li>
								<li>S/W Testing Trainees</li>
							</ul>
						</p>
												
					</div> <!-- /sidebar -->					
	
					
				</div> <!-- /grid-4 -->
				
			</div> <!-- /row -->
			
		</div> <!-- /container -->
		
	</div> <!-- /content -->	
	<script>
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(5)').addClass("active");
	</script>		
  </body>
</html>
