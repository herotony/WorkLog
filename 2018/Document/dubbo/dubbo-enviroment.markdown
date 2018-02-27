## dubbo 环境

* JDK是必须的，然后是zookeeper作为注册中心也是必须的，就这样了，然后就可以使用dubbo中间件了。

### 概述

* 请参考 http://dubbo.io
* 架构图如下
  *  ![dubbo-achitecture](images/dubbo-architecture.png)

### zookeeper的配置启动

* [zookeeper官网](https://zookeeper.apache.org/)
* [zookeeper简单开始教程](https://zookeeper.apache.org/doc/current/zookeeperStarted.html),这里有如何利用zkClient进行当前zookeeper服务的测试。

* 很简单先下载官方压缩包，比如：zookeeper-3.4.1.tar.gz,然后找合适目录解压该压缩包，进入conf目录拷贝zoo_sample.cfg，并重命名为zoo.cfg，然后编辑该文件，修改clientPort，也就是启动端口内容如下：

```
ticketTime=2000 #zookeeper的最小时间单位，毫秒级，任何zookeeper使用的时间参数都是该ticketTime的倍数。
clientPort=2181 #建立连接的监听端口
dataDir=/tmp/zookeeper #保存内存快照的目录和数据库事务更新日志目录。
server.1=zoo1:2888:3888 #zoo1,zoo2,zoo3可以是域名也可以是ip地址比如：127.0.0.1，且每个服务器必须存在对应的myid文件，而该文件内容为1 or 2 or...
server.2=zoo2:2888:3888 #2888为zoo1,zoo2,zoo3间的连接端口（彼此间同步更新，选举产生的leader服务器用2888端口来建立follower间的连接）,3888为zoo1,zoo2,zoo3选举leader服务器端口。
server.3=zoo3:2888:3888 #实际应用中必须集群方式启动zookeeper，每个zookeeper实例都必须用相同的zoo.cfg配置。
initLimit=5 #集群所有服务器连接到leader服务器间的最长时间 5*ticketTime
syncLimit=2 #集群服务器从leader服务器同步到各个服务器的最长时间 2*ticketTime

```

* 通过 in linux:bin/zkServer.sh start or in Windows: bin/zkServer.cmd来启动zookeeper服务。
* 生产环境的zookeeper必须是集群环境，每台服务器必须是单独的物理机器，虚拟机也必须不在同一物理机上。

至此，此阶段的使用应该是到此为止，无需过多深入。

### dubbo配置
* 今天又特意单写了测试程序，待明天完成，用来测集群，优雅关机等等。
* 2018-02-27，今天用IDEA调试总报ClassNotFound错误，但实际编译的lib目录里有相关jar包，此时，需要在.imi文件中加入相应jar包的依赖项即可。这种错只会出现在调试过程中而已。
  * 新版dubbo必须采用openjdk 1.8以上版本，已测试没问题。
  * 暴露接口可以采用com.alibaba.dubbo.container.Main，在编译时通过build/plugin/jar指定启动类即可。无需任何编码。如下图
  * 封装类只需要配置好pom和相关的bean xml即可。
    * ![wrapper project construct](images/dubbo-wrapper.jpg)
  * 关键的pom插件配置，设定启动类。
    * ![key plugin](images/dubbo-wrapper-pom-key-plugin.jpg)
  * 启动很简单！java -jar java-wrapper.jar，该jar包只包含关键的META-INF/Manifest.MF文件用于识别启动类。
#### dubbo application
#### dubbo monitor
#### dubbo admin website
### 测试点
* 一律通过jmeter进行测试
* dubbo集群：kill pid优雅关掉某个dubbo provider，查看相关日志确认。摘负载上线的关键。
  * 采用failover cluster，失败后切换试用其他服务器，建议只重试一次，因为，摘负载就是一台一台上的。\

   ```
  <dubbo:reference retries="1"/>
   ```
    * 还是建议采用failfast吧，只要优雅关机没问题就行，这是关键的关键。

     ```
<dubbo:service cluster="failfast"/>
```
    * 测试在公司一台服务器和我本机之间进行即可。需要下午完成测试程序。
  * 集群搭建则很简单，就是在不同服务器，同一局域网内，部署相同的dubbo:service，采用相同的注册中心配置，自动组建完成集群。在dubbo-admin中可看到，需要验证。
* dubbo负载：调权重是否真实影响访问量的分配。
* dubbo协议的长连接性能测试。主要针对生成订单号之类的功能。
