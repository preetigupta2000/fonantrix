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
		<h1><a href="casestudy"><g:message code="casestudy.site.heading" /></a>&nbsp;>&nbsp;<h2><g:message code="casestudy.chart.heading" /></h2></h1>
		<div id="chartDetails">
			<p><g:message code="casestudy.chart.detail" /></p>
			<span id="container4" class="hidden-phone"></span>
		</div>
		<div class="btn-group-wrap" style="clear:both;">
			<a href="javascript:refreshChart();"><button type="submit" class="btn btn-warning btn-mini">Refresh Status</button></a>
			<!-- a href="updatechart"><button type="submit" class="btn btn-warning btn-mini">Refresh Status</button></a -->
			<a href="javascript:enableDynamicMode();"><button id="dynamicMode" type="submit" class="btn btn-warning btn-mini"><g:message code="casestudy.chart.button.enable" /></button></a>
			<span class="btn-group">
				<button class="btn btn-warning btn-mini"><g:message code="casestudy.chart.button.skin" /></button>
	            <button class="btn btn-warning btn-mini dropdown-toggle" data-toggle="dropdown">
	                <span class="caret"></span>
	            </button>
	            <ul class="dropdown-menu">
		        	<li><a href="javascript:changeTheme()"><g:message code="casestudy.chart.button.skin.default" />t</a></li>
		        	<li><a href="javascript:changeTheme('grid')"><g:message code="casestudy.chart.button.skin.grid" /></a></li>
		            <li><a href="javascript:changeTheme('skies')"><g:message code="casestudy.chart.button.skin.skies" /></a></li>
		            <li><a href="javascript:changeTheme('gray')"><g:message code="casestudy.chart.button.skin.gray" /></a></li>
		            <li><a href="javascript:changeTheme('blue')"><g:message code="casestudy.chart.button.skin.darkblue" /></a></li>
		            <li><a href="javascript:changeTheme('green')"><g:message code="casestudy.chart.button.skin.darkgreen" /></a></li>                       
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
					<div class="grid-12">
						<p class="alert alert-info pull-right"><g:message code="casestudy.chart.note" /></p>
					</div>
				</div>
					<div class="row">
						<div class="grid-12">
							<div id="container5" style="min-width: 300px; height: 250px; margin: 0 auto;"></div>
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
				
				<!-- this is the placeholder for the modal box -->
				<div id="modal-zoomChart" class="modal hide">
					<!-- content will go here -->
					<div id="containerZoom5" style="min-width: 500px; height: 550px; margin: 0 auto"></div>
				</div>				
				
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
			app.drawChart(charts, "gray");
		});

		function changeTheme(value) {
			app.changeTheme(charts, value);
		}

		function refreshChart() {
			app.redrawChart();
		}

		function enableDynamicMode(button) {
			if ($("#dynamicMode").text() == "Enable Dynamic Mode") {
				app.dynamicMode = true;
				$("#dynamicMode").html("Disable Dynamic Mode");
				$("#dynamicMode").css("background-color", "#da8205");
		//alert($("#dynamicMode").css("background-color"));
				$("#dynamicMode").css("background-image", "-moz-linear-gradient(center top , #DA8300, #DA8400)");
			} else {
				app.dynamicMode = false;
				$("#dynamicMode").html("Enable Dynamic Mode");
				$("#dynamicMode").css("background-color", "#FAA732");
				$("#dynamicMode").css("background-image", "-moz-linear-gradient(center top , #FBB450, #F89406)");
			}
		}

		jQuery( function($) { 			
			// when the modal show event fires, load the url that was copied to the data-href attribute
			$('#modal-zoomChart').bind('show', function() {
				$.ajax({
					url: "zoomChart?chartNo=" + comchart.options.chart.number
				}).done(function(response) {
					app.zoomChart("container5", "containerZoom5");
				});						
			});
		});
	
	</script>	
  </body>
</html>
