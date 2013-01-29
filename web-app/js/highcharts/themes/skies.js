/**
 * Skies theme for Highcharts JS
 * @author Torstein Hønsi
 */

Highcharts.theme.skies = {
   colors: ["#514F78", "#42A07B", "#9B5E4A", "#72727F", "#1F949A", "#82914E", "#86777F", "#42A07B"],
   chart: {
      className: 'skies',
      borderWidth: 0,    
      plotShadow: true,
      plotBackgroundImage: 'images/skies.jpg',
	  plotBackgroundColor: null,
	  backgroundColor: null,
      plotBackgroundColor: {
         linearGradient: [0, 0, 250, 500],
         stops: [
            [0, 'rgba(255, 255, 255, 1)'],
            [1, 'rgba(255, 255, 255, 0)']
         ]
      },
      plotBorderWidth: 1,
      plotBorderColor: "#C0C0C0",
      className: null,
      plotBackgroundColor: null
   },
   title: {
      style: {
         color: '#3E576F',
         font: '16px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
      }
   },
   subtitle: {
      style: {
         color: '#6D869F',
         font: '12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
      }
   },
   xAxis: {
      gridLineWidth: 0,
      gridLineColor: '#C0C0C0',
      lineColor: '#C0D0E0',
      tickColor: '#C0D0E0',
      labels: {
         style: {
            color: '#666',
            fontWeight: 'bold'
         }
      },
      title: {
         style: {
            color: '#666',
            font: '12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
         }
      }
   },
   yAxis: {
	  minorTickInterval: null,	   
	  gridLineColor: '#C0C0C0',
      alternateGridColor: 'rgba(255, 255, 255, .5)',
      lineColor: '#C0D0E0',
      tickColor: '#C0D0E0',
      tickWidth: 1,
      labels: {
         style: {
            color: '#666',
            fontWeight: 'bold'
         }
      },
      title: {
         style: {
            color: '#666',
            font: '12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
         }
      }
   },
   legend: {
      itemStyle: {
         font: '9pt Trebuchet MS, Verdana, sans-serif',
         color: '#3E576F'
      },
      itemHoverStyle: {
         color: 'black'
      },
      itemHiddenStyle: {
         color: 'silver'
      }
   },
   labels: {
      style: {
         color: '#3E576F'
      }
   },
	exporting: {
		buttons: {
			exportButton: {
				symbolFill: '#A8BF77'
			},
			printButton: {
				symbolFill: '#779ABF'
			}
		}
	},
	navigation: {
		buttonOptions: {
			backgroundColor: {
				linearGradient: [0, 0, 0, 20],
				stops: [
                    [0.4, "#F7F7F7"],
                    [0.6, "#E3E3E3"]
				]
			},
			borderColor: '#B0B0B0',
			symbolStroke: '#A0A0A0',
			hoverSymbolStroke: '#4572A5'
		}
	}	   
};