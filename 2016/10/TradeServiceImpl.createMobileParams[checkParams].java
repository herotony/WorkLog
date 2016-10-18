public CallResult<Map<String, String>> checkParam() {
                            boolean checkRes = true;
                            StringBuilder errMsg = new StringBuilder();
                            String newSign = PayUtil.createSecrect(tradeVO,
                                    PublicConfig.getInstance(tradeVO.getBusinessType()).getKey());
                            if (!secret.equalsIgnoreCase(newSign)) {
                                checkRes = false;
                                errMsg.append("secret is invalid ,");
                            }
                            if (BusinessTypeEnum.valuesOf(tradeVO.getBusinessType()) == null) {
                                checkRes = false;
                                errMsg.append("businessType is invalid ,");
                            }
                            if (StringUtils.isBlank(tradeVO.getTradeId())) {
                                checkRes = false;
                                errMsg.append("tradeId is blank ,");
                            }
                            if (StringUtils.isBlank(tradeVO.getSubject())) {
                                checkRes = false;
                                errMsg.append("subject is blank ,");
                            }
                            if (tradeVO.getPayMoney() <= 0) {
                                checkRes = false;
                                errMsg.append("payMoney must is > 0, ");
                            }
                            if (PayTypeEnum.valueOf(tradeVO.getPayType()) == null) {
                                checkRes = false;
                                errMsg.append("payType is invalid:" + tradeVO.getPayType() + ",");
                            } else {
                                if (tradeVO.getPayType() == PayTypeEnum.WEIXIN_JSAPI.getBankId()) {
                                    if (StringUtils.isBlank(tradeVO.getOpenId())) {
                                        checkRes = false;
                                        errMsg.append("openid is blank ,");
                                    }
                                    if (!NetUtil.isValidAddress(tradeVO.getPhoneIp())) {
                                        checkRes = false;
                                        errMsg.append("phoneIp is invalid,");
                                    }
                                }
                            }
                            if (tradeVO.getShopID() <= 0) {
                                checkRes = false;
                                errMsg.append("shopID is invalid ,");
                            }
                            if (tradeVO.getSupplierID() <= 0) {
                                checkRes = false;
                                errMsg.append("supplierID is invalid ,");
                            }
                            if (StringUtils.isBlank(tradeVO.getPaymentType())) {
                                checkRes = false;
                                errMsg.append("paymentType is blank ,");
                            }
                            if (StringUtils.isBlank(tradeVO.getBody())) {
                                checkRes = false;
                                errMsg.append("body is blank,");
                            }
                            if (StringUtils.isBlank(tradeVO.getPayLongitude())) {
                                checkRes = false;
                                errMsg.append("payLongitude is blank,");
                            }
                            if (StringUtils.isBlank(tradeVO.getPayLatitude())) {
                                checkRes = false;
                                errMsg.append("payLatitude is blank,");
                            }
                            /**
                             * 威富通刷卡支付不进行校验
                             */
                            logger.info("支付类型为：" + tradeVO.getPayType());
                            logger.info("判断结果为：" + (tradeVO.getPayType() != PayTypeEnum.WEIFUTONG_SCAN_PAY.getBankId() && tradeVO.getPayType() != PayTypeEnum.NOWPAY_SCANPAY_WXPAY.getBankId() && tradeVO.getPayType() != PayTypeEnum.NOWPAY_SCANPAY_ALIPAY.getBankId()));
                            if (tradeVO.getPayType() != PayTypeEnum.WEIFUTONG_SCAN_PAY.getBankId() && tradeVO.getPayType() != PayTypeEnum.NOWPAY_SCANPAY_WXPAY.getBankId() && tradeVO.getPayType() != PayTypeEnum.NOWPAY_SCANPAY_ALIPAY.getBankId()) {

                                if (tradeVO.getExpireTime() < 0 || tradeVO.getExpireTime() > 120) {
                                    checkRes = false;
                                    errMsg.append("expireTime is invalid [expireTime:" + tradeVO.getExpireTime()
                                            + " that must is >0 and <" + 120 + "], ");
                                }
                            }
                            if (StringUtils.isNotBlank(tradeVO.getTradeNo())
                                    && tradeVO.getTradeNo().indexOf(tradeVO.getTradeId()) < 0) {
                                checkRes = false;
                                errMsg.append("tradeNo is invalid , ");
                            }
                            // 信息大小判断
                            if (!checkRes) {
                                logger.error(
                                        "TradeService.generateRequestForm param invalid {" + errMsg.toString() + "}");
                                return CallResult.failure(PaygateBusinessCode.TRADE_CREATE_PARAM_ERR,
                                        errMsg.toString());
                            }
                            return CallResult.success();
                        }