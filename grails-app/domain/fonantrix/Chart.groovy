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
	
    static constraints = {
    }

	static mapping = {
		xAxisjson type:'text'
		seriesData type:'text'
	}
}
