namespace("Highcharts.theme");
/**
 * default theme for Highcharts JS
 */
Highcharts.theme.default = {
    colors: ["#4572A7", "#AA4643", "#89A54E", "#80699B", "#3D96AE", "#DB843D", "#92A8CD", "#A47D7C", "#B5CA92"],
    symbols: ["circle", "diamond", "square", "triangle", "triangle-down"],
    lang: {
        loading: "Loading...",
        months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
        shortMonths: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        weekdays: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
        decimalPoint: ".",
        resetZoom: "Reset zoom",
        resetZoomTitle: "Reset zoom level 1:1",
        thousandsSep: ",",
        downloadPNG: "Download PNG image",
        downloadJPEG: "Download JPEG image",
        downloadPDF: "Download PDF document",
        downloadSVG: "Download SVG vector image",
        exportButtonTitle: "Export to raster or vector image",
        printButtonTitle: "Print the chart"
    },
    global: {
        useUTC: true,
        canvasToolsURL: "http://code.highcharts.com/2.2.3/modules/canvas-tools.js"
    },
    chart: {
        borderColor: "#4572A7",     
        borderRadius: 5,
        defaultSeriesType: "line",
        ignoreHiddenSeries: true,
        spacingTop: 10,
        spacingRight: 10,
        spacingBottom: 15,
        spacingLeft: 10,
        style: {
            "fontFamily": "\"Lucida Grande\", \"Lucida Sans Unicode\", Verdana, Arial, Helvetica, sans-serif",
            "fontSize": "12px"
        },
        borderWidth: 0,
        backgroundColor: "#FFFFFF",
        plotBorderColor: "#C0C0C0",
        plotShadow: false,
        plotBorderWidth: 1,
        plotBackgroundImage: null,
        resetZoomButton: {
            theme: {
                zIndex: 20
            },
            position: {
                align: "right",
                x: -10,
                y: 10
            }
        }
    },
    title: {
        text: "Chart title",
        align: "center",
        y: 15,
        style: {
            color: "#3E576F",
            fontSize: "16px"
        }
    },
    subtitle: {
        text: "",
        align: "center",
        y: 30,
        style: {
            color: "#6D869F"
        }
    },
	xAxis: {
		gridLineWidth: 0
	},
    plotOptions: {
        line: {
            allowPointSelect: false,
            showCheckbox: false,
            animation: {
                duration: 1000
            },
            events: {},
            lineWidth: 2,
            shadow: true,
            marker: {
                enabled: true,
                lineWidth: 0,
                radius: 4,
                lineColor: "#FFFFFF",
                states: {
                    hover: {},
                    select: {
                        fillColor: "#FFFFFF",
                        lineColor: "#000000",
                        lineWidth: 2
                    }
                }
            },
            point: {
                events: {}
            },
            dataLabels: {
                enabled: false,
                align: "center",
                x: 0,
                y: -6,
                style: {
                    color: "#666",
                    fontSize: "11px",
                    lineHeight: "14px"
                }
            },
            cropThreshold: 300,
            pointRange: 0,
            showInLegend: true,
            states: {
                hover: {
                    marker: {}
                },
                select: {
                    marker: {}
                }
            },
            stickyTracking: true
        },
        spline: {
            allowPointSelect: false,
            showCheckbox: false,
            animation: {
                duration: 1000
            },
            events: {},
            lineWidth: 2,
            shadow: true,
            marker: {
                enabled: true,
                lineWidth: 0,
                radius: 4,
                lineColor: "#FFFFFF",
                states: {
                    hover: {},
                    select: {
                        fillColor: "#FFFFFF",
                        lineColor: "#000000",
                        lineWidth: 2
                    }
                }
            },
            point: {
                events: {}
            },
            dataLabels: {
                enabled: false,
                align: "center",
                x: 0,
                y: -6,
                style: {
                    color: "#666",
                    fontSize: "11px",
                    lineHeight: "14px"
                }
            },
            cropThreshold: 300,
            pointRange: 0,
            showInLegend: true,
            states: {
                hover: {
                    marker: {}
                },
                select: {
                    marker: {}
                }
            },
            stickyTracking: true
        },
        scatter: {
            allowPointSelect: false,
            showCheckbox: false,
            animation: {
                duration: 1000
            },
            events: {},
            lineWidth: 0,
            shadow: true,
            marker: {
                enabled: true,
                lineWidth: 0,
                radius: 4,
                lineColor: "#FFFFFF",
                states: {
                    hover: {},
                    select: {
                        fillColor: "#FFFFFF",
                        lineColor: "#000000",
                        lineWidth: 2
                    }
                }
            },
            point: {
                events: {}
            },
            dataLabels: {
                enabled: false,
                align: "center",
                x: 0,
                y: -6,
                style: {
                    color: "#666",
                    fontSize: "11px",
                    lineHeight: "14px"
                }
            },
            cropThreshold: 300,
            pointRange: 0,
            showInLegend: true,
            states: {
                hover: {
                    marker: {},
                    lineWidth: 0
                },
                select: {
                    marker: {}
                }
            },
            stickyTracking: true,
            tooltip: {
                headerFormat: "<span style=\"font-size: 10px; color:{series.color}\">{series.name}</span><br/>",
                pointFormat: "x: <b>{point.x}</b><br/>y: <b>{point.y}</b><br/>"
            }
        },
        area: {
            allowPointSelect: false,
            showCheckbox: false,
            animation: {
                duration: 1000
            },
            events: {},
            lineWidth: 2,
            shadow: true,
            marker: {
                enabled: true,
                lineWidth: 0,
                radius: 4,
                lineColor: "#FFFFFF",
                states: {
                    hover: {},
                    select: {
                        fillColor: "#FFFFFF",
                        lineColor: "#000000",
                        lineWidth: 2
                    }
                }
            },
            point: {
                events: {}
            },
            dataLabels: {
                enabled: false,
                align: "center",
                x: 0,
                y: -6,
                style: {
                    color: "#666",
                    fontSize: "11px",
                    lineHeight: "14px"
                }
            },
            cropThreshold: 300,
            pointRange: 0,
            showInLegend: true,
            states: {
                hover: {
                    marker: {}
                },
                select: {
                    marker: {}
                }
            },
            stickyTracking: true,
            threshold: 0
        },
        areaspline: {
            allowPointSelect: false,
            showCheckbox: false,
            animation: {
                duration: 1000
            },
            events: {},
            lineWidth: 2,
            shadow: true,
            marker: {
                enabled: true,
                lineWidth: 0,
                radius: 4,
                lineColor: "#FFFFFF",
                states: {
                    hover: {},
                    select: {
                        fillColor: "#FFFFFF",
                        lineColor: "#000000",
                        lineWidth: 2
                    }
                }
            },
            point: {
                events: {}
            },
            dataLabels: {
                enabled: false,
                align: "center",
                x: 0,
                y: -6,
                style: {
                    color: "#666",
                    fontSize: "11px",
                    lineHeight: "14px"
                }
            },
            cropThreshold: 300,
            pointRange: 0,
            showInLegend: true,
            states: {
                hover: {
                    marker: {}
                },
                select: {
                    marker: {}
                }
            },
            stickyTracking: true,
            threshold: 0
        },
        column: {
            allowPointSelect: false,
            showCheckbox: false,
            animation: {
                duration: 1000
            },
            events: {},
            lineWidth: 2,
            shadow: true,
            marker: null,
            point: {
                events: {}
            },
            dataLabels: {
                enabled: false,
                align: "center",
                x: 0,
                y: null,
                style: {
                    color: "#666",
                    fontSize: "11px",
                    lineHeight: "14px"
                },
                verticalAlign: null
            },
            cropThreshold: 50,
            pointRange: null,
            showInLegend: true,
            states: {
                hover: {
                    marker: {},
                    brightness: 0.1,
                    shadow: false
                },
                select: {
                    marker: {},
                    color: "#C0C0C0",
                    borderColor: "#000000",
                    shadow: false
                }
            },
            stickyTracking: true,
            borderColor: "#FFFFFF",
            borderWidth: 1,
            borderRadius: 0,
            groupPadding: 0.2,
            pointPadding: 0.1,
            minPointLength: 0,
            threshold: 0
        },
        bar: {
            allowPointSelect: false,
            showCheckbox: false,
            animation: {
                duration: 1000
            },
            events: {},
            lineWidth: 2,
            shadow: true,
            marker: null,
            point: {
                events: {}
            },
            dataLabels: {
                enabled: false,
                align: "left",
                x: 5,
                y: null,
                style: {
                    color: "#666",
                    fontSize: "11px",
                    lineHeight: "14px"
                },
                verticalAlign: "middle"
            },
            cropThreshold: 50,
            pointRange: null,
            showInLegend: true,
            states: {
                hover: {
                    marker: {},
                    brightness: 0.1,
                    shadow: false
                },
                select: {
                    marker: {},
                    color: "#C0C0C0",
                    borderColor: "#000000",
                    shadow: false
                }
            },
            stickyTracking: true,
            borderColor: "#FFFFFF",
            borderWidth: 1,
            borderRadius: 0,
            groupPadding: 0.2,
            pointPadding: 0.1,
            minPointLength: 0,
            threshold: 0
        },
        pie: {
            allowPointSelect: false,
            showCheckbox: false,
            animation: {
                duration: 1000
            },
            events: {},
            lineWidth: 2,
            shadow: true,
            marker: null,
            point: {
                events: {}
            },
            dataLabels: {
                enabled: true,
                align: "center",
                x: 0,
                y: 5,
                style: {
                    color: "#666",
                    fontSize: "11px",
                    lineHeight: "14px"
                },
                distance: 30
            },
            cropThreshold: 300,
            pointRange: 0,
            showInLegend: false,
            states: {
                hover: {
                    marker: {},
                    brightness: 0.1,
                    shadow: false
                },
                select: {
                    marker: {}
                }
            },
            stickyTracking: true,
            borderColor: "#FFFFFF",
            borderWidth: 1,
            center: ["50%", "50%"],
            colorByPoint: true,
            legendType: "point",
            size: "75%",
            slicedOffset: 10
        }
    },
    labels: {
        style: {
            position: "absolute",
            color: "#3E576F"
        }
    },
    legend: {
        enabled: true,
        align: "center",
        layout: "horizontal",
        borderWidth: 1,
        borderColor: "#909090",
        borderRadius: 5,
        shadow: false,
        style: {
            padding: "5px"
        },
        itemStyle: {
            cursor: "pointer",
            color: "#3E576F"
        },
        itemHoverStyle: {
            color: "#000000"
        },
        itemHiddenStyle: {
            color: "#C0C0C0"
        },
        itemCheckboxStyle: {
            position: "absolute",
            width: "13px",
            height: "13px"
        },
        symbolWidth: 16,
        symbolPadding: 5,
        verticalAlign: "bottom",
        x: 0,
        y: 0
    },
    loading: {
        labelStyle: {
            fontWeight: "bold",
            position: "relative",
            top: "1em"
        },
        style: {
            position: "absolute",
            backgroundColor: "white",
            opacity: 0.5,
            textAlign: "center"
        }
    },
    tooltip: {
        enabled: true,
        backgroundColor: "rgba(255, 255, 255, .85)",
        borderWidth: 2,
        borderRadius: 5,
        headerFormat: "<span style=\"font-size: 10px\">{point.key}</span><br/>",
        pointFormat: "<span style=\"color:{series.color}\">{series.name}</span>: <b>{point.y}</b><br/>",
        shadow: true,
        shared: false,
        snap: 10,
        style: {
            color: "#333333",
            fontSize: "12px",
            padding: "5px",
            whiteSpace: "nowrap"
        }
    },
    credits: {
        enabled: true,
        text: "Highcharts.com",
        href: "http://www.highcharts.com",
        position: {
            align: "right",
            x: -10,
            verticalAlign: "bottom",
            y: -5
        },
        style: {
            cursor: "pointer",
            color: "#909090",
            fontSize: "10px"
        }
    },
    navigation: {
        menuStyle: {
            border: "1px solid #A0A0A0",
            background: "#FFFFFF"
        },
        menuItemStyle: {
            padding: "0 5px",
            background: "none",
            color: "#303030",
            fontSize: "11px"
        },
        menuItemHoverStyle: {
            background: "#4572A5",
            color: "#FFFFFF"
        },
        buttonOptions: {
            align: "right",
            backgroundColor: {
                linearGradient: [0, 0, 0, 20],
                stops: [
                    [0.4, "#F7F7F7"],
                    [0.6, "#E3E3E3"]
                ]
            },
            borderColor: "#B0B0B0",
            borderRadius: 3,
            borderWidth: 1,
            height: 20,
            hoverBorderColor: "#909090",
            hoverSymbolFill: "#81A7CF",
            hoverSymbolStroke: "#4572A5",
            symbolFill: "#E0E0E0",
            symbolStroke: "#A0A0A0",
            symbolX: 11.5,
            symbolY: 10.5,
            verticalAlign: "top",
            width: 24,
            y: 10
        }
    },
    exporting: {
        type: "image/png",
        url: "http://export.highcharts.com/",
        width: 800,
        buttons: {
            exportButton: {
                symbol: "exportIcon",
                x: -10,
                symbolFill: "#A8BF77",
                hoverSymbolFill: "#768F3E",
                _id: "exportButton",
                _titleKey: "exportButtonTitle",
                menuItems: [{
                    textKey: "downloadPNG"
                }, {
                    textKey: "downloadJPEG"
                }, {
                    textKey: "downloadPDF"
                }, {
                    textKey: "downloadSVG"
                }]
            },
            printButton: {
                symbol: "printIcon",
                x: -36,
                symbolFill: "#B5C9DF",
                hoverSymbolFill: "#779ABF",
                _id: "printButton",
                _titleKey: "printButtonTitle"
            }
        }
    }
}