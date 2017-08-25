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

##### redis服务器

* 多公众号配置采用的redis服务器 on 10.9.210.131,域名为：redis-tradem.shanhui.me:17701,key值为shbnpayarg-0,shbnpayarg-6...
    * 若门店没有配置则采用默认的6
    * 通过redisdesktopmanager连接到redis服务器，打开相应的终端，用如下语句查询
```
hmget shbnpayarg-1 pid appid signkey pidforbtoc signkeyforbtoc
```
     * 若没有，则在jobcenter中执行一次即可，若没配置，则在jobcenter配置如下：
           * 执行url:http://10.9.210.131:9040/job/notify.do （mdpaygate接口，mdpaygate在10.9.210.131上。）
           * 执行接口：pickPayArgTask
           * 然后手动执行一次，再通过redisdeskmanager来校验即可。

##### 10.9.210.131

* 平行环境在提交给现在支付前，并没有根据env.properties.special中的deploy.env设定的test，在generateTradeNo时，没有按设想追加T,亦即TW0170825...导致平行环境测试失败（返回渠道下单失败），理论上应该加的，待查。
    * 确认了，10.9.210.131上部署的mdpaygate是按照prod配置文件出的包，当然不在tradeno前加T,进而导致下单失败，测试服务器提交的支付是不允许tradeno不加T的。<font color=Teal>**也明确了，在第三方支付用来识别我们的交易用的是tradeno参数！，本来设计是同一tradeid可以反复支付,用tradeno来识别，现实中不再尝试反复支付了，反复支付无意义还不如重新生成新的订单干脆清晰**</font>，这部分一直以来都配错了，在jenkins里将build.sh special spec改为build.sh spec spec就对了，因为pom里的profiles中只有spec节点没有special节点。

##### 10.8.210.99服务器

* 该服务器上部署了mdfrontserver,mdpaygate,mdtradecenter，mdtask四个交易项目的核心模块。
* 2017-08-24：
    * 胡正newwap访问mdfrontserver返回null，0字节，经查mdfrontserver的logs目录下的visit目录（/data/application/mdfrontserver/logs/product/visit）中的日志能清晰看到返回参数为null,继续追查sevice目录（/data/application/mdfrontserver/logs/product/service）中的日志，看到zookeeper错误，亦即mdtradecenter相关dubbo接口不通，finduserrebatebyuserid不通，后查该虚拟机只有2g内存，mdtradecenter重启失败，待运维张永刚解决。此前也通过查/data/application/logs/mdfrontserver/access.log也能看到返回字节为0，该字段在状态码200后就是。
        * <font color=Teal>以后查visit目录很重要，可以看到输入和返回参数到底是什么</font>
* 2017-08-25
    * mdtradecenter在平行环境部署的是非常老的版本，绑定订单还保留着手机验证，需要更新相应的最新版才行，运维来做。
    * 昨天mdtradecenter新包在平行环境起不来是因为其resin/conf/resin.xml中少了**his库**的数据库节点配置，用常规环境的resin.xml覆盖后，新包能正常启动，胡正测试通过但因没配置多公众号未存入redis,查了mdorder库的md_paygate_conf表有记录，那就可能是相应的jobcenter没起来
    * 上午还好好的能通过dubbo调通mdpaygate，下午就又forbid consumer了，唯一做的是重新部署了mdpaygate,难道又起了两个实例？
      * 原因找到了，因为平行环境从来不用，后续的几次更改，增加语音通知，微美接口，胡正的授权接口统统没有配置到env.properties.spec文件件里，上午修正编译配置后，导致实际启动是错误的，下午的forbit consumer自然也就出现了。

### 常规环境

#### 交易模块

* mysql on 10.8.210.34(dns:53dbmaster.55tuan.me) with deployment - 123456

### 开发联调环境
