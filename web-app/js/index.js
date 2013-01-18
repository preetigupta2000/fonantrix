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
 	var idContainer = "container";
 	
	
 	/********************************************************/
 	/*                 PUBLIC MEMBERS                     */
 	/********************************************************/
 	
	function displayChart() {
        chart = new Highcharts.Chart({
	            chart: {
	                renderTo: idContainer,
	                type: 'line',
	                marginRight: 130,
	                marginBottom: 25
	            },
	            title: {
	                text: 'Monthly Average Temperature',
	                x: -20 //center
	            },
	            subtitle: {
	                text: 'Source: WorldClimate.com',
	                x: -20
	            },
	            xAxis: {
	                categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
	                    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
	            },
	            yAxis: {
	                title: {
	                    text: 'Temperature (°C)'
	                },
	                plotLines: [{
	                    value: 0,
	                    width: 1,
	                    color: '#808080'
	                }]
	            },
	            tooltip: {
	                formatter: function() {
	                        return '<b>'+ this.series.name +'</b><br/>'+
	                        this.x +': '+ this.y +'°C';
	                }
	            },
	            legend: {
	                layout: 'vertical',
	                align: 'right',
	                verticalAlign: 'top',
	                x: -10,
	                y: 100,
	                borderWidth: 0
	            },
	            series: [{
	                name: 'Tokyo',
	                data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
	            }, {
	                name: 'New York',
	                data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]
	            }, {
	                name: 'Berlin',
	                data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
	            }, {
	                name: 'London',
	                data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
	            }]
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
 		"drawChart":displayChart
 	}
 
})();
