---
layout: "post"
title: "using jedis"
date: "2017-06-22 09:34"
---

#### what is redis sentinel
#### what is redis pipelining
  redis自带支持的批量处理redis命令的管道命令,能极大减少来自网络的消耗，但同时也要注意到，走管道处理的命令其结果一定会在服务端通过Queue的方式缓存结果以便一次返回给客户端，这项技术历史久远，典型的应用就是邮件的pop3协议，批量下载新邮件就是这种处理模式。
  * [jedis pipeline sample](https://github.com/herotony/jedis/blob/master/src/test/java/redis/clients/jedis/tests/PipeliningTest.java "Jedis PipeLine官方示例")
#### what is redis transaction
  redis的事务只是代表原子操作，不支持回滚，在MULTI指令后的每一个redis指令都是queue住并做校验，比如,key对应的数据类型是否正确等，当到EXEC时，则才是真正开始执行所有的queue住的指令，同时确保顺序执行！中间任何redis指令执行失败并不会导致停止执行，还会执行后续的指令，如果都执行成功则返回OK，否则会返回ERR并指出具体原因，下面说明了具体步骤
  * MULTI (start tran)
  * redis cmd1 (queue...) -> redis cmd2 (queue...)... redis cmdn
  * EXEC
  * OK OR ERR with reason description

  DISCARD代替EXEC则意味着放弃本次事务操作，所有redis连接都将释放，这个指令何时用合适不知道呢

  WATCH指令则一般用在MULTI前，用来在事务操作做一次check-and-set(CAS),此时，WATCH的key都将被监控起来，在EXEC前，一旦被监控key有变化，则整个事务操作将被放弃直接ABORT,并且返回Null,同时注意，一旦EXEC完成，则所有WATCH的key则自动改为UNWATCH状态。
#### what is GenericObjectPoolConfig
#### jedis sample
* [JedisSentinelPool Sample](https://github.com/herotony/jedis/blob/master/src/test/java/redis/clients/jedis/tests/JedisSentinelPoolTest.java "Jedis Sentinel Pool官方测试示例")
* [JedisPool Sample](https://github.com/herotony/jedis/blob/master/src/test/java/redis/clients/jedis/tests/JedisPoolTest.java "Jedis Pool官方测试示例")
