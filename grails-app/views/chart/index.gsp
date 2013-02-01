<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="chartmain">
	<style type="text/css">
		.btn-group { display: -moz-inline-box;}
		#page-title { padding-bottom: 10px; margin-bottom: 1.5em;}
		.row { margin-bottom: 10px; }
	</style>
  </head>

<body>
	<div id="page-title">
		<h1><a href="casestudy">Case Study</a>&nbsp; <h2>DashBoard</h2></h1>
		<p>Following is a sample dashboard demonstrating dynamic chart and a responsive design for mobil delivery. The background (analytic) is based on cloud Redis instance and can be easily extended for any other reporting database.</p>
		<div class="btn-group-wrap">
			<a href="javascript:refreshChart();"><button type="submit" class="btn btn-warning btn-mini">Refresh Status</button></a>
			<a href="updatechart"><button type="submit" class="btn btn-warning btn-mini">Refresh Status with Redis</button></a>
			<button type="submit" class="btn btn-warning btn-mini">Enable Dynamic Mode</button>	
			<span class="btn-group">
				<button class="btn btn-warning btn-mini">Skins</button>
	            <button class="btn btn-warning btn-mini dropdown-toggle" data-toggle="dropdown">
	                <span class="caret"></span>
	            </button>
	            <ul class="dropdown-menu">
		        	<li><a href="javascript:changeTheme()">Default</a></li>
		        	<li><a href="javascript:changeTheme('grid')">Grid</a></li>
		            <li><a href="javascript:changeTheme('skies')">Skies</a></li>
		            <li><a href="javascript:changeTheme('gray')">Gray</a></li>
		            <li><a href="javascript:changeTheme('blue')">Dark blue</a></li>
		            <li><a href="javascript:changeTheme('green')">Dark green</a></li>                       
		        </ul>
        	</span>	
		</div>
	</div> <!-- /page-title -->
	
	<div id="content">
		<div class="container">
	    <!-- ul id="tabs" class="nav nav-tabs">
		    <li><a href="#home"><i class="icon-bar-chart"></i> DashBoard</a></li>
		    <li><a href="#grid"><i class="icon-table"></i> Grid</a></li>
		    <li><a href="#commerce"><i class="icon-book"></i> E-Commerce</a></li>
	    </ul>
		<div class="tab-content">
				<div id="home" class="tab-pane fade in" -->
					<div class="row">
						<div class="grid-6">
							<div id="container5" style="min-width: 300px; height: 250px; margin: 0 auto"></div>
						</div>
						<div class="grid-6">
							<div id="container4" style="min-width: 300px; height: 250px; margin: 0 auto" data-highcharts-chart="0"></div>
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
				<!--  /div-->
				
				<!-- div id="grid" class="tab-pane fade in">
					<img src="${resource(dir: 'images', file: 'commingsoon.jpg')}" alt="Coming Soon" />
				</div>
				<div id="commerce" class="tab-pane fade in">
					<img src="${resource(dir: 'images', file: 'commingsoon.jpg')}" alt="Coming Soon" />
				</div-->	
			
		</div> <!-- /content -->
	</div> <!-- /main-tabs -->
	<script>
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(6)').not(".language").addClass("active");	
		var charts = ${charts};
		var app = com.fonantrix.application.site;
		$(document).ready(function() {
			/*
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
			*/
			app.drawChart(charts);	
		});

		function changeTheme(value) {
			app.changeTheme(charts, value);
		}

		function refreshChart() {
			app.redrawChart();
		}
	</script>	
  </body>
</html>
