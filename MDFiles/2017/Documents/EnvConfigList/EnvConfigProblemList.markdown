### idcenter/notifyserver/jobcenter

这个公共服务，平行环境，常规环境用的是一套，用队列名称，job名称做区分。

* 统一从http://idcenter.55tuan.me/idcenter/home ,登录进去后
    * jobcenter，统一用于常规和平行环境。
    * notifyserver，也是统一用于常规和平行环境。

### 平行环境

#### 交易模块

* mdpaygate on 10.9.210.131
* mdfrontserver on 10.9.210.99
* mysql on 10.8.210.47(dns:53dbmaster.55tuan.me) with deployment - 123456

##### 10.8.210.99服务器

* 该服务器上部署了mdfrontserver,mdpaygate,mdtradecenter，mdtask四个交易项目的核心模块。
* 2017-08-24：
    * 胡正newwap访问mdfrontserver返回null，0字节，经查mdfrontserver的logs目录下的visit目录（/data/application/mdfrontserver/logs/product/visit）中的日志能清晰看到返回参数为null,继续追查sevice目录（/data/application/mdfrontserver/logs/product/service）中的日志，看到zookeeper错误，亦即mdtradecenter相关dubbo接口不通，finduserrebatebyuserid不通，后查该虚拟机只有2g内存，mdtradecenter重启失败，待运维张永刚解决。此前也通过查/data/application/logs/mdfrontserver/access.log也能看到返回字节为0，该字段在状态码200后就是。
        * <font color=Teal>以后查visit目录很重要，可以看到输入和返回参数到底是什么</font>
* 2017-08-25
    * mdtradecenter在平行环境部署的是非常老的版本，绑定订单还保留着手机验证，需要更新相应的最新版才行，运维来做。
    * 昨天mdtradecenter新包在平行环境起不来是因为其resin/conf/resin.xml中少了his库的数据库节点配置，用常规环境的resin.xml覆盖后，新包能正常启动，胡正测试通过但因没配置多公众号未存入redis,查了mdorder库的md_paygate_conf表有记录，那就可能是相应的jobcenter没起来

### 常规环境

#### 交易模块

* mysql on 10.8.210.34(dns:53dbmaster.55tuan.me) with deployment - 123456

### 开发联调环境
