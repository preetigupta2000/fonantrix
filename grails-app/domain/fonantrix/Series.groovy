package fonantrix

class Series implements Comparable {

	static belongsTo = [chart: Chart]
		
	int no
	String type
	String name
	String dataValue
	String additionalNodes
	
    static constraints = {
    }
	
	static mapping = {
		dataValue type:'text'
		additionalNodes type:'text'
	}
	
	int compareTo(def val) {
		return no <=> val?.no
	}
}
