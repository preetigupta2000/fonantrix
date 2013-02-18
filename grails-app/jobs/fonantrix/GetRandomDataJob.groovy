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
		redisService.withRedis { Jedis redis ->
			int index = redis.llen(key);
			if (index != 1) {
				def data = redis.lindex(key, index-1)	
//System.out.println((random.nextInt(100) - 50))				
				data = Float.parseFloat(data) + (random.nextInt(200) - 100)
				redis.rpush(key, data.toString())
			}
		}
    }
}
