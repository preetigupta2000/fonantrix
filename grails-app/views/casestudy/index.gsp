<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="mainlayout">
	<r:require modules="casestudystyles"/>
  </head>

<body>
	<div id="page-title">
		
		<h1>Case Studies</h1>
		<p>Possessing many years of experience, our consultants have dealt with a wide variety of issues and situations. Please view few of our case studies.</p>
		
	</div> <!-- /page-title -->

	<div id="content">
		
		<div class="container">
			
			<div class="row">
				
				<div class="grid-6 casestudy">
					
					<h2><span class="slash">//</span> Blockbluster Express –Mobility</h2>
					
					<p>POC developed for migrating web based mobile app to native platform.</p>
					
					<p>Description - Engagement model:</p>
					<ul>
						<li>Operated with product management and engineering with Agile methodology</li>
						<li>Onsite/offshore</li>
					</ul>
					<P>Project description: Proof of concept for migrating web based mobile application to native platform</p>
					<img src="${resource(dir: 'images', file: 'BEM.png')}" alt="" />
					<p>Technology</p>
					<ul>
						<li>Client:  Android</li>
						<li>J2ee, Restful web services</li>
					</ul>
				</div> <!-- /grid-6 -->
				
				
				<div class="grid-6 casestudy">
					
					<h2><span class="slash">//</span> Reporting Dashboard</h2>
					
					<p>Engagement model - Operated with engineering model as Iterative development - OnShore / Offshore.</p>
					
					<p>Description :</p>
					<ul> 
						<li>Rich User Interface</li>
						<li>Provides reports as per user selected filters</li>
						<li>Allow user to import reports in various format (PDF, CSV, XML, Tab-Delimited)</li>
					</ul>
					<img src="${resource(dir: 'images', file: 'ReportDashboards.png')}" alt="" />
					<p>Technology</p>
					<ul>
						<li>Java and Webservices</li>
						<li>Spring framework with Jasper and Jfree Chart</li>
						<li>JQuery</li>
						<li>Deployed in cloud</li>
					</ul>
				
				</div> <!-- /grid-6 -->
				
			</div> <!-- /row -->
			
			<hr class="row-divider" />
			
			<div class="row">
				
				<div class="grid-6 casestudy">
					
					<h2><span class="slash">//</span> Time Management</h2>
					
					<p>Adopy a simple, practical techniques that have helped the leading people in business, sport and public service reach the pinnacles of their careers.</p>
					
					<p>Employees :</p>
					<ul>
						<li>Allow end user to log time spent on the daily bases for assigned project tasks</li>
						<li>Help plan and track the status of the respective task assignments</li>
					</ul>
					<p>Team leads :</p>
					<ul>
						<li>Status of the assigned project task or activities to team</li>
						<li>Project schedule planning in the beginning for task allocation</li>
						<li>Risk management for behind schedule task</li>
						<li>Resource time management</li>
					</ul>					
					<img src="${resource(dir: 'images', file: 'cal.png')}" alt="" />
					<ul> 
						<li>Technology</li>
						<ul>
							<li>Deployed on cloud</li>
							<li>J2ee, Restful web services</li>
							<li>Responsive design</li>
							<li>Client-side framework</li>
						</ul>
					</ul>
				</div> <!-- /grid-6 -->
				
				
				<div class="grid-6 casestudy">
				
				</div> <!-- /grid-6 -->
				
			</div> <!-- /row -->			
			
		
		</div> <!-- /container -->
	</div> <!-- /content -->	
	<r:script disposition="defer">
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(7)').addClass("active");
	</r:script>		
  </body>
</html>
