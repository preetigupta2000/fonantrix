<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="chartmain">
  </head>

<body>
	<div class="container">
	    <ul id="tabs" class="nav nav-tabs">
		    <li><a href="#home"><i class="icon-bar-chart"></i> Report DashBoard</a></li>
		    <li><a href="#grid"><i class="icon-table"></i> Grid</a></li>
		    <li><a href="#commerce"><i class="icon-book"></i> E-Commerce</a></li>
	    </ul>
		<div class="tab-content">
				<div id="home" class="tab-pane fade in">
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
				</div>
				
				<div id="grid" class="tab-pane fade in">
					<p>I am in Grid</p>
				</div>
				<div id="commerce" class="tab-pane fade in">
					<p>I am in e-commerce</p>
				</div>	
			
		</div> <!-- /content -->
	</div> <!-- /main-tabs -->
	<script>
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(6)').not(".language").addClass("active");	
		var charts = ${charts};
		$(document).ready(function() {
			$('#tabs a').click(function(e) {
			    e.preventDefault();
			    window.location.hash = $(this).attr('href');
			    $(this).tab('show');
			    $(this).parent().parent().find("li").removeProp("id");
			    $(this).parent().attr('id', 'selected');
			    if ($(this.hash).selector === "#home")
			    	com.fonantrix.application.site.drawChart(charts);
			})
		    $('#tabs a[href="#home"]').tab('show');
			$('#tabs a[href="#home"]').parent().attr('id', 'selected');
	    	com.fonantrix.application.site.drawChart(charts);	
		});
	</script>	
  </body>
</html>
