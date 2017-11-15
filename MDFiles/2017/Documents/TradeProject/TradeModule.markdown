## 常见问题
## 修改点
### 变更支付接口

主要针对变更支付合作方，需要修改如下几点
* mdfrontserver
    * 涉及增加paytype(支付渠道)以赋予相应的配置参数，比如：appid,partnerid...
    * 涉及支付成功后的回调，处理返现方案，注意只针对相应的paytypt(支付渠道)进行返现
* mdpaygate
    * 真正需要大改的地，负责与新的支付接口对接并将返回数据更改为我们体系内的数据。
* mdtradecenter
* mdtask

#### 涉及功能
 * c 扫 b ，主扫支付，必输密码
     * 回调通知
 * b 扫 c ，被扫支付，又叫扫码枪支付，五笔之后或者金额超限要输入密码
     * 轮询查询支付结果
     * 有的第三方也在支付不明确情况下，回调通知
 * 退款
 * 自动补单
 * 余额支付
 * 直连支付


#### mdfrontserver
## 浙江网商银行接口

只需要参考5.2.7 - 5.2.14部分即可。
## 几个关键点梳理说明

2017-09-08

* 全部采用redis - sentinel，70万5秒写入，70万删除20秒
* 剔除mdfrontserver
* paycenter模块,paygate模块,tradecenter模块,task模块
* 独立通道机制
* 独立insert表，后台update...
* 提炼sql
* 监控体系
* 舍弃dubbo,全部采用http/json模式。精确评测单台服务器处理能力，用jmeter压测。
* 结算库的异步同步机制
* http连接池
      * 保持过程中如何保证连接没有失效？
        很难保证。传统阻塞I/O模型，只有当I/O操做的时候，socket才能响应I/O事件。当TCP连接交给连接管理器后，它可能还处于“保持连接”的状态，但是无法监听socket状态和响应I/O事件。如果这时服务器将连接关闭的话，客户端是没法知道这个状态变化的，从而也无法采取适当的手段来关闭连接。

        针对这种情况，HttpClient采取一个策略，通过一个**后台的监控线程定时**的去检查连接池中连接是否还“新鲜”，如果过期了，或者空闲了一定时间则就将其从连接池里删除掉。ClientConnectionManager提供了 **closeExpiredConnections**和**closeIdleConnections**两个方法。监控新鲜这事如何做，关闭倒是知道。另外，可在服务端主动设置keep-alive的时长来决定closeExpiredConnections更靠谱点。这个是在连接池中关闭，不存在中断业务。

2017-09-11
* 本周考虑通道切换完善机制和httpclient连接池测试，以及着手逐步分离模式进行重构交易模块，尤其是通道分离机制，如何确保不堵死前端以及迅速切换是相辅相成的。
* insert完全独立，update/delete时，确保可重试，基于select，select确保与update/delete一一对应，去除死锁隐患，关键在于主键索引的设计。统计库单独拉出，仅接受insert/select操作。
* 中午再次崩了，现在支付超过3秒较平时高出3倍多，即导致mdpaygate负载升高至70%，进而拖垮整个系统，待考虑如何优化，比如完全独立出去。

2017-09-12
* 常规环境因为防火墙打开导致9040端口不通，进而导致dubbo不通，无法联调。已修复。
* 考虑测试http连接池。

2017-09-18

* mdpaygate继续剥离所有task类任务，尤其是b->c和支付订单查询接口以及补单部分。必须采用连接池
* mdpaygate回调与请求分离，尤其是回调，可重新设计一个中间表，只记录回调信息，纯insert，后续给一个服务负责select->process ->delete/insert-to-log(batch,累积一定数量)
* dubbo连接池配置部分研究
* 通道切换，用户/支付通道/，门店针对某个通道的多次进件虚拟进件号(真实对应某一个通道的进件号)，也就是说，我们这的一个真实门店id，对应多个虚拟门店id,每个虚拟门店id真实对应一个通道的进件号，另外，某个用户，这次用了这个进件号支付，下次就用另外一个进件号支付，嗯，就是这个需求。

* 配合联调模板消息，修改一处bug，未将bean赋予相关domain对象

2017-09-19
* 继续修改mdfrontserver通道切换，暂不采用redis sentinel。
* 完成了通道切换修改redis的使用模式，本周完成交易模块的优化方案文档，简单有个ppt吧，做稍微规整些，以后也按这个文档来进行逐步的迭代优化，目标是每天4000万单，目前是260万单，需要提高20倍，此前因为合作方打满导致cpu负载过高事宜，通过连接池即可解决。
* 评判标准确定，连接数是高于cpu负载的，因为我们是io密集型，不是计算密集型。也就是有效加物理机优于加cpu核数量，但要多线程+线程池的运用到极致才能提高。线程池减少建立连接开销，有利于提高服务器整体效率。

* notifyserver的合理运用，需要做一次测试，notifyserver提供了可靠的异步通知处理机制。
* ppt文档，简要交易流程介绍，瓶颈点，数据说明，如何优化，dubbo配置连接池,如何进行压测评估，确保每台服务器的并发线程在200以内
  * 4000万每天，折合下来每秒500条，高峰则每秒1000条，3-5台服务器即可。今天下午看看dubbo如何监控，如何配参
  * http/dubbo双调优的过程。持续过程
  * task分离，访问/回调分离，数据表分离 or 善加利用notifyserver
  * 连接池的运用，目前没用连接池
      * mdfrontserver - est:20/wait:2587
      * mdpaygate - est:29/wait:1776
      * mdtradecenter - est:18/wait:12 3306-mysql采用连接池，效果很好，但有很多50102 -notifyservera居然没有用连接池
      * mdtask - est:205/wait:4533  8096短信接口
  * notifyserver如何运用防止合作方崩了带来的cpu负载过高

* 今天速速提交了方案，明天开始研究dubbo吧，争取本周搞定，下周开始优化，好好整理相关测试demo和几个java测试工具的使用。



* too many open files这个问题网上有很多答案，就是文件句柄数超过了系统设置，系统设置为65535。而linux文件句柄是包含了文件的读写和tcp连接。
* 连接数设置不合理，设置过大。一个连接可以同时处理10个、100个并发都是没有问题的。
* 连接数和并发数、线程数不是一个概念。连接数是与网络连接有关的。一个连接数可以支持70Mbype的网络流量。
* 多个并发请求是在一个tcp连接上传输的。传输到达dubbo端后，dubbo会把tcp连接上的请求分配给线程池中的线程处理。
2、长连接是一直占用的网络连接，线程会超时，而长连接不会断开。
3、nio rector机制通过长连接来减少tcp握手和挥手的开销。通过事件通知来实现非阻塞式传输，因些阻塞不会传递。
* mdfrontserver

2017-09-21

* mdtradecenter的orderpreparedomain是余额付款的处理，同样发送模板消息，分队列。

2017-09-22

* 确认威富通接口
    * newwap - 9 to 43(wx c-b);12 to 46(b-c );14 to 47(alipay c-b)
    * mdfrontserver - FSOrderConstants:43(wft pay)/46(wft scan pay)/47(wft c-b pay by alipay)，微信相关支付没有？434 就是微信支付c-b
    * mdpaygate - WEIFUTONG_PAY/WEIFUTONG_ALIPAY/WEIFUTONG_SCAN_PAY
    * mdpaygate - 43 - 威富通支付 /46 - 威富通小额支付 /47 - 威富通支付宝c-b支付
    * mdpaygate - mdpaygate-domain-bean.xml涉及trademanager,tradescanpaymanager,tradealipaymanager/tradequerymanager,tradescanpayquerymanager/traderefuntdmanager/tradescanpayrefundmanager
    * payid - 12,wft wx b-c; 13,wft alipay b-c;9,wft wx c-b;14,wft alipay c-b;

2017-09-25

  * 梳理威富通接口的变化点并做修改。评估进度以及障碍点。

## 威富通支付接口再整理
* [https://open.swiftpass.cn/openapi](https://open.swiftpass.cn/openapi),看：微信公众号支付/支付宝服务窗支付/统一刷卡支付
* 订单生成后，必须至少间隔5分钟才能关闭订单。
* 所有参数都是字符串格式。
### 微信 c-b 公众号支付
#### 必须参数
* service 规定值：pay.weixin.jspay
* mch_id  <font color=Teal>此值之前是固定一个值，此次应该更改，为一个shopid对应一个mch_id</font>
* out_trade_no : W170925...0000,追加四个0。
* body: 瞎填？
* sub_openid:newwap提供
* sub_appid:唯一值，一个应用合作伙伴一个。<font color=Teal>不需要提供</font>
* total_fee: 以“分”为单位的int值。
* mch_create_ip:newwap提供。
* notify_url:绝对回调地址。
* nonce_str:随机串，不长于32位。
* sign:md5签名结果。
* time_start:201709251419
* time_expire:201709251425
### 支付宝 c-b 服务窗支付
#### 必须参数
* service 规定值：pay.weixin.jspay
* mch_id  <font color=Teal>此值之前是固定一个值，此次应该更改，为一个shopid对应一个mch_id</font>
* out_trade_no : W170925...0000,追加四个0。
* body: 瞎填？
* total_fee: 以“分”为单位的int值。
* mch_create_ip:newwap提供。
* notify_url:绝对回调地址。
* nonce_str:随机串，不长于32位。
* sign:md5签名结果。
* time_start:201709251419
* time_expire:201709251425
### 统一 b-c 刷卡接口
#### 必须参数
### 关闭订单
* 此前并未实现，现在应该是支持了，需要明天额外实现。

### 核实步骤
* 2017-09-26,上午：微信c-b/支付宝c-b核实修改/关闭订单，下午：统一刷卡/退款/查询核实修改/queueconsumeservice/mdtask(反现为0)。
  * 回调通知间隔（通知频率为0/15/15/30/180/1800/1800/1800/1800/3600，单位：秒）。我们应该返回success。
  * 采用连接池。
  * sh_wowostore的sh_shop_paychannel表根据shopid可刷redis [{payType,payJsonData},...,{payTypen,payJsonDatan}],payType可重复存入，但最好别这么做，即payType保持唯一最好。针对威富通，保存为shopid-43,46,47-{"mch_id":123}存入数据库,从redis里则根据shopid提出一个List<shoppayref>列表，key值格式为**KEY_SHOP_PAYREF_shopid**,直接从redis读取。
* 2017-09-27，联调c-b/b-c/退款接口。
 #### 2017-09-26
 * AlipayWeifutongTradePayManager - 支付宝 c -b 支付参数请求/回调通知的核实通过。pay_result参数，bank_type参数需要看debug日志。
 * AlipayweifutongTradeRefundManager - 支付宝退款接口/回调核实通过。不存在回调，之前也未实现。
 * 日了，三个威富通退款处理类，太变态了吧，算了，只看WftScanRefundTask/WeifutongRefundTask,这只是查询已经提交成功的退款，要求三天后，那么可以不必那么频繁，退款申请也加入了根据门店id提取相应的进件号，以前不是做支付，所以，我只是一个商户，不存在进件，现在我们做支付，就需要进件号了，这里的partnerkey是唯一的，需要两个不同门店进件后来做测试才能确认。
   * weifutongrefundserviceimpl
   * weiftongscanrefundseriveimpl，没有用到。
   * wftscanrefundserviceimpl
### 2017-09-27
* QueueConsumeService针对威富通部分调整完毕。
* <font color=red>关闭订单这部分下午核实</font>，同样涉及微信，支付宝，c-b/b-c四部分
    * 无论现在支付还是之前的威富通，都是我们自己数据库刷了状态完成关闭，并不调用第三方接口去关闭订单。那么就先这样吧。
* 回调部分统一核实，微信，支付宝两部分
* 支付宝c - b部分再核实
    * <font color=red>支付宝 c-b的回调通知目前代码与接口文档不符需要核实。</font> in AlipayWeifutongTradePayManager.java,bank_type节点不存在
    * WftAlipayConfig.getwftKey，查了线上配置，wft.key/wftscan.key/alipaywft.key都是同一个key值，那么就统一采用一个好了，乱七八糟的感觉。
    * AlipayweifutongTradeRefundManager的提交退款部分核实完毕，<font color=red>但查询退款部分尚待核实</font>。
* 微信 c - b部分再核实

* 退款
    * WftScanRefundServiceImpl(b-c退款查询)
    * WeifutongRefundServiceImpl(c-b退款查询)
    * refundNotify的逻辑诡异没用的感觉，这部分待确定，先确保交易，查询，回调，退款，节前跑通，十一期间可以在家抽空梳理一次代码。

mdfrontserver/mdpaygate/mdtradecenter/mdtask已部署到平行环境，但发现mdpaygate大量的返回不做任何验签，需要补充。
mdpaygate调整了很多逻辑，大部分是验签补充，已推到平行环境，明天开始联调

 ### 威富通交易中心调试日志

 #### 2017-09-29
 ##### jedis-java-driver导致的困扰
 beanxml配置时，总是报不存在的属性，发现用的是该jar包的jedispoolconfig/jedispool而不是jedis.2.8.0.jar包，后台提出pom.xml中的所有该包的依赖，还是会打包到war包里，后来根据全局搜索，发现一个中间件cozy-common-lang.jar包中有引用，只能，在cozy-common-lang配置的依赖中加入<exclusions><exclusion><groupid>org.redis</groupid><aritfactid>jedis-java-driver</artifactid></exclusion></exclusions>，即可确保不引入该jar包了。
 ##### jedisPool构造函数造成的困扰
 jedis.2.8.0的构造函数有多个参数类型重复的，即参数数量相同但类型不同，此时，仅根据index配置导致调用了错误的构造函数，此时需要追加相关的参数类型才能正确区分。
 ##### jedis-2.8.0导致的困扰，暂时恢复成2.4.0
 mdfrontserver内部使用的类在jedis-2.8.0.jar下会导致pipeline.discard抛异常，暂时恢复为原来的jedis.2.4.0恢复正常。至此，c-b的precreate方法调用正常，但支付页面点击支付按钮没反应，待仁伟排查。

 #### 2017-10-09

 10.7,8两天交易模块调试，微信c-b尚未成功，退款尚未测试。另，通道切换已可用，但基于门店的切换待测试。
 上午一上午都是开会，下午整理交易模块,<font color=red>交易模块全通，正式环境的配置要格外注意</font>

 #### 2017-10-10

 10.10 微信扫一扫，在二维码请求链接中追加强制升级的request in sercure的一堆东西，导致IIS无法识别链接，直接返回400错误，若链接采用https则不会追加，总之是微信干的垃圾事导致。
威富通已部署到常规环境，此前做了aliyunmaster向reusewft分支的合并

#### 2017-10-11
* 上午讨论费率更改方案，我这边提取费率是从redis提取
* 保存提供接口供世辉调用保存到redis，我会从数据库提取费率
* 新费率：current-future-begintimeforfuture
    * future/begintime不为null,且当前时间>=begintime,payrate=future
    * 否则，payrate=current

#### 2017-10-12
* shopcenter2分支feature/webank，部署到常规环境，修正了进件服务器的shshopcenter.55tuan.me的dns到10.9.28.198服务器（shopcenter2常规环境），确认调用getshopbyid...返回了进件信息。
* mdpaygate还是用的老目录/home/mdpaygate，但实际jenkins已调整到/data1/application下。且自动部署还是启动脚本有问题，实际没起作用，一直还是/home/mdpaygate目录下的项目在运行。
  * 这部分部署在/data1/aplication下，日志在/home/mdpaygate/logs/resin下
  * 目前sub_merchanid/sub_app_id不匹配
* 微信c-b的partnerid，即微信关注号变了，修正后，支付成功
* 默认：现在支付支付入口类型
      61 微信C扫B  -- 61 in mdpaygate
      16 支付宝C扫B  -- 49 in mdpaygate
      81 微信B扫C -- 81 in mdpaygate
      18 支付宝B扫C -- 51 in mdpaygate

      威富通支付入口类型：
      43 微信C-B
      47 支付宝C-B
      46 统一B扫C

      威富通订单payid值
      9 ,威富通微信c - b支付
      14，威富通支付宝c-b支付
      12，威富通微信b-c刷卡支付
      13，威富通支付宝b-c刷卡支付
* 确认支付交易是成功的，其次是退款未测到。着手威富通上线步骤交易模块的整理
* 切换通道redis准备，涉及mdfrontserver/mdpaygate/queueconsumeservice/shopcenter2(进件号修改).启动wftScanQueryTask的jobcenter，分支确认分别是reusewft/master/webank,还有魁星相应的表结构要先创建。
* 在jobcenter中配置weifutongRefundTask接口任务，每5秒一执行。
#### 2017-10-13
* 替换了SpringContextUtil，加入sign_agentno字段，目前退款测试全部通过，下午拉分支做费率调整部分。
* 下午shopcenter2/queueconsumeservice拉分支，做费率。

#### 2017-10-16
* 三件事：屏蔽所有反现和余额使用、费率修改(还剩queueconsumeservice)、常规环境模板消息排查。
* com.shanhui.shopcenter.shopcenter2-service.2.1.4.jar is used by mdpaygate
* com.shanhui.shopcenter.shopcenter2-service.2.1.0.jar is used by shopcenter2,holly shit...
* QueueConsumeService调整完毕，待测试，编码完成。
* mdfrontserver/mdtask屏蔽反现。
#### 2017-10-17
* 自测，合并到aliyunmaster，争取明天提上线申请。
* 反现原来在mdtradecenter的orderpaysuccess中控制，mdtask貌似只剩关闭订单了，这部分涉及结算金额，这不能错。
* 还需要在mdtradecenter的ordecreatedomain，将Order_rebate_total_money设为0，这部分只是显示不混乱
#### 2017-10-18
* 整理威富通一期上线。费率继续自测，mdfrontserver去掉isSkip for rebateuse,由胡正前端去控制。
* 明天来公司后，配置威富通的scan,refund jobcenter
* hudson打包用的是每个项目自己的本地库，如果不变版本号是不会重新从私库拉取的，所以，要么变版本号，要么删除hudson的项目本地库中的文件jar包。
#### 2017-10-19

* **<font color=red>通道切换没有关闭连接这种傻逼错误导致今天上线失败！唉，老了！</font>**,明天上线。
#### 2017-10-20

* shopcenter2本地重新打包后会自动安装覆盖到本地库.m2,而引用该组件的其他项目自然就会自动采用了新版本了。
* 费率功能，已部署到常规环境：shopcenter2,queueconsumeservice。
* 再次修改mdpaygate的威富通被扫功能。

#### 2017-10-23

* 本周费率功能上线，威富通正常后，考虑休假。
* isv直连支付文档，口碑入口。商户入驻经由口碑。https://docs.open.alipay.com/205/104497
* 我们应该只看： 当面付的支付交易部分，https://docs.open.alipay.com/194
    * b-c扫码（条码支付），https://docs.open.alipay.com/194/106039
        * alipay.trade.pay
        * alipay.trade.query
    * c-b扫码（扫码支付），https://docs.open.alipay.com/194/106078/
        * alipay.trade.precreate
    * 退款
        * alipay.trade.refund
    * sdk&demo,https://docs.open.alipay.com/194/105201/

* https://docs.open.alipay.com/api_1/alipay.trade.pay/ : b-c,扫支付码支付
* https://docs.open.alipay.com/api_1/alipay.trade.precreate : c-b,扫码支付
* [alipay支付文档入口](https://openhome.alipay.com/developmentDocument.htm)

* 费率联调，一开始是门店中心的shoppayrateinfo忘记支持序列化导致dubbo失败，其后是费率数据不合规范导致无法正常处理
  * 简单刷queue数据便于QueueConsumeService提取处理和debug:
```sql
select * from md_pay_queue order by queue_id desc limit 10
select * from md_pay_queue_info where queue_id=651

update md_pay_queue set consume_count=0,last_consume_time=null,consume_status=1,`status`=1,next_consume_time=null where queue_id=651
```

#### 2017-10-24

* 在shopcenter2,queueconsumeservice追加调试日志，修正一处paytype未赋值的地，今天无论如何必须调通。
* 基本确保没问题了，下午继续联调。
* 下午继续联调，一是老门店需要重新提取费率，一是进件和费率是两次操作，下午切通道，威富通下单失败是因为没有进件。

#### 2017-10-25

* 门店费率没起作用是因为没刷入redis。
* (int)System.currentMilliSecond()/1000严重错误，应该是：(int)(System.currentMilliSecond()/1000)
* 本地host文件和dns服务器配置不一样时，虽说ping一直返回正常但实际还会走本地host的时候，造成困扰，注释本地host恢复。
* 交付2400的发票给胡正。用于8，9月份。
* 永强使用的httpclient代码有问题。

#### 2017-10-26

* 门店更改费率今天再测，因为swp权限不同导致某些门店不能显示，只能用安多使用的账号才能看到。
* 需要确认门店是支付宝直连的逻辑，即该门店是否不会再走其他通道，显然不是，所以，必须要指定。

#### 2017-10-30

* 本周开始isv支付项目,今儿周一。

#### 2017-10-31

* 误导很久了，实际c-b支付时间是采用tradepaymodel的receivetime，即我们服务器接收时间。
* 今儿拉肚子，状态不好.
* 明天细查3秒单，同时排查一下数据库失败原因。

#### 2017-11-01

* 修改门店中心支持保存isv/isv-token/isv-shopid，提供updateISVInfo接口。
* 修改mdpaygate，支持通过dubbo提取门店的isv三个相关信息。
* mdtradecenter出包，上线反现为0的方案。

#### 2017-11-02

* 费率及反现屏蔽都已上线成功。下来专心isv这部分的开发。

#### 2017-11-03

* isv门店中心和mdfrontserver开发

#### 2017-11-06

* isv门店中心和mdfrontserver开发

#### 2017-11-07

* 今天啥也没干，明天一整天折腾isv的事宜，还有数据迁移事宜。

##### 2017-11-08
* 上午配合王胜新模板消息网站单配消息队列事宜。
* 下午务必搞定mdfrontserver切换isv通道事宜。
* 下午mdtradecenter再次确认反现显示错误问题并提上线申请。

#### 2017-11-10
* 今天讨论在mdfrontserver必须将isv的其他paytype转为96/97
* 昨天上线了费率异常生效日志问题。
* 这几天工作汇报就是isv项目持续开发联调，进度正常，下周开始自测和提测。


#### 2017-11-13
* shopcenter2平行环境正常启动了，47库加入了相应的isv表
* 进一步确认mdfrontserver的shopservice，或者明天自己构造入口请求，通过chorme插件进行自测。

#### 2017-11-14
* 自行模拟访问，目前t参数要采用当前时间,不合法，上午整合平行环境和chrome插件访问事宜
* 目前报shopisvinfo不对。shopisvinfo又没实现serializer接口。
* mdpaygate的isv参数根本还没配，张杰负责吧。mdfrontserver已暂时通过。
* 永强退款部分，从门店中心提取isvinfo,已告之，需跟进。
* 魁星部分的调取刷isv接口。
* codereview 新的模板消息系统。
