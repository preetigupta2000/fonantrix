<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="chartmain">
  </head>

<body>
	<div id="demo-tabs">
	    <ul class="nav nav-tabs">
		    <li class="active"><a href="#home" data-toggle="tab">Report DashBoard</a></li>
		    <li><a href="#profile" data-toggle="tab">Jqgrid</a></li>
		    <li><a href="#messages" data-toggle="tab">E-Commerce</a></li>
	    </ul>

	<div id="content">
		<div class="container">	
			<div class="row">
				<div class="grid-6">
					<div id="container5" style="min-width: 300px; height: 250px; margin: 0 auto"></div>
				</div>
				<div class="grid-6">
					<div id="container4" style="min-width: 300px; height: 250px; margin: 0 auto"></div>
				</div>				
			</div> <!-- /row -->
			<div class="row">
				<div class="grid-6">
					<div id="container0" style="min-width: 300px; height: 250px; margin: 0 auto"></div>
				</div>				
				<div class="grid-6">
					<div id="container1" style="min-width: 300px; height: 250px; margin: 0 auto"></div>
				</div>								
			</div> <!-- /row -->
			<div class="row">
				<div class="grid-6">
					<div id="container2" style="min-width: 300px; height: 250px; margin: 0 auto"></div>
				</div>				
				<div class="grid-6">
					<div id="container3" style="min-width: 300px; height: 250px; margin: 0 auto"></div>
				</div>								
			</div> <!-- /row -->			
		</div> <!-- /container -->
		
	</div> <!-- /content -->
	</div> <!-- /demo-tabs -->	
	<script>
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(6)').not(".language").addClass("active");	
		var charts = ${charts};
		$(function () {
			com.fonantrix.application.site.drawChart(charts);
		});
	</script>	
  </body>
</html>
