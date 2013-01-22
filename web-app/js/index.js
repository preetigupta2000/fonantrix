/*
-----------------
GLOBAL Util Module
-----------------
*/

function namespace(namespaceString) {
    var parts = namespaceString.split('.'),
        parent = window,
        currentPart = '';

    for(var i = 0, length = parts.length; i < length; i++) {
        currentPart = parts[i];
        parent[currentPart] = parent[currentPart] || {};
        parent = parent[currentPart];
    }

    return parent;
}

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
 	function drawChart(params) {
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
		  chart = new Highcharts.Chart({
	            chart: {
	                renderTo: contianerName
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
	            series: [{
	                type: 'column',
	                showInLegend:false,
	                name: 'Jane',
	                data: [3, 2, 1, 3, 4]
	            }, {
	                type: 'column',
	                showInLegend:false,
	                name: 'John',
	                data: [2, 3, 5, 7, 6]
	            }, {
	                type: 'column',
	                showInLegend:false,
	                name: 'Joe',
	                data: [4, 3, 3, 9, 0]
	            }, {
	                type: 'spline',
	                showInLegend:false,
	                name: 'Average',
	                data: [3, 2.67, 3, 6.33, 3.33],
	                marker: {
	                	lineWidth: 2,
	                	lineColor: Highcharts.getOptions().colors[3],
	                	fillColor: 'white'
	                }
	            }, {
	                type: 'pie',
	                showInLegend:false,
	                name: 'Total consumption',
	                data: [{
	                    name: 'Jane',
	                    y: 13,
	                    color: '#4572A7' // Jane's color
	                }, {
	                    name: 'John',
	                    y: 23,
	                    color: '#AA4643' // John's color
	                }, {
	                    name: 'Joe',
	                    y: 19,
	                    color: '#89A54E' // Joe's color
	                }],
	                center: [80, 50],
	                size: 80,
	                showInLegend: false,
	                dataLabels: {
	                    enabled: false
	                }
	            }],
	            credits: {
	                enabled: false
	            } 	            
	        });
	}
	
	function barChart(param, contianerName){
 		  chart = new Highcharts.Chart({
 	            chart: {
 	                renderTo: contianerName,
 	                type: 'column'
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
 	            series:  eval("(" + param.seriesData + ')'),
	            credits: {
	                enabled: false
	            } 	            
 	        });
 	}
 	
	function lineChart(param, contianerName) {
        chart = new Highcharts.Chart({
	            chart: {
	                renderTo: contianerName,
	                type: 'line',
	                marginRight: 10
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
	            series: eval("(" + param.seriesData + ')'),
	            credits: {
	                enabled: false
	            }
	    });
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
 		"drawChart":drawChart
 	}
 
})();
