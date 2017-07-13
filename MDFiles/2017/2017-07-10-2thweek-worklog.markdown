### 7.10
* 连续三天未出现丢单了，本周上线上周修改的丢单补单，本周应该是考虑民生开发了吧。上周有一事忘了记录，c->b回调慢实际是我们的网络架构不合理闹的，也就是在阿里云的slb后的两个负责负载均衡的ngix负责了太多的项目的负载均衡，导致其压力过大，处理不过来，后来分开ngix服务器单独给mdpaygate项目，而图片等直接挂在slb下了，不再经过ngix。

### 7.11

* 补单记录原始时间已上线，民生接口整理
* 常规环境的shopcenter2慢原因查找,原因很简单mongocomment1.55tuan.me:27017，这个mongo数据库不通导致。
* 民生**签名**整理
    * 字段名=字段值用&连接，空值不参与，需自然排序，用SHA-1算法做签名，得到**摘要1**
    * 再结合民生给特约商户的**RSA<font color=red>私钥</font>证书**继续对**摘要1**做二次签名，同样采用SHA-1算法，获取**摘要2**
    * 对**摘要2**做BASE64编码存入字段signature中，至此用于校验的签名字段signature生成。
    * 另外，字符变字节流时统一采用**utf-8**编码
* 民生**验签**整理
    * 剔除signature字段和空值字段，自然排序，同样依照字段名=字段值用&连接，用SHA-1算法签名，得到**摘要1**
    * 用民生给特约商户的**RSA<font color=green>公钥</font>证书**对**摘要1**做二次签名，同样采用SHA-1算法，得到**摘要2**
    * 对比**摘要2**和signature字段值是否相等，相等则验签通过，否则扔掉。

### 7.12

* 昨天下午七点半左右肯定接口又出问题了。曲线有个大的下降。
* 8200564门店没有反现方案，实际就是反现方案过期(end_time过期)了，我只是查了数据库，感觉就是这个原因闹的。dubbo没问题的。
* 门店8200564，数据没问题，程序看不出问题，但就是反现方案没提出来，只能写线上测试程序来解决吗，还是线上日志？关于文档整理得延期了。
* 延后半天，因为排查该门店反现方案问题，导致延期，目前不知为啥反现方案未进redis,**以后再有问题直接调相关接口刷反现方案即可**。
* 下午尽快整理完成关于证书部分的常识，明天整理完成民生银行文档，后天写测试demo，得延后了
* 反现方案的KEY不同于手续费的KEY，手续费KEY为KEY_SHOP_PAYRATE_8200564,而反现方案的KEY很诡异**<font color=red>KEY_SHOP_REBATE_8,200,564</font>**
* 整理加密解密的事暂告一段落，先整理民生文档，为下星期开发做做准备，后天出加密解密demo类即可。
* 明天继续整理加密解密证书这块，民生银行不做了，考虑后续接微众银行，暂时搁置，计划作废，明后两天全力梳理清楚证书这块编程整理。

### 7.13
* 目前还存在的丢单一般都是获取用户失败，比如，微信的根据openid提取用户信息失败，此时，返回null，导致无法绑定订单，从而丢单进而再被补单处理。
* get unionid时针对转换json失败做一次容错处理。
* 协查常规环境的8006002门店信息没有，提取sql条件不满足闹得，不明所以
```sql

SELECT a.*,b.suppliers_id,c.contract_id,c.is_direct,d.subscript_name,d.subscript_icon,subscript_start_time,subscript_end_time
		FROM sh_shop AS a
		INNER JOIN sh_suppliers_shop AS b ON b.shop_id=a.shop_id
		INNER JOIN sh_suppliers AS c ON b.suppliers_id=c.suppliers_id
		LEFT JOIN (SELECT shop_id,subscript_name,subscript_icon,subscript_start_time,subscript_end_time
FROM sh_subscript INNER JOIN sh_subscript_relation ON sh_subscript.subscript_id=sh_subscript_relation.subscript_id
WHERE sh_subscript_relation.subscript_start_time <NOW() AND sh_subscript_relation.subscript_end_time > NOW()) d ON a.shop_id=d.shop_id
		WHERE a.shop_id=8006002
```
* 门店面审核需求导致上述语句中的sh_suppliers改为sh_suppliers_draft表。
