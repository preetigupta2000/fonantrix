package fonantrix

class Series implements Comparable {

	static belongsTo = [chart: Chart]
	
	int no
	String value
	String data
	String additionalNodes
	
    static constraints = {
    }
	
	int compareTo(def val) {
		return no <=> val?.no
	}
}
