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
