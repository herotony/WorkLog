public Integer insert(OrderInfoDO orderInfoDO) {
		return getSqlSession().insert("insertMdOrderInfo", orderInfoDO);
	}