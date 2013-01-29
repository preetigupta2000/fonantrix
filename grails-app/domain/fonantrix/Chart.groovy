package fonantrix

class Chart {

	String type
	String title
	String subtitle
	String xAxisTitle
	String xAxisjson
	String yAxistitle
	String plotLinescolor
	String seriesData
	String seriesData1
	String seriesData2
	String seriesData3
	String seriesData4
	String seriesData5
	String seriesData6
	String seriesData7
	String seriesData8
	String seriesData9
	
    static constraints = {
    }

	static mapping = {
		xAxisjson type:'text'
		seriesData type:'text'
		seriesData1 type:'text'
		seriesData2 type:'text'
		seriesData3 type:'text'
		seriesData4 type:'text'
		seriesData5 type:'text'
		seriesData6 type:'text'
		seriesData7 type:'text'
		seriesData8 type:'text'
		seriesData9 type:'text'
	}
}
