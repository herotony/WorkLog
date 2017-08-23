### 浙江网商清单

* 罗列交易部分网商修改检查点

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
        * 经由mdpaygate-domain-resources -> mdpaygate-domain-bean.xml经spring激活配置。<font color=Green>**检查点四**</font>
    * tradePayManager.createMobileParam()
    * tradeQueryManagerMap,tradeRefundManagerMap<font color=Green>**检查点五**</font>

#### mdtradecenter
#### mdtask
#### queueconsumeservice
