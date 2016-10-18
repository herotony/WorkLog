   public CallResult<Map<String, String>> doAction() {
                            try {
                                Map<String, String> paraMap = new HashMap<String, String>();
                                // 查找支付相关的密钥
                                String partnerId = null;
                                String alipayId = null;
                                String priverRSAKey = null;
                                PayTypeEnum payType = PayTypeEnum.valueOf(tradeVO.getPayType());
                                if (payType == PayTypeEnum.MOBILE_CLIENT_ALIPAY_CASHIER
                                        || payType == PayTypeEnum.MOBILE_CLIENT_ALIPAY_SDK
                                        || payType == PayTypeEnum.MOBILE_CLIENT_ALIPAY_WAP) {
                                    // 支付宝支付
                                    // 用户支付时，直接支付为窝窝
                                    paraMap.put(ALIPAY_PUBLIC_RSA, AlipayConfig.ALIPAY_PUBLIC_KEY);
                                    partnerId = AlipayConfig.WOWO_PARTNER_ID;
                                    alipayId = AlipayConfig.WOWO_SELLER_ID;
                                    priverRSAKey = AlipayConfig.WOWO_PRIVATE_KEY;
                                } else if (payType == PayTypeEnum.WEIXIN_JSAPI) {
                                    // 微信支付密钥返回空
                                    paraMap.put(WEIXIN_APP_KEY, "");
                                    partnerId = WxServicepayConfig.WOWO_WX_PARTNER_ID;
                                    alipayId = WxServicepayConfig.WOWO_WX_APP_ID;
                                    priverRSAKey = WxServicepayConfig.WOWO_WX_APPKEY;
                                } else if (payType == PayTypeEnum.TENPAY_WEIXIN) {
                                    // 微信支付密钥返回空
                                    paraMap.put(WEIXIN_APP_KEY, "");
                                    partnerId = WxpayAppConfig.WOWO_WX_PARTNER_ID;
                                    alipayId = WxpayAppConfig.WOWO_WX_APP_ID;
                                    priverRSAKey = WxpayAppConfig.WOWO_WX_APPKEY;
                                } else if (payType == PayTypeEnum.WEIXIN_SCANPAY) {
                                    // 微信被扫码支付
                                    // paraMap.put(key, value) //这一行貌似没啥用
                                    partnerId = WxscanAppConfig.getWxScanPartnerID();
                                    alipayId = WxscanAppConfig.getWxScanAppID();
                                    priverRSAKey = WxscanAppConfig.getWxScanAppKey();
                                } else if (payType == PayTypeEnum.COMMON_SCANPAY) {
                                    // CommonPay
                                    // paraMap.put(key, value) //这一行貌似没啥用
                                    partnerId = CommonScanConfig.getWxScanPartnerID();
                                    alipayId = CommonScanConfig.getWxScanAppID();
                                    priverRSAKey = CommonScanConfig.getWxScanAppKey();
                                } else if (payType == PayTypeEnum.WEIFUTONG_PAY) {
                                    // 微富通支付
                                    partnerId = WftpayConfig.getWftPartnerID();
                                    alipayId = WftpayConfig.getWftAppID();
                                    priverRSAKey = WftpayConfig.getWftKey();
                                    logger.info("微富通支付partnerId: " + partnerId + ",alipayId:" + alipayId
                                            + ",priverRSAKey:" + priverRSAKey);
                                } else if (payType == PayTypeEnum.ALIPAYSERVICE) {
                                    paraMap.put(ALIPAY_PUBLIC_RSA, AlipaywebConfig.getAlipayRSAPublicKey());
                                    partnerId = AlipaywebConfig.getAlipayPartnerId();
                                    alipayId = partnerId;
                                    priverRSAKey = AlipaywebConfig.getSHRSAPrivateKey();
                                    logger.info(String.format("支付宝服务窗参数：partnerId --> %s , provateKey --> %s",
                                            partnerId, priverRSAKey));
                                } else if (payType == PayTypeEnum.WEIFUTONG_SCAN_PAY) {
                                    // 微富通支付
                                    partnerId = WftScanPayConfig.getWftPartnerID();
                                    alipayId = WftScanPayConfig.getWftAppID();
                                    priverRSAKey = WftScanPayConfig.getWftKey();
                                    logger.info("微富通小额支付partnerId: " + partnerId + ",alipayId:" + alipayId
                                            + ",priverRSAKey:" + priverRSAKey);
                                } else if (payType == PayTypeEnum.NOWPAY_WXPAY || payType == PayTypeEnum.NOWPAY_ALIPAY) {
                                    partnerId = NowpayConfig.getNowpayPartnerID();
                                    alipayId = NowpayConfig.getNowpayAppID();
                                    priverRSAKey = NowpayConfig.getNowpayKey();
                                    logger.info("现在支付partnerId: " + partnerId + ",alipayId:" + alipayId
                                            + ",priverRSAKey:" + priverRSAKey);
                                } else if (payType == PayTypeEnum.NOWPAY_SCANPAY_WXPAY || payType == PayTypeEnum.NOWPAY_SCANPAY_ALIPAY) {
                                    partnerId = NowpayScanPayConfig.getNowpayscanpayPartnerID();
                                    alipayId = NowpayScanPayConfig.getNowpayscanpayAppID();
                                    priverRSAKey = NowpayScanPayConfig.getNowpayscanpayKey();
                                    logger.info("现在支付--被扫支付partnerId: " + partnerId + ",alipayId:" + alipayId
                                            + ",priverRSAKey:" + priverRSAKey);
                                }
                                Map<String, String> result = null;
                                // 根据tradeId判断是否需要创建新的交易数据领域模型
                                TradeDomain lastDomain = tradeDomainRepository
                                        .getLastDomainByTradeId(tradeVO.getTradeId());
                                // 本次交易模型
                                TradeDomain tradeDomain = null;
                                // true，新增加的domain
                                boolean boolCreate = false;
                                if (lastDomain == null) {
                                    // 创建新的交易领域模型
                                    tradeDomain = tradeDomainRepository.createTradeDomain(tradeVO);
                                    tradeDomain.generateTradeNo(null);
                                    boolCreate = true;
                                } else {
                                    // 判断交易是否已经完成
                                    if (lastDomain.getStatus() == PayConstants.PAY_STATUS_SUCCESS || lastDomain
                                            .getStatus() == PayConstants.PAY_STATUS_SUCCESS_CLOSE) {
                                        return CallResult
                                                .failure(PaygateBusinessCode.TRADE_CREATE_INVALID_TRADE_STATUS,
                                                        "the trade has finished,tradeId=" + tradeVO.getTradeId()
                                                                + ", status=" + lastDomain.getStatus());
                                    }
                                    // 交易未完成
                                    // 根据传递的交易号进行判断，如果有就用传递交易号操作，全部上线就if可以去掉
                                    tradeDomain = lastDomain;
                                    if (StringUtils.isNotBlank(tradeVO.getExternToken())) {
                                        tradeDomain.setExternToken(tradeVO.getExternToken());
                                    }
                                    // 更新支付银行代码
                                    tradeDomain.setPayBank(tradeVO.getPayBank());
                                    if (StringUtils.isNotBlank(tradeVO.getTradeNo())) {
                                        if (!lastDomain.getTradeNO().equalsIgnoreCase(tradeVO.getTradeNo())) {
                                            // tradeNo发生改变，将原交易号关闭
                                            boolean boolClose = lastDomain.close();
                                            if (boolClose) {
                                                tradeDomainRepository.storageTradeDomainStatus(lastDomain);
                                            }
                                            // 判断是否要产生新的交易流水号
                                            tradeDomain = tradeDomainRepository
                                                    .getTradeDomainByTradeNo(tradeVO.getTradeNo());
                                            if (tradeDomain == null) {
                                                boolCreate = true;
                                                tradeDomain = tradeDomainRepository.createTradeDomain(tradeVO);
                                                tradeDomain.setTradeNO(tradeVO.getTradeNo());
                                            }
                                        } else {
                                            tradeDomain.setPayType(tradeVO.getPayType());
                                        }
                                    } else {
                                        if (!lastDomain.isUserAble(tradeVO.getBusinessType(), tradeVO.getPayMoney(),
                                                PayTypeEnum.valueOf(tradeVO.getPayType()))) {
                                            // 关闭上一条交易信息
                                            boolean boolClose = lastDomain.close();
                                            if (boolClose) {
                                                tradeDomainRepository.storageTradeDomainStatus(lastDomain);
                                            }
                                            boolCreate = true;
                                            tradeDomain = tradeDomainRepository.createTradeDomain(tradeVO);
                                            // 获取新的交易号
                                            tradeDomain.generateTradeNo(lastDomain.getTradeNO());
                                        }
                                    }
                                }

                                // 交易私钥是否为空
                                if (StringUtils.isBlank(partnerId) || StringUtils.isBlank(alipayId)
                                        || StringUtils.isBlank(priverRSAKey)) {
                                    return CallResult.failure(
                                            PaygateBusinessCode.TRADE_CREATE_PAY_INFO_INCORRECT,
                                            "merchant pay key  not set");
                                }
                                tradeDomain.setSellerAccountName(alipayId);
                                tradeDomain.setOpenId(tradeVO.getOpenId());
                                result = tradeDomain.getMobileResult(tradeVO.getPhoneIp(), tradeVO.getPhoneImei(),
                                        lastDomain == null ? null : lastDomain.getResult(), partnerId, alipayId,
                                        priverRSAKey);

                                if (boolCreate) {// 创建
                                    tradeDomainRepository.storageNewTradeDomain(tradeDomain);
                                    tradeDomain.generateCreateLog();
                                } else {// 什么东西改变了，更新什么
                                    tradeDomainRepository.storageUpdateTradeDomain(tradeDomain);
                                }

                                // 处理微信被扫码支付
                                if (payType == PayTypeEnum.WEIXIN_SCANPAY) {
                                    processWxScanPayResult(result.get("url"), tradeVO.getPhoneIp(),
                                            tradeDomain.getTradeNO());
                                }

                                // 处理CommonPay
                                if (payType == PayTypeEnum.COMMON_SCANPAY) {
                                    processCommonScanPayResult(result.get("url"), tradeVO.getPhoneIp(),
                                            tradeDomain.getTradeNO());
                                }

                                // 处理CommonPay
                                if (payType == PayTypeEnum.WEIFUTONG_SCAN_PAY) {
                                    processWeiFuTongScanPayResult(result.get("url"), tradeVO.getPhoneIp(),
                                            tradeDomain.getTradeNO(), tradeDomain.getTradeNO());
                                }

                                String mobileRequestParams = result.get("url");
                                if (StringUtils.isBlank(mobileRequestParams)) {
                                    return CallResult.failure(
                                            PaygateBusinessCode.TRADE_CREATE_ERROR,
                                            "create mobile request params return null");
                                }
                                paraMap.put(MOBILE_REQUEST_PARAM, result.get("url"));
                                return CallResult.success(PaygateBusinessCode.TRADE_CREATE_SUCCESS,
                                        "TRADE_CREATE_SUCCESS", paraMap);
                            } catch (Exception e) {
                                if (e instanceof RSAException) {
                                    return new CallResult<Map<String, String>>(false,
                                            PaygateBusinessCode.TRADE_CREATE_WRONG_RSA_KEY, e.getMessage(), null);
                                }
                                logger.error("create trade error", e);
                                return new CallResult<Map<String, String>>(false,
                                        PaygateBusinessCode.TRADE_CREATE_ERROR, e.getMessage(), null);
                            }
                        }