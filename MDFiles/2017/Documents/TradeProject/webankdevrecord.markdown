### 平行环境

* 目前将mdfrontserver,mdpaygate的平行环境的jenkins分支全部调整为feature/webank并自动编译部署通过。
* 需要安多帮着提供二维码入口两个(b->c,c->b)，然后用手机的微信和支付宝进行相应测试。目前安多说平行环境登录失败不知是指什么。
* 2017-08-28上午要求永强调整paytype为4个，分别对应网商支付宝和微信的c->b和b->c。
* 平行环境的mdpaygate服务器必须能被公网访问到，且需配置到profile里。平行环境mdpaygate监听端口要暂时调整为9041，记得要调整回来，只需要更改resin.xml即可。
    * resin.xml要暂时改为9041
    * dubbo配置，作为服务提供方配置也要暂时改为9041
    * 最终确定，不需要！还是9040，平行环境有单独的对外地址,在env.properties.spec里有配置
    * 需要胡正调整平行环境的newwap的paytype为91,92,93,94。
    * 永强和张杰的spring配置补齐了，mdpaygate启动ok了，另外，交待了平行环境给永强和张杰，联调时自查错误日志并逐步接手未来网商部分的问题排查
    * 与网商的对接，目前https这块是虚假的，需要建立真实的，基于数字证书的对接，目前只是简单对接了加签验签，加密解密这块是虚假的。
    * 明天门店项目反现比例bug上线
* 2017-08-29
    * 增加QueueConsumeService对网商类型的支持，并增加平行环境编译部署到mdfontserver
    * 张杰一堆xml未打包进war包，永强的门店平行环境死活得不到反现方案，shopcenter2应该连接redis不对，耽误一下午。
    * 用的是10.9.210.131:6379的redis，造门店数据要造全套，KEY_SHOP_BASE/KEY_SHOP_EXT/KEY_SHOP_REBATE...才行。
* 2017-08-30
    * 昨天是平行环境的门店无法登陆b端客户端，也无法创建测试门店，采用临时办法，在相应的redis里刷入门店数据，能跑通提取反现方案，至此网商调试进入了与网商接口的报文通讯阶段，创建订单，下单已完成，今天跟踪此事并核实数据库记录是否正确！
    * mdpaygate项目增加属性未上传到公司私库导致引用mdpaygate属性的mdfrontserver项目自动编译失败！
    * b->c的网商测试基本通过，退款今天要模拟测一下部分流程，c->b一是自己要配置支付宝规范的沙箱，而是微信部分要等配置结果。
    * 我要查手续费等和queue消费等情况。
* 2017-08-31
    * 今天是永强的退款测试以及张杰的c->b尚未通过。
    * <font color=red>正式环境不涉及沙箱，沙箱的测试地址与正式肯定不同，上线前需要注意</font>
* 2017-09-01
    * 修改shopcenter2,未来，一个门店可能在多个通道间切换，每个通道对于每个门店必须的参数又都不同，如何确保能及时刷新，能在frontserver一次高效获取。
        * 在sh_wowostore中追加表sh_shop_paychannel表:paytype类似：91，92，93，94。jsondata:{"a":1},这两个参数需要魁星和永强他们共同协商决定。
        * 耗费一下午提供了接口，原有提取反现接口，支持同时返回paytype对应的json支付参数配置
        * 用8006081测试返回:http://10.8.210.115:10315/shop/getshopbyid.do
        * 用[8006081]测试录入:http://http://10.8.210.115:10315/shop/doshopupdate.do
        * 
```sql
/*
SQLyog Enterprise - MySQL GUI v7.15
MySQL - 5.6.13-log : Database - sh_wowostore
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`sh_wowostore` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sh_wowostore`;

/*Table structure for table `sh_shop_paychannel` */

DROP TABLE IF EXISTS `sh_shop_paychannel`;

CREATE TABLE `sh_shop_paychannel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` bigint(20) NOT NULL,
  `paytype` varchar(60) NOT NULL,
  `jsondata` varchar(100) NOT NULL,
  `createtime` int(13) NOT NULL,
  `updatetime` int(13) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

```
