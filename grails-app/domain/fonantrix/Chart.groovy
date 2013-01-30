package fonantrix

class Chart {

	SortedSet Series
	static hasMany = [seriess: Series]
	
	String type
	String title
	String subtitle
	String xAxisTitle
	String xAxisjson
	String yAxistitle
	String plotLinescolor
	
    static constraints = {
    }

	static mapping = {
		seriess lazy: false
		xAxisjson type:'text'
	}
}
