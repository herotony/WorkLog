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
#### Distributed locks
>  官方提供的Redlock算法，支持如下三个基本要求
>  1. 安全，同一时刻，只能有一个客户端拥有锁
>  2. 存活A，释放死锁机制，确保获取某个资源锁的客户端崩了，最终仍能获取该资源锁
>  3. 存活B，容错机制，一旦主要的Redis节点耗尽，客户端仍然能获取和释放相应的资源锁

   - why failover-based implementations are not enough
     - 为了理解我们要提升什么，先分析当前基于Redis的分布锁的应用情况

        最简单的基于Redis分布锁应用就是创建一个key，这个key一定设定了过期时间，即利用了Redis的expire特性，确保最终会释放锁从而满足基本要求2,当客户端释放资源锁则是简单的delete该key即可。这个机制貌似不错，但当Redis master宕机了，所谓的slave因其异步同步机制导致其并没卵用（因为宕机，会导致锁key恰巧丢失），所以基本要求3并不能得到满足！此时，任何一个客户端都能再次获取锁，那么锁失去了意义，因为原来持有者理论上还没释放呢，你丫就又能获取了。
     - 单一实例分布锁的正确实现方式

       关键点除了设置过期时间，还要为key(待锁资源名称)设置<font color=red>唯一标识</font>的<font color=blue>值</font>，确保值的唯一性很重要！，删除时除了判断key是否存在还必须校验值是否一致，确保删除锁的操作来自设置锁的客户端！比如这个应用场景：
          * 当客户端A获取锁后，由于超时操作导致锁因时间过期而被Redis系统删除，此时，客户端B获取了锁，但与此同时，客户端A操作完成要删除锁，此时，由于做了校验确保该资源锁不会被删除，否则，会被客户端A删除，从而客户端B失去了锁的意义！进而导致客户端C,D...都有可能再次获取锁。

       但是，诚如大家所见，该机制不能确保锁过期这件事,为锁设置过期时间，只能确保锁最终能自动被释放，过期时间内锁具备排他保障。但就满足设计要求了。这里强调的是单一实例的分布锁，即只有一个Redis实例，没有什么slave,sentinel之类的考虑，即在该单一实例不宕机的情况下没问题，但是多个分布Redis实例下的分布锁呢？
     - Redlock算法

       亦即所谓多Redis实例分布版啦，这里我们一般假设有N个Redis master且这些nodes是完全互相独立的（即它们之间不存在任何复制和隐藏的协作系统）。在这里我们预设N=5，即我们需要在不同的计算机或虚拟机上运行5个Redis master实例以确保满足模拟绝大部分独立部署场景下的宕机容错处理。此种情况下客户端获取资源锁步骤如下：
         1. 客户端先获取当期时间(System.currentMilliSecond())
         2. 客户端顺序从N个Redis master获取锁（实际就是做setnx啦,注意，所有N个实例采用相同的key和唯一值),在客户端设置过程中，客户端采用的time out值远小于实际过期值，比如，我们的过期时间为10秒，那么，客户端设置的获取锁time out的值约为5-50毫秒。这么做就是确保当某个Redis node宕机了,能尽快轮询下一个Redis node。
         3. 客户端每轮询一个Redis node取到锁后(即setnx成功)，根据第一步的值来计算耗时，至少成功获取了3个Redis node的锁且总耗时小于锁的过期时间，则才算获取锁成功！
         4. 成功获取锁后，有效过期时间要减去取锁的总耗时。
         5. 若取锁失败（比如：取锁数量小于N/2+1或者总耗时已经超出过期时长），将删除所有Redis node上的锁（即便曾经判断某个Redis node没有锁）。

      - Redlock算法支持异步吗？

        总而言之，上述第三步取到的锁，是基于各个Redis node机器间时间是一致的，即便有也是很小可忽略的，基于此该算法才能确保容错机制起效！即不支持异步。
      - 如何反复尝试提取锁

        当一个客户端不能正常获取锁，应该延迟一个<font color=green>随机值的时间</font>（以便与其他多个客户端错开，避免同一时刻争抢同一资源,否则极易导致集群中常有的<font color=red>脑裂</font>故障，谁也取不到锁！）,基于此，<font color=blue>一个客户端越短时间取到锁，脑裂故障越不易形成，从而我们建议一个客户端应在同一时刻多路同时向Redis node获取锁才是王道</font>。

        值得反复强调的是，一个客户端在获取锁失败时要<font color=green>尽快释放</font>**已部分**获取的锁，确保该锁不是过期时间到了才被释放！
