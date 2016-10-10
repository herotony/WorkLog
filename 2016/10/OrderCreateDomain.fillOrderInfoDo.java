private OrderInfoDO fillOrderInfoDO()
	{
		orderInfoDO = new OrderInfoDO();
		orderInfoDO.setOrderId(orderCreateParam.getOrderId());
		orderInfoDO.setSupplierId(orderCreateParam.getSupplierId());
		orderInfoDO.setShopId(orderCreateParam.getShopId());
		orderInfoDO.setShopName(orderCreateParam.getShopName());
		orderInfoDO.setCityId(orderCreateParam.getCityId());
		orderInfoDO.setSecret(orderCreateParam.getSecret());
		orderInfoDO.setOrderChannel(orderCreateParam.getOrderChannel());
		orderInfoDO.setOrderStatus(OrderConstants.ORDER_STATUS_UNVERIFY);
		long current = TimeUtil.getNowTimestampMillis();
		orderInfoDO.setAddTime(current);
		orderInfoDO.setBindLimitTime(current + MdConstants.BIND_LIMIT_TIME);
		orderInfoDO.setBillAmount(orderCreateParam.getBillAmount());
		orderInfoDO.setOrderAmount(orderCreateParam.getBillAmount());
		orderInfoDO.setNoRebateMoney(orderCreateParam.getNoRebateMoney());
		orderInfoDO.setSchemaId(orderCreateParam.getSchemaId());
		orderInfoDO.setSchemaName(orderCreateParam.getSchemaName());
		orderInfoDO.setContractId(orderCreateParam.getContractId());
		orderInfoDO.setRebateRate(orderCreateParam.getRebateRate());
		orderInfoDO.setSettlementRate(orderCreateParam.getSettlementRate());
		orderInfoDO.setMobile("");
		orderInfoDO.setMid("");
		orderInfoDO.setOstype(orderCreateParam.getOsType());
		orderInfoDO.setPayName("");
		orderInfoDO.setPaySync(0);
		orderInfoDO
				.setRemark(orderCreateParam.getRemark() == null ? "" : orderCreateParam.getRemark().replace("￥", "￥"));
		// 计算金额
		BigDecimal rebateMoney = orderCreateParam.getBillAmount().subtract(orderCreateParam.getNoRebateMoney());
		BigDecimal orderRebateMoney = rebateMoney.multiply(orderCreateParam.getRebateRate()).divide(new BigDecimal(100))
				.setScale(2, BigDecimal.ROUND_HALF_UP);
		orderInfoDO.setOrderRebateMoney(orderRebateMoney);
		orderInfoDO.setOrderRebateTotalMoney(orderRebateMoney);
		orderInfoDO.setOperatorId(orderCreateParam.getOperatorId());
		orderInfoDO.setOperatorName(orderCreateParam.getOperatorName());
		orderInfoDO.setOperatorMid(orderCreateParam.getOperatorMid() == null ? "" : orderCreateParam.getOperatorMid());
		orderInfoDO.setOrderSource(orderCreateParam.getOrderSource());
		orderInfoDO.setLastUpdateTime(TimeUtil.getNowTimestampMillis());
		orderInfoDO.setRouteTime(TimeUtil.getRouteTime(current));
		
		// decimal 消费金额-（消费金额-不参返金额）* 返现比例 - 手续费
		orderInfoDO.setPayFee(new BigDecimal(0));
		//是否直连门店
		if (orderCreateParam.getIsOutOfPayShop())
		{
			orderInfoDO.setJiesuanAmount(BigDecimal.ZERO);
		}
		else
		{
			orderInfoDO.setJiesuanAmount(
			
			orderCreateParam.getBillAmount()
					.subtract(orderCreateParam.getBillAmount().subtract(orderCreateParam.getNoRebateMoney())
							.multiply(orderCreateParam.getRebateRate().divide(new BigDecimal(100))))
					.subtract(orderInfoDO.getPayFee()).setScale(2, BigDecimal.ROUND_HALF_UP)
					
			);
		}
		return orderInfoDO;
	}