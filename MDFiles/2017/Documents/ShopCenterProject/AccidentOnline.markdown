### 指定门店id搜索反现方案失败

* 在sh_wowostore的sh_rebate_schema中能查到反现方案，但返回给newwap，却没反现方案。
* newwap -> frontserver -> shopcenter2 's dubbo interface -> shopserviceimpl.getShopAndNowRebateById
* 可查mdfrontserver接口的serivce目录的相应Log,搜索关键字"获取当前方案失败getRebateSchemas"
* 也可查询shopcenter2的default目录日志，搜索关键字"impl-getShopAndNowRebateById请求参数"和"impl-getShopAndNowRebateById请求门店结果"
* 也可用http://shshopcenter.55tuan.me:10315/shop/getshopbyid.do ,来提取线上当前门店返回结果直接简单校验。
#### 源码部分

* 从redis读取门店反现方案，getRebateSingleToRedisByShopId。

#### 直接查redis
* 客户端工具RedisDesktopManager连接服务器：
  * jedis.host=redis74.55tuan.me
  * jedis.port=7651
* 直接查redis的key :KEY_SHOP_REBATE_8,000,429(可通过公司常规环境的redisdesktopmanager查看到该key的格式，非常无语，直接采用Long就是这样，应该是Long.toString()可以去掉逗号)，返回的是"[]"值。

<table><tr><td bgcolor=Teal><font color=yellow>确定原因了：因为存入的是"[]",导致反而不去数据库提取有效的反现方案，此时，主动刷,即 set KEY_SHOP_REBATE_8,000,429 null则可修复这种异常情况。程序也要考虑修复这个bug</font></td></tr></table>

#### 直接查数据库

* 如果redis返回null，用如下语句查数据库有返回记录，则录入redis,否则空集合new ArrayList()

```sql

select * from sh_rebate_schema where shop_id=8000429 and
`status`=1 and end_time>=UNIX_TIMESTAMP(now())

```
