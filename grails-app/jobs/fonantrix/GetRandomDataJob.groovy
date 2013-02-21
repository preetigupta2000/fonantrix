package fonantrix

import org.quartz.JobExecutionContext

import redis.clients.jedis.Jedis

class GetRandomDataJob {
	Random random = new Random()
	def redisService
	
	def group = 'GettingData'

	static triggers = {}
	
    def execute(JobExecutionContext context) {
        // execute job
		def key = context.getMergedJobDataMap().get("key");
		def type = context.getMergedJobDataMap().get("type");
		redisService.withRedis { Jedis redis ->
				int index = redis.llen(key);
//System.out.println("type:" + type)			
//System.out.println("index:" + index)
			if (index > 0) {
				def data = redis.lindex(key, index -1)
				if (type == "pie") {
					System.out.println("data:" + data)
					def arr = data.split(",")
					def lastElement = arr[random.nextInt(4)]
					println lastElement
					data = data + "," + lastElement
					println data
					//redis.lset(key, index, data)
				} else {
					data = Float.parseFloat(data) + (random.nextInt(50) - 25)
					redis.rpush(key, data.toString())
				}
			}
				
		}
    }
}
