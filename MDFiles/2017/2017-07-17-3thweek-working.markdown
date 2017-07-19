### 7.17
* 早上随便从remedyorder表查了一补单记录，b->c,一直A004导致。
* 修改bizhttpserver，增加协议getsupplieraudstate，bizmanager.dll。o
### 7.18
* 今天开始梳理微众的加签验签流程。
* 中午出现延迟，正好排错语句也错误，select count(*) from md_pay_queue where consume_status!=2，应该用consume_status查，而不是status字段查，日了狗了。
* 但弹性和扩增的克隆机都存在host重复的问题，这会导致resin异常，可以认定今天的延迟是这个原因导致吧。
* 错误的shswp上线导致无法访问加大ngix负载，但奇怪的是影响到了交易这条线，也就是md_pay_queue的记录处理被堆积了，堆积只有一个原因就是mdfrontserver处理慢了。
* 明天整理微众银行文档。
### 7.19
