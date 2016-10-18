public class TradeVO extends TuanBaseDO {
	private static final long serialVersionUID = 8839304993097645977L;
	/**
	 * 非空 业务方[手机买单支付业务:40]     
	 * **/
	private int businessType;
	/**
	 * 非空 交易id  [订单id;充值id]　
	 * **/
	private String tradeId;
	/**
	 * 非空 商品名称,充值名称      
	 * **/
	private String subject;
	/**
	 * 非空 支付金额[单位:分]      
	 * **/
	private int payMoney;
	/**
	 * 非空 支付方式  [	30:手机客户端支付宝钱包支付;
	 * 				31:手机客户端极简收银台支付;
	 * 				32:手机客户端支付宝网页支付;
	 * 				
	 * 				41:微信公众号支付;]          
	 * **/
	private int payType;
	/**
	 * 非空 门店ID     
	 * **/
	private long shopID;
	/**商户id**/
	private long supplierID;
	
	/**
	 * 非空 支付类型，默认是１商品购买           
	 * **/
	private String paymentType;
	/**
	 * 非空　商品详情           
	 * **/
	private String body;
	/**
	 * 非空    支付用户经纬度
	 */
	private String payLongitude;
	private String payLatitude;
	
	/**
	 * 微信公众号支付时，非空   用户标识
	 */
	private String openId;
	/**
	 * 过期时间分钟数[15(默认15分钟)]           
	 * **/
	private int expireTime;
	/**
	 * 服务器异步通知页面路径(这个地址指的是支付宝通知支付网关的地址,无特殊需求,客户端调用不用填写)      
	 * **/
	private String notifyURL;
	
	/**
	 * 商品展示地址      
	 * **/
	private String showURL;
	/**
	 * 商户网站唯一订单号,由支付网关生成,如果客户端已经有了,请传过来     
	 * **/
	private String tradeNo;
	/**
	 * 窝窝用户id     
	 * **/
	private String outUser;
	/**
	 * 支付宝返回的授权令牌,如果有则传.     
	 * **/
	private String externToken;
	/**
	 * 客户端号      
	 * **/
	private String appID;
	/**
	 * 客户端来源     
	 * **/
	private String appEnv;
	
	/**
	 * 手机支付使用的IP
	 */
	private  String phoneIp;
	/**
	 * 手机IMEI号
	 */
	private String phoneImei;
	
	////下面是wap方式的参数	
	
	/**
	 * 支付成功跳转页面     
	 * **/
	private String callBackURL;
	/**
	 * 操作中断返回地址     
	 * **/
	private String merchantURL;
	
	/////下面的暂时未用
	
	/**
	 * 支付宝回调网关时才有,不用填写     
	 * **/
	private String thirdPayUserID;
	/**
	 * 支付宝回调网关时才有,不用填写          
	 * **/
	private String thirdPayUserName;
	/**
	 *  支付宝回调网关时才有,不用填写         
	 * **/
	private String thirdTradeNO;
	
	/**
	 *  暂已废弃 目前使用call_back_url    
	 * **/
	private String redirectPath;
	/**
	 * 目前只有支付宝方式     
	 * **/
	private String payBank;
	
	/** 交易商品数量*/
	private int tradeGoodsAmount;
	
	/** 微信被扫码支付时提供的授权码 */
	private String wxAuthCode;
	
	public long getSupplierID() {
		return supplierID;
	}
	public void setSupplierID(long supplierID) {
		this.supplierID = supplierID;
	}
			
	public int getTradeGoodsAmount() {
		return tradeGoodsAmount;
	}
	public void setTradeGoodsAmount(int tradeGoodsAmount) {
		this.tradeGoodsAmount = tradeGoodsAmount;
	}
	public int getBusinessType() {
		return businessType;
	}
	public void setBusinessType(int type) {
		this.businessType = type;
	}
	public String getTradeId() {
		return tradeId;
	}
	public void setTradeId(String tradeId) {
		this.tradeId = tradeId;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getPayMoney() {
		return payMoney;
	}
	public void setPayMoney(int payMoney) {
		this.payMoney = payMoney;
	}
	public int getPayType() {
		return payType;
	}
	public void setPayType(int payType) {
		this.payType = payType;
	}
	public String getPayBank() {
		return payBank;
	}
	public void setPayBank(String payBank) {
		this.payBank = payBank;
	}
	public int getExpireTime() {
		return expireTime;
	}
	public void setExpireTime(int expireTime) {
		this.expireTime = expireTime;
	}
	public String getNotifyURL() {
		return notifyURL;
	}
	public void setNotifyURL(String notifyURL) {
		this.notifyURL = notifyURL;
	}
	public String getTradeNo() {
		return tradeNo;
	}
	public void setTradeNo(String tradeNo) {
		this.tradeNo = tradeNo;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getAppID() {
		return appID;
	}
	public void setAppID(String appID) {
		this.appID = appID;
	}
	public String getAppEnv() {
		return appEnv;
	}
	public void setAppEnv(String appEnv) {
		this.appEnv = appEnv;
	}
	public String getCallBackURL() {
		return callBackURL;
	}
	public void setCallBackURL(String callBackURL) {
		this.callBackURL = callBackURL;
	}
	public String getMerchantURL() {
		return merchantURL;
	}
	public void setMerchantURL(String merchantURL) {
		this.merchantURL = merchantURL;
	}
	public String getThirdPayUserID() {
		return thirdPayUserID;
	}
	public void setThirdPayUserID(String thirdPayUserID) {
		this.thirdPayUserID = thirdPayUserID;
	}
	public String getThirdPayUserName() {
		return thirdPayUserName;
	}
	public void setThirdPayUserName(String thirdPayUserName) {
		this.thirdPayUserName = thirdPayUserName;
	}
	public String getRedirectPath() {
		return redirectPath;
	}
	public void setRedirectPath(String redirectPath) {
		this.redirectPath = redirectPath;
	}
	public String getThirdTradeNO() {
		return thirdTradeNO;
	}
	public void setThirdTradeNO(String thirdTradeNO) {
		this.thirdTradeNO = thirdTradeNO;
	}
	public String getExternToken() {
		return externToken;
	}
	public void setExternToken(String externToken) {
		this.externToken = externToken;
	}
	public String getOutUser() {
		return outUser;
	}
	public void setOutUser(String outUser) {
		this.outUser = outUser;
	}

	public String getPhoneIp() {
		return phoneIp;
	}
	public void setPhoneIp(String phoneIp) {
		this.phoneIp = phoneIp;
	}
	public String getPhoneImei() {
		return phoneImei;
	}
	public void setPhoneImei(String phoneImei) {
		this.phoneImei = phoneImei;
	}
	public long getShopID() {
		return shopID;
	}
	public void setShopID(long shopID) {
		this.shopID = shopID;
	}
	public String getPayLongitude() {
		return payLongitude;
	}
	public void setPayLongitude(String payLongitude) {
		this.payLongitude = payLongitude;
	}
	public String getPayLatitude() {
		return payLatitude;
	}
	public void setPayLatitude(String payLatitude) {
		this.payLatitude = payLatitude;
	}
	public String getShowURL() {
		return showURL;
	}
	public void setShowURL(String showURL) {
		this.showURL = showURL;
	}
	public String getOpenId() {
		return openId;
	}
	public void setOpenId(String openId) {
		this.openId = openId;
	}
	public String getWxAuthCode() {
		return wxAuthCode;
	}
	public void setWxAuthCode(String wxAuthCode) {
		this.wxAuthCode = wxAuthCode;
	}
	@Override
	public String toString() {
		return "TradeVO [businessType=" + businessType + ", tradeId=" + tradeId + ", subject=" + subject + ", payMoney="
				+ payMoney + ", payType=" + payType + ", shopID=" + shopID + ", supplierID=" + supplierID
				+ ", paymentType=" + paymentType + ", body=" + body + ", payLongitude=" + payLongitude
				+ ", payLatitude=" + payLatitude + ", openId=" + openId + ", expireTime=" + expireTime + ", notifyURL="
				+ notifyURL + ", showURL=" + showURL + ", tradeNo=" + tradeNo + ", outUser=" + outUser
				+ ", externToken=" + externToken + ", appID=" + appID + ", appEnv=" + appEnv + ", phoneIp=" + phoneIp
				+ ", phoneImei=" + phoneImei + ", callBackURL=" + callBackURL + ", merchantURL=" + merchantURL
				+ ", thirdPayUserID=" + thirdPayUserID + ", thirdPayUserName=" + thirdPayUserName + ", thirdTradeNO="
				+ thirdTradeNO + ", redirectPath=" + redirectPath + ", payBank=" + payBank + ", tradeGoodsAmount="
				+ tradeGoodsAmount + ", wxAuthCode=" + wxAuthCode + "]";
	}