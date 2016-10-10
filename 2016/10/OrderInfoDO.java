public class OrderInfoDO extends TuanBaseDO{
	private static final long serialVersionUID = 1403007741682558315L;
	//订单ID
	private String orderId;
	//商户ID
	private long supplierId;
	//门店ID
	private long shopId;
	//门店前台名称
	private String shopName;
	//城市ID
	private Integer cityId;
	//口令码
	private String secret;
	//订单类型:(0-商家App申请, 1-商家Web申请 2-用户申请)
	private Integer orderChannel;
	//订单状态(0-未核实,1-已核实,2-已取消,3-未绑定已过期,4-未支付已过期,5-订单绑定)
	private Integer orderStatus;
	//订单生成时间（北京时间）
	private long addTime;
	//订单绑定用户有效期（北京时间）
	private long bindLimitTime;
	//用户ID
	private long userId;
	//用户手机号
	private String mobile;
	//用户设备号
	private String mid;
	//用户绑定订单的操作系统类型
	private Integer ostype;
	//订单绑定用户时间（北京时间）
	private long bindTime;
	//订单总金额
	private BigDecimal billAmount;
	//余额
	private BigDecimal surplus;
	//使用的返现余额
	private BigDecimal rebateUseMoney;
	//第三方支付金额
	private BigDecimal moneyPaid;
	//应付款金额
	private BigDecimal orderAmount;
	//订单优惠价格
	private BigDecimal orderOffMoney;
	//支付状态(0－未付款,1－付款中,2－已付款)
	private Integer payStatus;
	//订单支付有效期（北京时间）
	private long payLimitTime;
	//支付方式
	private Integer payId;
	//支付方式名称
	private String payName;
	//订单支付时间（北京时间）
	private long payTime;
	//支付同步状态（0-无 1-同步中 2-已支付）
	private Integer paySync;
	//支付账号
	private String tradePayAccount;
	//交易流水号
	private String tradeNo;
	//第三方交易流水号
	private String thirdTradeNo;
	//订单核实时间（北京时间）
	private long confirmTime;
	//订单退款时间（北京时间）
	private long refundTime;
	//退款状态(0－正常,-1－退款中,1－已部分退款,2－已全部退款,)
	private Integer refundStatus;
	//是否发生过退款(0-没有,1-有过)
	private Integer isRefunded;
	//方案ID
	private long schemaId;
	//方案名称
	private String schemaName;
	//合同ID
	private long contractId;
	//返现比例【1.5%记录为1.5】
	private BigDecimal rebateRate;
	//分账比例【1.5%记录为1.5】
	private BigDecimal settlementRate;
	//操作人员ID
	private long operatorId;
	//操作人员名称
	private String operatorName;
	//操作设备号
	private String operatorMid;
	//订单下单来源(设备来源 例如安,苹果)
	private String orderSource;
	//订单隐藏状态(0－正常,1－已隐藏 表示用户自己隐藏处于完结状态的订单)
	private Integer orderUserHide;
	//订单隐藏状态(0－正常,1－已隐藏 表示商家隐藏处于完结状态的订单)
	private Integer orderShopHide;
	//订单生成时间，作为将来数据时间维度拆分的依据
	private Integer routeTime;
	//不参与返现金额
	private BigDecimal noRebateMoney;
	//返现状态（0-未返现，1-已返现）
	private Integer rebateStatus;
	//返现给用户金额
	private BigDecimal orderRebateMoney;
	//最后更新时间
	private long lastUpdateTime;
	//支付该订单返现给用户的总金额
	private BigDecimal orderRebateTotalMoney;
	//新建订单备注
	private String remark;

    private long rebateTime; // 返现时间
	
	//扩展字段
	private Integer extendsFiled1;
	private Integer extendsFiled2;
	private Integer extendsFiled3;
	private Integer extendsFiled4;
	private long extendsFiled5;
	private String extendsFiled6;
	
	//首单立返金额
	private BigDecimal firstTradeRebateMoney;
	
	
	
	
	// 手续费
		private BigDecimal payFee;
		
		// 结算金额
		private BigDecimal jiesuanAmount;
	
	
	public BigDecimal getPayFee()
		{
			return payFee;
		}
		public void setPayFee(BigDecimal payFee)
		{
			this.payFee = payFee;
		}
		public BigDecimal getJiesuanAmount()
		{
			return jiesuanAmount;
		}
		public void setJiesuanAmount(BigDecimal jiesuanAmount)
		{
			this.jiesuanAmount = jiesuanAmount;
		}
	public BigDecimal getFirstTradeRebateMoney() {
		return firstTradeRebateMoney;
	}
	public void setFirstTradeRebateMoney(BigDecimal firstTradeRebateMoney) {
		this.firstTradeRebateMoney = firstTradeRebateMoney;
	}
	
	/**
	 * 支付状态(0－未付款,1－付款中,2－已付款)
	 */
	private Integer payStatusOld;
	/**
	 * 订单状态(0-未核实,1-已核实,2-已取消,3-未绑定已过期,4-未支付已过期,5-订单绑定)
	 */
	private Integer orderStatusOld;
	/**
	 * 使用的返现余额
	 */
	private BigDecimal rebateUseMoneyOld;
	
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public BigDecimal getRebateUseMoneyOld() {
		return rebateUseMoneyOld;
	}
	public void setRebateUseMoneyOld(BigDecimal rebateUseMoneyOld) {
		this.rebateUseMoneyOld = rebateUseMoneyOld;
	}
	public Integer getOrderStatusOld() {
		return orderStatusOld;
	}
	public void setOrderStatusOld(Integer orderStatusOld) {
		this.orderStatusOld = orderStatusOld;
	}
	public Integer getPayStatusOld() {
		return payStatusOld;
	}
	public void setPayStatusOld(Integer payStatusOld) {
		this.payStatusOld = payStatusOld;
	}
	public Integer getOstype() {
		return ostype;
	}
	public void setOstype(Integer ostype) {
		this.ostype = ostype;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public long getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(long supplierId) {
		this.supplierId = supplierId;
	}
	public long getShopId() {
		return shopId;
	}
	public void setShopId(long shopId) {
		this.shopId = shopId;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getSecret() {
		return secret;
	}
	public void setSecret(String secret) {
		this.secret = secret;
	}
	public Integer getOrderChannel() {
		return orderChannel;
	}
	public void setOrderChannel(Integer orderChannel) {
		this.orderChannel = orderChannel;
	}
	public Integer getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(Integer orderStatus) {
		this.orderStatus = orderStatus;
	}
	public long getAddTime() {
		return addTime;
	}
	public void setAddTime(long addTime) {
		this.addTime = addTime;
	}
	public long getBindLimitTime() {
		return bindLimitTime;
	}
	public void setBindLimitTime(long bindLimitTime) {
		this.bindLimitTime = bindLimitTime;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public long getBindTime() {
		return bindTime;
	}
	public void setBindTime(long bindTime) {
		this.bindTime = bindTime;
	}
	public BigDecimal getBillAmount() {
		return billAmount;
	}
	public void setBillAmount(BigDecimal billAmount) {
		this.billAmount = billAmount;
	}
	public BigDecimal getSurplus() {
		return surplus;
	}
	public void setSurplus(BigDecimal surplus) {
		this.surplus = surplus;
	}
	public BigDecimal getRebateUseMoney() {
		return rebateUseMoney;
	}
	public void setRebateUseMoney(BigDecimal rebateUseMoney) {
		this.rebateUseMoney = rebateUseMoney;
	}
	public BigDecimal getMoneyPaid() {
		return moneyPaid;
	}
	public void setMoneyPaid(BigDecimal moneyPaid) {
		this.moneyPaid = moneyPaid;
	}
	public BigDecimal getOrderMount() {
		return orderAmount;
	}
	public void setOrderMount(BigDecimal orderAmount) {
		this.orderAmount = orderAmount;
	}
	public BigDecimal getOrderOffMoney() {
		return orderOffMoney;
	}
	public void setOrderOffMoney(BigDecimal orderOffMoney) {
		this.orderOffMoney = orderOffMoney;
	}
	public Integer getPayStatus() {
		return payStatus;
	}
	public void setPayStatus(Integer payStatus) {
		this.payStatus = payStatus;
	}
	public long getPayLimitTime() {
		return payLimitTime;
	}
	public void setPayLimitTime(long payLimitTime) {
		this.payLimitTime = payLimitTime;
	}
	public Integer getPayId() {
		return payId;
	}
	public void setPayId(Integer payId) {
		this.payId = payId;
	}
	public String getPayName() {
		return payName;
	}
	public void setPayName(String payName) {
		this.payName = payName;
	}
	public long getPayTime() {
		return payTime;
	}
	public void setPayTime(long payTime) {
		this.payTime = payTime;
	}
	public Integer getPaySync() {
		return paySync;
	}
	public void setPaySync(Integer paySync) {
		this.paySync = paySync;
	}
	public String getTradePayAccount() {
		return tradePayAccount;
	}
	public void setTradePayAccount(String tradePayAccount) {
		this.tradePayAccount = tradePayAccount;
	}
	public String getTradeNo() {
		return tradeNo;
	}
	public void setTradeNo(String tradeNo) {
		this.tradeNo = tradeNo;
	}
	public String getThirdTradeNo() {
		return thirdTradeNo;
	}
	public void setThirdTradeNo(String thirdTradeNo) {
		this.thirdTradeNo = thirdTradeNo;
	}
	public long getConfirmTime() {
		return confirmTime;
	}
	public void setConfirmTime(long confirmTime) {
		this.confirmTime = confirmTime;
	}
	public long getRefundTime() {
		return refundTime;
	}
	public void setRefundTime(long refundTime) {
		this.refundTime = refundTime;
	}
	public Integer getRefundStatus() {
		return refundStatus;
	}
	public void setRefundStatus(Integer refundStatus) {
		this.refundStatus = refundStatus;
	}
	public Integer getIsRefunded() {
		return isRefunded;
	}
	public void setIsRefunded(Integer isRefunded) {
		this.isRefunded = isRefunded;
	}
	public long getSchemaId() {
		return schemaId;
	}
	public void setSchemaId(long schemaId) {
		this.schemaId = schemaId;
	}
	public String getSchemaName() {
		return schemaName;
	}
	public void setSchemaName(String schemaName) {
		this.schemaName = schemaName;
	}
	public long getContractId() {
		return contractId;
	}
	public void setContractId(long contractId) {
		this.contractId = contractId;
	}
	public BigDecimal getRebateRate() {
		return rebateRate;
	}
	public void setRebateRate(BigDecimal rebateRate) {
		this.rebateRate = rebateRate;
	}
	public BigDecimal getSettlementRate() {
		return settlementRate;
	}
	public void setSettlementRate(BigDecimal settlementRate) {
		this.settlementRate = settlementRate;
	}
	public long getOperatorId() {
		return operatorId;
	}
	public void setOperatorId(long operatorId) {
		this.operatorId = operatorId;
	}
	public String getOperatorName() {
		return operatorName;
	}
	public void setOperatorName(String operatorName) {
		this.operatorName = operatorName;
	}
	public String getOperatorMid() {
		return operatorMid;
	}
	public void setOperatorMid(String operatorMid) {
		this.operatorMid = operatorMid;
	}
	public String getOrderSource() {
		return orderSource;
	}
	public void setOrderSource(String orderSource) {
		this.orderSource = orderSource;
	}
	public Integer getOrderUserHide() {
		return orderUserHide;
	}
	public void setOrderUserHide(Integer orderUserHide) {
		this.orderUserHide = orderUserHide;
	}
	public Integer getOrderShopHide() {
		return orderShopHide;
	}
	public void setOrderShopHide(Integer orderShopHide) {
		this.orderShopHide = orderShopHide;
	}
	public Integer getRouteTime() {
		return routeTime;
	}
	public void setRouteTime(Integer routeTime) {
		this.routeTime = routeTime;
	}
	public Integer getExtendsFiled1() {
		return extendsFiled1;
	}
	public void setExtendsFiled1(Integer extendsFiled1) {
		this.extendsFiled1 = extendsFiled1;
	}
	public Integer getExtendsFiled2() {
		return extendsFiled2;
	}
	public void setExtendsFiled2(Integer extendsFiled2) {
		this.extendsFiled2 = extendsFiled2;
	}
	public Integer getExtendsFiled3() {
		return extendsFiled3;
	}
	public void setExtendsFiled3(Integer extendsFiled3) {
		this.extendsFiled3 = extendsFiled3;
	}
	public Integer getExtendsFiled4() {
		return extendsFiled4;
	}
	public void setExtendsFiled4(Integer extendsFiled4) {
		this.extendsFiled4 = extendsFiled4;
	}
	public long getExtendsFiled5() {
		return extendsFiled5;
	}
	public void setExtendsFiled5(long extendsFiled5) {
		this.extendsFiled5 = extendsFiled5;
	}
	public String getExtendsFiled6() {
		return extendsFiled6;
	}
	public void setExtendsFiled6(String extendsFiled6) {
		this.extendsFiled6 = extendsFiled6;
	}
	public BigDecimal getNoRebateMoney() {
		return noRebateMoney;
	}
	public void setNoRebateMoney(BigDecimal noRebateMoney) {
		this.noRebateMoney = noRebateMoney;
	}
	public Integer getRebateStatus() {
		return rebateStatus;
	}
	public void setRebateStatus(Integer rebateStatus) {
		this.rebateStatus = rebateStatus;
	}
	public BigDecimal getOrderRebateMoney() {
		return orderRebateMoney;
	}
	public void setOrderRebateMoney(BigDecimal orderRebateMoney) {
		this.orderRebateMoney = orderRebateMoney;
	}
	public long getLastUpdateTime() {
		return lastUpdateTime;
	}
	public void setLastUpdateTime(long lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}
	public BigDecimal getOrderAmount() {
		return orderAmount;
	}
	public void setOrderAmount(BigDecimal orderAmount) {
		this.orderAmount = orderAmount;
	}
	public BigDecimal getOrderRebateTotalMoney() {
		return orderRebateTotalMoney;
	}
	public void setOrderRebateTotalMoney(BigDecimal orderRebateTotalMoney) {
		this.orderRebateTotalMoney = orderRebateTotalMoney;
	}


    public long getRebateTime() {
        return rebateTime;
    }

    public void setRebateTime(long rebateTime) {
        this.rebateTime = rebateTime;
    }
	public Integer getCityId() {
		return cityId;
	}
	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}
}