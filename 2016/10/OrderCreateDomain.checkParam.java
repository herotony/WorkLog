public TradeBusinessCodeEnum checkParam()
	{
		TradeBusinessCodeEnum resultEnum = TradeBusinessCodeEnum.CREATE_ORDER_PARAM_ERROR;
		
		if (StringUtils.isBlank(orderCreateParam.getOrderId()))
		{
			resultEnum.setMsg("orderId is error");
			return resultEnum;
		}
		if (orderCreateParam.getSupplierId() <= 0)
		{
			resultEnum.setMsg("SupplierId is error");
			return resultEnum;
		}
		if (orderCreateParam.getShopId() <= 0)
		{
			resultEnum.setMsg("ShopId is error");
			return resultEnum;
		}
		if (StringUtils.isBlank(orderCreateParam.getShopName()))
		{
			resultEnum.setMsg("ShopName is error");
			return resultEnum;
		}
		if (StringUtils.isBlank(orderCreateParam.getSecret()))
		{
			resultEnum.setMsg("Secret is error");
			return resultEnum;
		}
		if (orderCreateParam.getOrderChannel() == null)
		{
			resultEnum.setMsg("OrderChannel is error");
			return resultEnum;
		}
		if (orderCreateParam.getOrderChannel() <= -1)
		{
			resultEnum.setMsg("OrderChannel is error");
			return resultEnum;
		}
		
		if (orderCreateParam.getActionPlace() == null)
		{
			resultEnum.setMsg("ActionPlace is error");
			return resultEnum;
		}
		
		if (orderCreateParam.getActionPlace() <= 0)
		{
			resultEnum.setMsg("ActionPlace is error");
			return resultEnum;
		}
		
		if (orderCreateParam.getBillAmount() == null)
		{
			resultEnum.setMsg("BillAmount is error");
			return resultEnum;
		}
		
		if (orderCreateParam.getBillAmount().compareTo(new BigDecimal(0)) <= 0)
		{
			resultEnum.setMsg("BillAmount is error");
			return resultEnum;
		}
		
		if (orderCreateParam.getNoRebateMoney() == null)
		{
			resultEnum.setMsg("NoRebateMoney is error");
			return resultEnum;
		}
		if (orderCreateParam.getNoRebateMoney().compareTo(new BigDecimal(0)) < 0)
		{
			resultEnum.setMsg("NoRebateMoney is error");
			return resultEnum;
		}
		
		if (orderCreateParam.getSchemaId() <= 0)
		{
			resultEnum.setMsg("SchemaId is error");
			return resultEnum;
		}
		if (StringUtils.isBlank(orderCreateParam.getSchemaName()))
		{
			resultEnum.setMsg("SchemaName is error");
			return resultEnum;
		}
		if (orderCreateParam.getContractId() <= 0)
		{
			resultEnum.setMsg("ContractId is error");
			return resultEnum;
		}
		if (orderCreateParam.getRebateRate() == null)
		{
			resultEnum.setMsg("RebateRate is error");
			return resultEnum;
		}
		if (orderCreateParam.getRebateRate().compareTo(new BigDecimal(0)) < 0)
		{
			resultEnum.setMsg("RebateRate is error");
			return resultEnum;
		}
		
		if (orderCreateParam.getSettlementRate() == null)
		{
			resultEnum.setMsg("SettlementRate is error");
			return resultEnum;
		}
		
		if (orderCreateParam.getSettlementRate().compareTo(new BigDecimal(0)) < 0)
		{
			resultEnum.setMsg("SettlementRate is error");
			return resultEnum;
		}
		
		return TradeBusinessCodeEnum.CREATE_ORDER_SUCCESS;
	}