/*
-----------------
Anonymouse Module
-----------------

Name: Fonantrix site

*/
namespace("com.fonantrix.application");
com.fonantrix.application.site = (function() {

    /********************************************************/
 	/*                   DEPENDENCIES                       */
 	/********************************************************/
 
 	//JS Library Dependencies
 
 	//DOM Dependencies
 	
	
 	/********************************************************/
 	/*                 PUBLIC MEMBERS                     */
 	/********************************************************/
	var comchart = null;
	var barchart = null;
	var linechart = null;
	var defaultOptions = null;
	
	function updateTheme(params, theme) {
		drawChart(params, theme);
	}
	
	function redrawCharts () {
		comchart.redraw();
		barchart.redraw();
		linechart.redraw();
	}
	
 	function drawChart(params, theme) {
 				
		// Apply the theme
 		if (typeof theme == "undefined") {
 			theme = "default";
 		}
 		var highchartsOptions = Highcharts.setOptions(eval("Highcharts.theme" + "." + theme));
 		
		for (var i=0;i<params.length;i++) {
			var contianerName = "container" + i ;
			if (params[i].type === "line") {
				lineChart(params[i], contianerName)
			} else if (params[i].type === "bar") {
				barChart(params[i], contianerName)
			} else {
				combinationChart(params[i], contianerName)
			}
		}
 	}
	
	function combinationChart(param, contianerName){
		  comchart = new Highcharts.Chart({
	            chart: {
	                renderTo: contianerName,
	                animation: {
	                    duration: 1500,
	                    easing: 'easeInQuad'
	                }	                
	            },
	            title: {
	                text: param.title
	            },
	            xAxis: {
	                categories: eval("(" + param.xAxisjson + ')')
	            },
	            yAxis: {
	                min: 0,
	                title: {
	                    text: param.yAxistitle
	                }
	            },
	            tooltip: {
	                formatter: function() {
	                    var s;
	                    if (this.point.name) { // the pie chart
	                        s = ''+
	                            this.point.name +': '+ this.y +' fruits';
	                    } else {
	                        s = ''+
	                            this.x  +': '+ this.y;
	                    }
	                    return s;
	                }
	            },
	            series: eval("(" + getSeriesValue(param) + ')'),
	            credits: {
	                enabled: false
	            } 	            
	        });
	}
	
	function barChart(param, contianerName){
 		  barchart = new Highcharts.Chart({
 	            chart: {
 	                renderTo: contianerName,
 	                type: 'column',
	                animation: {
	                    duration: 1500,
	                    easing: 'easeInQuad'
	                }	 	                
 	            },
 	            title: {
 	                text: param.title
 	            },
 	            subtitle: {
 	                text: param.subtitle
 	            },
 	            xAxis: {
 	                categories: eval("(" + param.xAxisjson + ')')
 	            },
 	            yAxis: {
 	                min: 0,
 	                title: {
 	                    text: param.yAxistitle
 	                }
 	            },
 	            legend: {
 	                layout: 'vertical',
 	                backgroundColor: '#FFFFFF',
 	                align: 'left',
 	                verticalAlign: 'top',
 	                x: 100,
 	                y: 70,
 	                floating: true,
 	                shadow: true,
 	                showInLegend: false
 	            },
 	            tooltip: {
 	            	style: {
 	                    fontSize: '8pt',
 	                    width: '100px',
 	                    wrap:'hard',
 	                    padding: '2px'
 	                },
 	                positioner: function () {
 	                	return { x: 80, y: 50 };
 	                },                
 	                formatter: function() {
 	                    return ''+
 	                        'Alert Defination : ' + this.series.options.text[this.key] + ' Alert Count: ' + this.series.options.value[this.key]
 	                    	+ ' Percentage of Alerts: ' + this.y;
 	                }
 	            },
 	            plotOptions: {
 	                column: {
 	                    pointPadding: 0.2,
 	                    borderWidth: 0	                    
 	                }            
 	            },
 	            series:  eval("(" + getSeriesValue(param) + ')'),
	            credits: {
	                enabled: false
	            } 	            
 	        });
 	}
 	
	function lineChart(param, contianerName) {
        linechart = new Highcharts.Chart({
	            chart: {
	                renderTo: contianerName,
	                type: 'line',
	                marginRight: 10,
	                animation: {
	                    duration: 200,
	                    easing: 'linear'
	                }		                
	            },
	            title: {
	                text: param.title,
	                x: -20 //center
	            },
	            xAxis: {
	                categories: eval("(" + param.xAxisjson + ')')
	            },
	            yAxis: {
	            	min: 0,
	                labels: {
	                    formatter: function() {
	                        return this.value;
	                    }
	                },	            	
	                title: {
	                    text: param.yAxistitle
	                },
	                plotLines: [{
	                    value: 0,
	                    width: 1,
	                    color:  param.plotLinescolor
	                }]               
	            },
	            tooltip: {
	                formatter: function() {
	                        return '<b>'+ this.series.name +'</b><br/>'+
	                        this.x +': '+ this.y;
	                }
	            },
	            plotOptions: {
	                line: {
	                    dataLabels: {
	                        enabled: true
	                    }
	                }
	            },	            
	            series: eval("(" + getSeriesValue(param) + ")"),
	            credits: {
	                enabled: false
	            }
	    });
	}
	//[{ name: 'Open Count', data: [8, 16.9, 109.5, 147, 1200, 24474, 5049, 345]}, {name: 'Close Count', data: [5, 25, 256, 356, 2400, 18000, 7890, 456]}]
	function getSeriesValue(param) {
		var returnSeries = "["
		var myData = param.series;
		alert("myData" + myData[0].dataValue);
		for (var i = 0; i < myData.length; i++){
			returnSeries += "{";
			if (myData[i].type.trim().length > 0)
				returnSeries +=  "type:\"" + myData[i].type + "\",";
			returnSeries +=  "name:\"" + myData[i].name + "\",";
			returnSeries += " data:[" + myData[i].dataValue + "]"
			if ( myData[i].additionalNodes.trim().length > 0) {
				returnSeries += ", " + myData[i].additionalNodes;
			}
			returnSeries += "},";
		}
		returnSeries = returnSeries.substring(0,returnSeries.lastIndexOf(','))
		returnSeries += "]";
		return returnSeries;
	} 
 	/********************************************************/
 	/*                 ONE TIME INIT FUNCTION              */
 	/********************************************************/

 	(function init()	{
 			$(document).ready(function() {
 				
 				/*! Normalized address bar hiding for iOS & Android (c) @scottjehl MIT License */
 				(function( win ){
 				    var doc = win.document;
 
 				    // If there's a hash, or addEventListener is undefined, stop here
 				    if( !location.hash && win.addEventListener ){
 
 				        //scroll to 1
 				        window.scrollTo( 0, 1 );
 				        var scrollTop = 1,
 				            getScrollTop = function(){
 				                return win.pageYOffset || doc.compatMode === "CSS1Compat" && doc.documentElement.scrollTop || doc.body.scrollTop || 0;
 				            },
 
 				        //reset to 0 on bodyready, if needed
 				            bodycheck = setInterval(function(){
 				                if( doc.body ){
 				                    clearInterval( bodycheck );
 				                    scrollTop = getScrollTop();
 				                    win.scrollTo( 0, scrollTop === 1 ? 0 : 1 );
 				                }
 				            }, 15 );
 
 				        win.addEventListener( "load", function(){
 				            setTimeout(function(){
 				                //at load, if user hasn't scrolled more than 20 or so...
 				                if( getScrollTop() < 20 ){
 				                    //reset to hide addr bar at onload
 				                    win.scrollTo( 0, scrollTop === 1 ? 0 : 1 );
 				                }
 				            }, 0);
 				        } );
 				    }
 				})( window );
 				
  			});
 
 					
 	})();
 
 	/********************************************************/
 	/*                 Public   							*/
 	/********************************************************/
 
 	return	{
 		"drawChart":drawChart,
 		"changeTheme":updateTheme,
 		"redrawChart":redrawCharts
 	}
 
})();
