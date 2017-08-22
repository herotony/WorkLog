### 功能描述
本项目将是重构的起始项目，拆分出queue机制消费模块，该模块负责处理支付成功的订单。
分为三部分：DAO,SERVICE,BIZENTRY
### DAO模块
DAO:
  * 从数据库提取待处理订单，考虑后台提取，单线程while循环持续执行并存储于内存队列，线程最多等待100ms。
  * 批量刷新数据库，采用线程池多线程刷。考虑采用高效线程池并作测试!利用公司服务器。
  * 采用mybatis+HiKariCP的组合来做数据库这一层的操作,具体为：
      * 一个线程负责提取所有待处理数据，间隔1秒。
      * 开启100个线程处理提取到的所有待处理数据，每个线程间负责将数据刷回数据库，充分利用HikariCP线程池。
          * 开启多少线程待压力评测，不限定10000条了，一次全提取所有待处理线程，休息100毫秒即可
      * 即有一个线程专门负责提取待处理数据，间隔尽可能短，多个线程负责处理所有待处理数据。


### 重要勿遗漏事宜
  * 修改mdpaygate的queueconsumetask，不再提取pay类型queue记录，该任务仍然需要运行，只是最大的pay部分不再继续。
  * 需要添加shop的jar包，走dubbo,调整paycallbacksuccess等逻辑

### 测试疑点
  * dubbo总是失败，报forbid consumer，应该是服务提供方有问题，或者其他问题
      * zookeeper地址错误，本机host与常规环境不同
      * 需要hessian依赖组件
  * dubbo失败的情况下，居然md_order_info状态的pay_status刷成了2，那么mdpaygate屏蔽payevent没起作用？
      * 属于眼花看错字段，错将order_channel当成了pay_status
  * clientip必须不能为null，否则所有扫码枪失败，需要将null转为空白字符
  * paytype在payEventHandle里做了一次转换，会影响payid，进而影响客户端显示的支付通道的图标
  * 修改了List<String>为List<Integer>，费率判断条件调整类型
  * 模板消息常规环境始终未收到，今天上午开始排查，最终确定是昨天压力测试导致wxmsg.55tuan.me/api/WeChatMsg崩了
      * 最终步骤，首先用http://idcenter.55tuan.me/idcenter/home(账号密码是manager/manager，idcenter.55tuan.me对应ip:10.8.210.223)登录
      * 通过notifyserver项目配置找到其对应数据库地址为10.8.210.166(账号密码是notifyserver/notifyserver)，常规环境对应的库为notifyserver库下的以test_bu/test_ct/test_lk/test_if的表，查到相应消息的uuid，然后再在控制台"跟踪消息"处搜索，发现到了交换中心就没了记录，进一步查询，发现分配中心没有服务器在线
      * 先清空test_bu/test_ct/test_lk/test_if相关表，然后重启分发中心，很简单就是执行相关脚本如下,注意其中**&符号代表后台运行**

      ```
      ./run-distributer.sh &
      ```

      * 找到常规环境的notifyserver项目，打开对应控制台网站，发现分配中心不在线,重启分配中心在线
      * 继续从数据库提取uuid查某个消息然后发现还是失败，进入mdtask error目录发现http://wxmsg.55tuan.me/api/WeChatMsg 网站无法访问，重启windows服务器的www服务和相应的应用程序池，再查uuid方式排查发现notifyserver发送消息已经成功!
      * 在mdtask的business目录中搜索"模板消息"的确可以看到正常post给了http://wxmsg.55tuan.me 网站。而该网站发送模板消息的账号应该被封了。
          * 正常成功post数据时，httpReturn会显示shok,httpStatus为200.

```
[http postTemplateMsg [ url=http://wxmsg.55tuan.me:8096/api/WeChatMsg, encode=utf-8, postData='{"sign":"320f563795ee01bc0b09a35fa7934841","btype":"OrderPaySuccessed","userId":"37514294","keyword5":"8005816","openid":"ogIb-swyzLifIRecJMbBJKzsgQoQ","keyword8":"获得返现：0.00元\\n返现余额：499.40元\\n交易确认码：1309","keyword1":"W170818101309","keyword2":"0.01元","key":"123","keyword3":"餐饮美食-西餐","keyword4":"2017-08-18 10:48:51"}'],useTime=9,httpStatus=200,httpReturn="{\"errcode\":\"shok\",\"errmsg\":\"ok\",\"msgid\":\"\"}"]

```
      * 强调一点

<table><tr><td bgcolor="Teal"><font color="white">模板消息在mdtask的反现任务中处理，而该消息来自notifyserver，亦即来自支付成功的finishup的notify消息发送模块，此后该消息在notifyserver系统的mdtask消费者来继续post给.net的微信消息处理通道</font></td></tr></table>

* 周日下午（2017-08-20 18:34左右)，出现了大量的超时，即调用mdtradecenter的updatePaySuccess接口超时，但实际周一来查日志却发现md_order_info表很快就刷成了order_status=5,pay_status=2，只是dubbo超时返回了，导致QueueConsumeServer出现了大量的java null exception错误，有点怀疑是内存分配少了，毕竟今天用top指令看，内存占了1.2G，另外，针对pay_status=2,order_status=5，直接刷为消费成功就好了，省得占用资源导致堆积！明天更新一次。

* mdpaygate常规环境居然启动了两个进程，导致dubbo不识别了...
* 今天（2017-08-22）屏蔽了mdpaygate的pay处理，超时时长放到6秒后，查mdpaygate的error日志，不再有被扫超时日志即Read timed out异常没了，而昨天同时段是两百多单，明显改善，待中午高峰期过后再统计。

#### notifyserver问题

##### 交易项目注意点
使用notifyserver队列时，一定要区分常规环境，平行环境的Profile不能混了，因为不同的Profile配置了不同的队列名称，貌似某次平行环境采用了常规环境的包，导致mdNotifyQueuetest队列对应到了常规环境和平行环境的两台服务器，由于消息不能重复处理，只能由一台接收导致模板消息发送到了平行环境，从而影响到了常规环境的测试。

### 线上问题排查
##### 迅速搜索某个时间段内的queueinfo数据

``` sql
select * from md_pay_queue_bak where create_time>UNIX_TIMESTAMP('2017-08-18 05:20:00')*1000 and create_time<UNIX_TIMESTAMP('2017-08-18 06:20:00')*1000
and trade_no like 'W1708180560658%'
```

##### 判断queue处理速度和订单状态

```sql
select count(*) from md_pay_queue where consume_status!=2


select count(*) from md_pay_queue where consume_status=2 and `status`=5
```

##### 迅速搜索某个订单

```sql
select order_id,pay_name,pay_id,shop_name,shop_id,supplier_id,order_status,pay_status,user_id,ostype,
FROM_UNIXTIME(add_time/1000) as `AddTime`,FROM_UNIXTIME(bind_limit_time/1000) as `bindlimittime`,
FROM_UNIXTIME(bind_time/1000) as `bindtime`,FROM_UNIXTIME(pay_time/1000) as `paytime`,
FROM_UNIXTIME(pay_limit_time/1000) as `paylimittime`,schema_name,rebate_status,order_source,jiesuan_amount,pay_fee,order_rebate_total_money
from md_order_info where order_id = 'W1708180560658'
```

##### 关于绑定订单失败一例

* 目前存在一种情况，尤其是b扫c，因为同时存在主动查询和被动回调接收通知
    * 主动查询多次失败，返回tradeStatus=A004
    * 此时，收到回调通知，正在处理，md_pay_trade的status状态还是8（userpaying,等待用户支付状态)又被主动查询提走
    * 回调通知处理完毕，此时md_order_info表order_stauts刷为5，注定了主动查询绑定订单操作一定失败并报出错误日志
    * 而回调通知此时将md_pay_trade(status=3,支付成功)，md_pay_queue(也已录入完毕)，md_order_info的order_status也刷为5
    * 故而主动查询的错误可忽略，但其会不会影响二次录入queue，待查，其实问题也不大。
    * 就此，针对大量绑定订单失败，如果是b扫c，则可忽略。


<table><tr ><td bgcolor="Teal"><font color="yellow">确定了，在addQueue时，会根据tradeNo和queueType以及支付状态生成唯一的uniqueSign，这个会防止重复插入相同的queue数据，那么绑定订单失败反而可以用来统计超长的b扫c订单！</font></td></tr></table>

##### queueinfo未完成插入而queue被先提出的bug

* 该问题就是在处理是queueinfo还未进入数据库，导致处理失败，进而只能被修补状态任务修补，进而耽误几分钟的状态，需要及时修复。
* 已经修复，每小时必有几十笔，这种情况的延迟应该彻底消失了。


```
2017-08-22 08:29:25,503 [nowpayAsyncQueryStatusTask] ERROR c.w.m.s.i.TradeServiceImpl 2963 - [TradeID:W17082208207537,openId:2088802241078440,调mdfrontserver 绑定订单失败!]
2017-08-22 08:29:25,504 [nowpayAsyncQueryStatusTask] ERROR c.w.m.s.i.TradeServiceImpl 2528 - [TradeID:W17082208207537,openId:2088802241078440,userId149864897调mdfrontserver 绑定订单失败]
2


2017-08-22 08:29:24,752 [resin-port-9000-29] INFO  visitLogger [///] - [{visitMethodOut:OrderFsService.bindOrder,result:{"success":true,"code":0,"msg":"","resultObject":OrderBindModel[supplierId=8048058,shopname=旺福乐超市(宜昌道店),orderid=W17082208207537,price=6.50,rate=0%,rebateMoney=0.00,message=,mobile=,lefttime=7199,fbalance=0.00,canUseRebate=0,coupon=<null>,activityId=<null>,canUseCoupon=1,usefbalance=0.00,useCoupon=0.00]},useTime:33}]
2017-08-22 08:29:24,752 [resin-port-9000-29] INFO  serviceLogger [///] - [绑定订单返回结果：W17082208207537,{"resultObject":{"useCoupon":0.0,"canUseRebate":0,"supplierId":8048058,"shopname":"旺福乐超市(宜昌道店)","lefttime":7199,"message":"","activityId":null,"usefbalance":0.0,"rate":"0%","price":6.5,"rebateMoney":0.0,"canUseCoupon":1,"fbalance":0.0,"orderid":"W17082208207537","coupon":null,"mobile":""},"data":true,"code":0,"msg":"","success":true}]


08:29:09 下单,查询若干次A004，08:29:24收到回调通知，处理完成后，再次被nowpayscanquerytask调出，处理，然后绑定订单失败，待查
```

### java启动命令行

```

java -server -Xmx1g -Xms1g -XX:+HeapDumpOnOutOfMemoryError  -classpath "../*" com.shanhui.pay.service.Main

```

我线上采用后台模式，用如下指令行

```
nohup java -server -Xmx1g -Xms1g -XX:+HeapDumpOnOutOfMemoryError  -jar SERVICE-1.0.0.jar &
```

* nohup [...] & 代表后台执行相应命令行
* 更简单的模式，放入某个.sh脚本，用**./some.sh &**模式也行

#### java程序

* 无需web容器也能启动基于Spring框架的Java程序，前提是如下图得在Main入口用<font color=Teal>**ApplicationContext**</font>来载入相应的Bean Xml。
 ![Java-Spring-01](images/Java-Spring-01.jpg)

* 相应入口模块(module)的resources下需要<font color=Teal>**配置META-INF目录并添加MANIFEST.MF文件**</font>，并写入如下内容：
   * 其中<font color=Teal>**Main-Class**</font>即入口类Main.java的完整命名路径。
```
Manifest-Version: 1.0
Main-Class: com.shanhui.pay.service.Main
```
* 相应入口模块的pom文件中务必在build节点添加如下插件配置
    * <font color=Teal>**maven-dependency-plugin**</font>插件定义了拷贝依赖组件到lib目录
    * <font color=Teal>**maven-jar-plugin**</font>的archive节点定义了在MANIFEST.MF文件中写入入口类依赖的jar包，这样才能简明启动而不是在java命令里添加无穷的依赖包指令。
```xml
<build>

        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-dependency-plugin</artifactId>
                <executions>
                    <execution>
                        <id>copy</id>
                        <phase>package</phase>
                        <goals>
                            <goal>copy-dependencies</goal>
                        </goals>
                        <configuration>
                            <outputDirectory>${project.build.directory}/lib</outputDirectory>
                        </configuration>
                    </execution>
                </executions>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-jar-plugin</artifactId>
                <configuration>
                    <archive>
                        <manifest>
                            <addClasspath>true</addClasspath>
                            <classpathPrefix>lib/</classpathPrefix>
                            <mainClass>com.shanhui.pay.service.Main</mainClass>
                        </manifest>
                    </archive>
                </configuration>
            </plugin>
        </plugins>
    </build>
```
* 编译后的目录结构说明
    * jar包一定只包含自身类的内容，绝不包含lib目录，这不是war包，那是打包所有的目录(包括lib目录)进来。
    * 基于jar包的项目需要手工拷贝相应的所有目录来部署，只是没有war包会通过容器自动解压缩而已，麻烦不了多少。
    * 一般target目录如下图所示

    ![Java-Spring-02](images/Java-Spring-02.jpg)
