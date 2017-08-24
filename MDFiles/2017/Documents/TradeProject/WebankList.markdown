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
    * 订单退款任务，会周期轮询md_refund表进行退款操作?（类似b->c，不会马上有退款结果，只是提交了申请，需要该任务去反复查询最终退款结果） <font color=Teal>检查点七</font>
        * 这里很诡异，md_refund在mdpay库，而mdtradecenter的退款入口的写入表是mdorder库的md_order_refund表
        * 的确是mdtradecenter.RefundCreateService4hessian触发了mdpaygate的payRefund接口调用，待继续...
            * RefundCreateService4hessian实际也就是发起了退款申请并调用第三方接口提交退款申请，具体做了如下事：
                * 处理用户反现的处理，退款了反现当然要找回。RefundCreateDomain.processUserRebate，必须成功后才能继续...
                * 处理代金券，然后notifyMDpaygate调用mdpaygate发起退款申请，退款申请成功才能继续下面的步骤...
                * 退款申请成功后，在mdorder库中保存退款记录到md_order_refund表中。
            * <font color=Teal>com.wowo.mdpaygate.RefundServiceImpl.payRefund</font>
                * 先校验md_pay_trade/md_pay_trade_info,是否存在交易记录，否则不予退款。且只允许status=3(交易成功)的退款。
                * 校验通过，则doRefund来完成退款，先从md_refund表查找一条最符合条件的记录，根据tradeNo来判断最合适的**退款申请**记录。**若不存在，则创建一条退款申请记录(md_refund表)**。
                * 校验被提取退款申请记录的状态，被锁或成功退款则不再处理，否则**执行与第三方的退款操作，关键是TradeRefundManager接口的submitRefund**并标记退款记录为refund_status=4。
        * 该任务提取pay_type in (61,81) and refund_status=4的记录查询退款结果并刷新相关记录,也就是加入addQueue,即REFUND事件**检查点十**。
    * <font color=red>**BudanTask**</font>作废！该任务只是发提醒邮件，有作用的是<font color=Teal>**AutoBudanTask**</font>,该任务也必须会修改，此为<font color=Teal>**检查点八**</font>,此处与检查点五的接口无关，即查询订单需要额外编码写进来,b扫c的贺永强来修改这部分，毕竟是主动查询订单，支付成功重新入queue的问题而已，入queue前创建用户和绑定订单即可，如果是c-b类型则是简单的入queue完事。
          * 该任务会从md_order_info提取order_status=3(5为绑定成功，3为未绑定已过期)<font color=Teal>**实际对于c->b,order_status一开始就是5，而c->b依赖回调，所以autobudan实际只是针对b->c的情况而言了，当然理论是这样，不排除查c->b绑定不成功也继续支付的诡异情况**</font>且当前时间在一定有效范围内的（<font color=Teal>**即下单时间处于当前时间前两个半小时和两个小时之间才会被提出进行自动补单处理**</font>）
          * 查询支付成功后，补单操作包括如下两个步骤：

                  * md_pay_trade表的orderid,paytype匹配的记录的status=8,notify_status=0(这样会被主动订单状态查询任务提取到进行后续处理)
                  * md_order_info表的orderid相应记录order_status=5(这个粗暴了，不管真实绑定了，只在乎收取手续费和结算了),且强行修正下单时间(add_time)为当前时间和相应的order_bind_time(都强制5了，还有毛意义)
                  * 加入remedyorder表供查询


#### mdtradecenter
* com.wowo.mdtradecenter.service.impl.refund.hessian
    * RefundCreateService4hessianImpl
        * 在md_order_refund表中插入相应退款申请记录，此前处理完用户反现和代金券等事宜。
    * RefundQueryService4hessianImpl
#### mdtask
#### queueconsumeservice
* 要根据paytype和门店id提取相应的交易手续费率值，这个非常非常重要，实际就是要将分别对应支付宝，微信的paytype加入weixinlist和zhifubaolist的集合中即可<font color=Teal>**检查点九**</font>
