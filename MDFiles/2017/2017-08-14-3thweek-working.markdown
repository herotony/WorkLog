### 08.14

继续分离queue，今天争取完成业务迁移。

### 8.16

昨天今天应该分离queue项目已经完成并争取明天部署上线
下午进行压力测试，方案如下：
* 提供一个页面录入一整套数据到md_order_info,md_pay_queue,md_pay_queue_info，一次录入10套
* jmeter通过定义压力方案来调用该页面进行压测
* 而我则通过固定的select count(*) fomr md_pay_queue where consume_status!=2的模式来检测压力效果。
