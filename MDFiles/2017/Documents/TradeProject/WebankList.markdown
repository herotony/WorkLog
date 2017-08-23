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
#### mdtradecenter
#### mdtask
#### queueconsumeservice
