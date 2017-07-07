#### 7.3
  * 补单开发，考虑closeTrade的影响，另外追加补单记录标识。
  * 今天核实丢单W1707020551793，还是b->c，情况还是因为提取dlock失败导致丢单，前面的tradeStatus=A001,绑定用户也ok，唯独入queue因为lock提取失败了，这是典型的丢单，但是理论上pay_status没刷，但补单未补到，closeTrade也总是提示already pay success，这是什么鬼，今天搞清楚这两处的处理流程。
    *  拟在AbstractNotify.addQueue针对NotifyStatusEnum.PAY_NOTIFY_STATUS_SERVER和resultKey==TRADE_SUCCESS，取锁尝试3次，这是mdpaygate的一处修改。
    *  针对b->c下单的orderStatus变化状态：
        *  createOrder下单时，orderStatus=0,orderStatus=3这个状态不知在哪设置，目前看到mdtradecenter.OrderUpdateServiceImpl.invalidOrder有设置，但没查到调用之处。
  * 门店上线导致大量无效门店访问数据库，奇怪的是影响了交易的性能，导致md_pay_queue表大量堆积，也可能导致门店，原因解释通了，大量的无效门店导致shopcenter2的网络流量剧增，从而影响了交易的结算，交易结算需要从门店中心提取费率等方案，也就是shopcenter2站点打满了导致延迟，今天追加了流量监控。
      *  极端诡异，shopcenter2的getShopByIdV2，传入的门店id - A会导致门店 B补入redis操作，但该门店一不合法（审核不通过等），二莫名其妙出来的，根据日志就是这个情况！![shopcenter2-bug](D:\GitHubData\WorkLog\MDFiles\2017\images\07\shopbug2.jpg),这个花了一下午也没看出个所以然，暂时搁置。明天补单，等会一定找出order_status=3的设置点。
  * 确定了<font color=green>mdtask</font>两个NotBind.../NotPay...负责定时刷新md_order_info的单子为order_status=3/order_status=4的操作，其中order_status=3被Autobudan进行补偿处理。

#### 7.4
  * 排查W17070315851532延时一小时的c->b，确认是现在支付回调延时一小时的原因，与我们无关。
  * MDTask项目中，updateNotPayOrderForFailuer方法负责针对order_status=5,pay_status=0/1的单子进行关闭订单处理。
  * MDTask做了如下事：
      * 利用了org.springframework.scheduling.quartz.CronTriggerBean定时本地触发了任务notBindOrder.../notPayOrder...的后续处理，所谓的order_status=3(过期未绑定)/4(过期未支付)的状态，就是这两个任务刷出来的。
      * 接notify消息发送模板消息（支付成功后，用户在微信中收到的支付成功的定制消息，一般会附带广告链接)，同时根据门店配置进行返现。
  * 修改补单autobudantask,在补单开始前，往单独的补单表remedyorder写入记录。创建单独的remedyorder表。初步编码完成，多出的时间好好整理mybatis在spring下的应用，单独拉一个markdown文档。
  * 明天closeTrade部分，另外，完善今天的数据库应用的整理，仅限于主站采用的部分，尽量全面，涉及配置，框架和示例。
#### 7.5
  * closeTrade是先调用第三方来关闭交易，但实际目前的现在支付是根本没这个接口的，而对于md_pay_trade中status=3(支付成功)是不能正常关闭的，而关闭交易的任务一般是从md_order_info中搜素出的order_status=5的pay_status=0/1的记录，所以这种情况下应该做的是补单才更合理。先确认md_pay_trade的status=3何时刷新吧，的确是第三方返回了明确支付成功，md_pay_trade表的status状态才刷为3，也就是支付成功，此时，补单判断时，再次提取该字段是应该采用补单操作，考虑如何做。![status为3的情况](images/07/mdpaygatetopaytrade.jpg)
  * 针对closeTrade过程中遇到支付成功的，则进行一次补单流程，待测试，明后两天统一测试补单流程，一个是补单是否正常，一个是是否正常留下记录，一个是closeTrade是否能正常补单等。
  * b->c慢，提取unionid为空值不是null导致json解析异常，绑定失败，然则进入queue后处理状态不对，补单延后一小时才完成...
#### 7.6
  * 昨天的两个丢单都是入queue前取redis锁失败导致，目前已修改为尝试3次，待测试
  * 中午c->b延迟还是现在支付回调慢导致。
  * 上午整理完了目前主站采用的基于mybatis，serviceTemplate的编码框架，暂时至此。
  * 补单用的三个sql

    ```sql

    select UNIX_TIMESTAMP("2017-07-06 12:50:50")
    select FROM_UNIXTIME(UNIX_TIMESTAMP(DATE_SUB(NOW(),INTERVAL 150 MINUTE)),'%Y-%m-%d %T')
    select FROM_UNIXTIME(UNIX_TIMESTAMP(DATE_SUB(NOW(),INTERVAL 120 MINUTE)),'%Y-%m-%d %T')
    ```
  * 测试closeTrade下补单失败，md_order_info主动刷为order_status=5,pay_status=0且将md_pay_trade的status刷为3（支付成功），但在closeTrade任务时并没有触发相应的补单而是成功关闭了订单，order_status刷为4，非常诡异，需要追加日志排查。

#### 7.7

  * closeTrade会判断两次，第一次是从md_order_info表提取相应记录，只要满足order_status=5/pay_limit_time即可，这个一般都会满足，第二次是关闭订单时，判断md_pay_trade的status字段不为3，现在我做的针对c->b的测试关闭失败了，那是因为，md_pay_status刷为8了，但pay_limit_time没刷，导致，再次提取时，closeTrade成功，进而md_order_info的order_status也成功刷为4，导致补单失败。另外，c->b不适合这类补单，因为要靠周期任务而不是回调触发提取userpaying(8)状态的记录，去再次查询第三方接口，然后addQueue，而c->b是靠回调，这么做无意义，也无需补单。补单仅限于b->c的。不对不对，必须改pay_limit_time，才能确保正确补单，而且这个补单一定通用于c->b/b->c都可以行的，只要确定修改pay_limit_time就行
      * 再次修正，mdtask的未支付关闭订单，是一分钟一执行的而md_pay_trade则是第三方交易后才产生的记录，错大了，这个问题在于不能补md_order_info(order_status=5)+md_pay_trade(status=3)的单子，因为平时补单，是(order_status=3)被提取后，查询第三方接口，太乱重新整理

 * b->c 流程:创建订单(order_status=0)，没有绑定订单（order_status=0)，第三方交易，交易若成功获取支付状态(status=1->3)和绑定订单(openid由第三方传回，若没有采用默认值orderid替代)，不成功，待周期主动查询，现在也支持回调了来刷新状态和绑定订单
 * c->b 流程:创建订单啊(order_status=0)，但支付前由于有openid，可以真实绑定订单(order_status=5)，第三方交易，创建交易记录(status=1)，待回调刷新status
 * 补单 流程:提取order_status=3的（该状态由mdtask将order_status=0的超过bind_limit_time（15分钟超时）记录刷成3），查第三方接口，进行补单处理
 * 关闭订单 流程：提取order_status=5的超过pay_limit_time（2小时超时）的记录进行关闭交易处理。
 * <font color=SteelBlue>综上所述，closeTrade中遇到md_pay_trade中status=3交易成功的记录，必须修改md_order_info中的pay_limit_time时间大于当前时间一个时间段，比如5分钟，才能确保补单成功</font>
 * 由于userpaying模式的补单，最终需要靠b->c的查询任务来完成，那么补单目前就是只针对b->c了，c->b的补单目前来说不存在可行机制,且受md_pay_trade的createTime限制(仅取15分钟内的)。再梳理一次：mdtask关闭交易任务一分钟一执行，但pay_limit_time控制了不会干扰b->c的查询，b->c可能几秒一执行，但也是产生交易记录后的15分钟内了。
 * 最终通过刷字段自测没通过，又报isPaid=false，估计与数据有关，实际绑定订单失败不会影响结算的，结算这块并没修改，应该closeTrade的补单算是能正常走流程了，先这样吧。
