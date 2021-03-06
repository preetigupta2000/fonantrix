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
	var chartArray = new Array();
	var dynamicMode = false;
	var keys = "";

	
	function updateTheme(params, theme) {
		drawChart(params, theme);
	}
	
	function redrawCharts () {
		$.ajax({
			url: "dynamicchart?chartNo=" + comchart.options.chart.number + "&SerieNo=" + comchart.options.series[0].id
		}).done(function(response) {
			comchart.redraw();
			//barchart.redraw();
			linechart.redraw();
		});		
	}
	
	function zoomChart (contianerName , newContianerName) {
		var chart = chartArray[contianerName]
		$.ajax({
			url: "zoomChart?chartNo=" + chart.options.chart.number
		}).done(function(response) {
			combinationChart(response.chart.content, newContianerName, false)
		});		
	}
	
 	function drawChart(params, theme) {
 				
		// Apply the theme
 		if (typeof theme == "undefined") {
 			theme = "default";
 		}
 		var highchartsOptions = Highcharts.setOptions(eval("Highcharts.theme" + "." + theme));
 		
		for (var i=0;i<params.length;i++) {
			var contianerName = "container" + i ;
			var returnChartName
			if (params[i].type === "line") {
				returnChartName = lineChart(params[i], contianerName) 
			} else if (params[i].type === "bar") {
				returnChartName = barChart(params[i], contianerName)
			} else if (params[i].type === "spline") {
				returnChartName = splineChart(params[i], contianerName)				
			} else if (params[i].type === "combination") {
				returnChartName = combinationChart(params[i], contianerName, true)
			}
			chartArray[contianerName] = returnChartName;
			keys += contianerName + ","
		}
		keys = keys.substring(0, keys.lastIndexOf(","));
		settingPlotStart();
 	}
 	
	function getLineData(chartNo, contianerName) {
		if (com.fonantrix.application.site.dynamicMode) {
		    var chart = chartArray[contianerName]
	    	for (var i=0; i<chart.series.length; i++){
			    var series = chart.series[i]
	            var seriesno = series.options.id
			    //console.log(series.type + " No:" + seriesno + " chartno" + chart.options.chart.number);
		  		  	$.get('dynamicchart?chartNo=' + chartNo + "&serieNo=" + seriesno + "&contianerId=" + contianerName + "&serieType=" + series.type, function(response) {
		  		  		seriesno = parseInt(response.serieNo)
		  		  		chart = chartArray[response.contianerId]
		  		  		var data
		  		  		series = chart.get(seriesno)
		  		  		if (series.type == 'pie') {		  		  		
		  		  			data = eval(response.points)
		  		  		} else {
		  		  			data = eval(response.points)
		  		  		}		  		  		
		  		  		if (series.type == 'pie') {		  		  		
		  		  			series.addPoint(data[0], false);
		  		  			series.generatePoints();
		  		  		} else {
		  		  			series.addPoint(parseInt(data[0]), true, true);
		  		  		}
					    series.redraw();
				    });
	    	}
		}
	} 	
	
	function settingPlotStart() {
		arr = keys.split(",");
		for (var j=0; j<arr.length; j++){
			var chart = chartArray[arr[j]];
	    	for (var i=0; i<chart.series.length; i++){
	    		var series = chart.series[i];
	    		//if (series.type == "line") {
			        var data = series.data;
			        var new_data = (function(){
			            for(var i=0,d=[];i<8;i++)
			                d.push(Math.random()*250|0)
			            return d;
			        })();
			        series.options.pointStart = data[data.length-1].x;
			        series.setData(new_data);
	    		//}
	    	}
		}
	}
	
	function combinationChart(param, contianerName, showButtons){
		  comchart = new Highcharts.Chart({
	            chart: {
	                renderTo: contianerName,
	                number: param.number,
	                events: {
	                    load: function() {
	                        // set up the updating of the chart each second
		                        setInterval(function() {
		                        	getLineData(param.number, contianerName);
		                        }, 5000);
	                    }
	                }	                
	            },
	            title: {
	                text: param.title
	            },
	            xAxis: {
	                categories: eval("(" + param.xAxisjson + ')')
	            },
	            yAxis: {
	                title: {
	                    text: param.yAxistitle
	                }
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
	                    var s;
	                    if (this.point.name) { // the pie chart
	                        s = ''+
	                            this.point.name +': '+ this.y +' fruits';
	                    } if (this.series.type == "column") {
	                    	
	                    	s = 'Alert Defination : ' + this.series.options.text[this.key] + ' Alert Count: ' + this.series.options.value[this.key]
 	                    	+ ' Percentage of Alerts: ' + this.y;
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
	            },
	            exporting: {
	                buttons: {
	                    ZoomBtn: {
	                    	symbol: 'url(images/zoom.gif)',
	                    	 _id: 'Zoom',
	                        _titleKey: 'Zoom',
	                        x: -60,
	                        symbolFill: '#B5C9DF',
	                        hoverSymbolFill: '#779ABF',
	                        onclick: function () {
	                            $('#modal-zoomChart').modal({show: true , backdrop : true , keyboard: true}).css({
		                               'width': function () { 
		                                   return ($(document).width() * .9) + 'px';  
		                               },
		                               'margin-left': function () { 
		                                   return -($(this).width() / 2); 
		                               }
		                        });
	                        },
	            			enabled: showButtons
	                    },
	                    exportButton: {
	                        enabled: showButtons
	                    },
	                    printButton: {
	                        enabled: showButtons
	                    }
	                }
	            }	            
	        });
		  return comchart;
	}
	
	function splineChart(param, contianerName){
        Highcharts.setOptions({
            global: {
                useUTC: false
            }
        });		
		splinechart = new Highcharts.Chart({
            chart: {
	                renderTo: contianerName,
	                marginRight: 2,
	                backgroundColor:'rgba(255, 255, 255, 0.1)',
	                borderWidth: 0,
	                type: 'spline',
	                zoomType: 'xy',
	                events: {
	                    load: function() {
	    
	                        // set up the updating of the chart each second
	                        var series = this.series[0];
	                        setInterval(function() {
	                            var x = (new Date()).getTime(), // current time
	                                y = Math.random();
	                            series.addPoint([x, y], true, true);
	                        }, 1000);
	                    }
	                }	                
	            },
	            title: {
	                text: null,
	                labels: {enabled:false},
	                style: {
	                    font: '12px "Trebuchet MS", Verdana, sans-serif'
	                 }	                
	            },
	            subtitle: {
	                text: param.subtitle
	            },
	            xAxis: {
	                type: 'datetime',
	                tickPixelInterval: 100,
	                labels: {
	                    style: {
	                       font: '11px Trebuchet MS, Verdana, sans-serif'
	                    }
	                 }	 	                
	            },
	            yAxis: {
	            	lineWidth: 1,
	                title: {
	                    text: param.yAxistitle
	                },
	                labels: {
	                    style: {
	                       font: '11px Trebuchet MS, Verdana, sans-serif'
	                    }
	                 },	                
	                plotLines: [{
	                    value: 0,
	                    width: 0.5,
	                    color: '#808080'
	                }]	                
	            },
	            tooltip: {
	                formatter: function() {
	                        return '<b>'+ this.series.name +'</b><br/>'+
	                        Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) +'<br/>'+
	                        Highcharts.numberFormat(this.y, 2);
	                }
	            },	            
	            legend: {
	            	enabled: false
	            },
	            exporting: {
	            	enabled: false
	            },           
	            series:  eval("(" + getSeriesValue(param) + ')'),
	            credits: {
	                enabled: false
	            } 	            
	    });
		return splinechart;
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
 		  return barchart;
 	}
 		
	function lineChart(param, contianerName, showButtons) {		
        linechart = new Highcharts.Chart({
	            chart: {
	                renderTo: contianerName,
	                type: 'line',
	                number: param.number,
	                marginRight: 10,
	                zoomType: 'xy',
	                events: {
	                    load: function() {
	                        // set up the updating of the chart each second
		                        setInterval(function() {
		                        	getLineData(param.number, contianerName);
		                        }, 5000);
	                    }
	                }
	            },
	    		rangeSelector: {
	    			enabled: true
	    		},	            
	            title: {
	                text: param.title,
	                x: -20 //center
	            },
	            xAxis: {
	                //categories: eval("(" + param.xAxisjson + ')')
	            	type: 'datetime',
	            	tickPixelInterval: 120	
	            },
	            yAxis: {
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
        return linechart;
	}
	//[{ name: 'Open Count', data: [8, 16.9, 109.5, 147, 1200, 24474, 5049, 345]}, {name: 'Close Count', data: [5, 25, 256, 356, 2400, 18000, 7890, 456]}]
	function getSeriesValue(param) {
		var returnSeries = "["
		var myData = param.series;
		//alert("myData" + myData[0].data);
		for (var i = 0; i < myData.length; i++){
			returnSeries += "{";
			returnSeries +=  "id:" + myData[i].no + ",";
			if (myData[i].type.trim().length > 0 && myData[i].type.toLowerCase() != "function")
				returnSeries +=  "type:\"" + myData[i].type + "\",";
			returnSeries +=  "name:\"" + myData[i].name + "\",";
			
			if (myData[i].type.toLowerCase() == "function")
				returnSeries += " data:" + (myData[i].data).substring(1, (myData[i].data).length-1) + ""
			else
				returnSeries += " data:" + myData[i].data + ""

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
 		"redrawChart":redrawCharts,
 		"dynamicMode":dynamicMode,
 		"zoomChart":zoomChart,
 		"settingPlotStart":settingPlotStart
 	}
 
})();
