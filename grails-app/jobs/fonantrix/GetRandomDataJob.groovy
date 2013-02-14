package fonantrix

import redis.clients.jedis.Jedis;

class GetRandomDataJob {
	Random random = new Random()
	def redisService
	
	def name  = 'DynamicData'
	def group = 'GettingData'

	static triggers = {}
	
    def execute() {
        // execute job
System.out.println("inside GetRandomDataJob")
		redisService.withRedis { Jedis redis ->
			int index = redis.llen(key);
			if (index != 1) {
				def data = redis.lindex(key, index-1)
				data = Float.parseFloat(data) + random.nextInt(10 ** num)
				redis.rpush(key, data.toString())
			}
		}
    }
}
