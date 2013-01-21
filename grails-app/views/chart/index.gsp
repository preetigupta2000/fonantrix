<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="chartmain">
  </head>

<body>
	<div id="page-title">
		<h1>Customer Demo</h1>
		<p>Reports Dashboard</p>
	</div> <!-- /page-title -->
	
	<div id="content">
		<div class="container">	
			<div class="row">
				<div class="grid-12">
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
	<script>
		var charts = ${charts};
		$(function () {
			com.fonantrix.application.site.drawChart(charts);
		});
	</script>	
  </body>
</html>
