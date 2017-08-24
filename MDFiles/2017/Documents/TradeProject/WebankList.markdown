### 浙江网商清单

* 罗列交易部分网商修改检查点
    * 支付流程： newwap -> frontserver -> mdpaygate -> partner
    * 查询流程： mdpaygate -> selftask -> partner
    * 退款流程： b-app/pc-app -> tradecenter -> mdpaygate -> partner

#### mdfrontserver

* com.wowo.mdfrontserver.ext.TradeExtService.createMobileParams()
    * tradeVO.setPayType 来自 com.wowo.mdfrontserver.model.contants.FSOrderConstants常量定义,<font color=Green>**检查点一**</font>
    * tradeVO.setOpenId

#### mdpaygate

* com.wowo.mdpaygate.service.impl.TradeServiceImpl.createMobileParams()
    * partnerId(partnerid)，alipayId(appid),priverRSAKey: 来自各自定义的配置类，比如：AlipaywebConfig/WftScanPayConfig/NowpayConfig/...<font color=Green>**检查点二**</font>
    * payType: 来自 com.wowo.mdpaygate.model.enu.PayTypeEnum常量定义<font color=Green>**检查点三**</font>
* com.wowo.mdpaygate.service.impl.TradeServiceImpl.createMobileParams().getMobileResult().createMobileParam
    * 该方法调用<font color=Teal>**getTradePayManager()**</font>,tradePayManagerMap<PayTypeEnum,tradePayManagerIface>
        * 经由mdpaygate-domain-resources -> <font color=Teal>mdpaygate-domain-bean.xml</font>经spring激活配置。<font color=Green>**检查点四**</font>
    * tradePayManager.createMobileParam()
    * tradePayManager,tradeQueryManagerMap,tradeRefundManagerMap<font color=Green>**检查点五**</font>
* 检查点五，一般必须实现下图的三个接口，从而达到支持新的支付合作方
    * 位置在com.wowo.mdpaygate.domain.webank,添加三个类来实现三个接口即可
        * <font color=Teal>tradePayManager.createMobileParam</font>实现了支付功能，在createMobileParam中被调用
        ![struct image](images/mdpaygate-important-interface.jpg)

* com.wowo.mdpaygate.service.task.webank..
    * 订单支付状态查询任务,提供用于b->c的主动订单状态周期查询 <font color=Teal>**检查点六**</font>
    * 订单退款任务，会周期轮询md_refund表进行退款操作?<font color=Teal>**检查点七**</font>
    * <font color=red>**BudanTask**</font>作废！该任务只是发提醒邮件，有作用的是<font color=Teal>**AutoBudanTask**</font>,该任务也必须会修改，此为<font color=Teal>**检查点八**</font>,此处与检查点五的接口无关，即查询订单需要额外编码写进来,b扫c的贺永强来修改这部分，毕竟是主动查询订单，支付成功重新入queue的问题而已，入queue前创建用户和绑定订单即可，如果是c-b类型则是简单的入queue完事。
          * 该任务会从md_order_info提取order_status=3(5为绑定成功，3为未绑定已过期)<font color=Teal>**实际对于c->b,order_status一开始就是5，而c->b依赖回调，所以autobudan实际只是针对b->c的情况而言了，当然理论是这样，不排除查c->b绑定不成功也继续支付的诡异情况**</font>且当前时间在一定有效范围内的（<font color=Teal>**即下单时间处于当前时间前两个半小时和两个小时之间才会被提出进行自动补单处理**</font>）
          * 查询支付成功后，补单操作包括如下两个步骤：
                * md_pay_trade表的orderid,paytype匹配的记录的status=8,notify_status=0(这样会被主动订单状态查询任务提取到进行后续处理)
                * md_order_info表的orderid相应记录order_status=5(这个粗暴了，不管真实绑定了，只在乎收取手续费和结算了),且强行修正下单时间(add_time)为当前时间和相应的order_bind_time(都强制5了，还有毛意义)
                * 加入remedy表供查询

#### mdtradecenter
#### mdtask
#### queueconsumeservice
* 要根据paytype和门店id提取相应的交易手续费率值，这个非常非常重要，实际就是要将分别对应支付宝，微信的paytype加入weixinlist和zhifubaolist的集合中即可<font color=Teal>**检查点九**</font>
