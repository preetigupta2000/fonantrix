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
//System.out.println("inside GetRandomDataJob" + context.getMergedJobDataMap())
		def key = context.getMergedJobDataMap().get("key");
//System.out.println("key:" + key)
		redisService.withRedis { Jedis redis ->
			int index = redis.llen(key);
			if (index != 1) {
				def data = redis.lindex(key, index-1)
				data = Float.parseFloat(data) + random.nextInt(10)
				redis.rpush(key, data.toString())
			}
		}
    }
}
