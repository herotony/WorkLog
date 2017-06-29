---
layout: "post"
title: "2017.Jun.5.week.worklog"
date: "2017-06-26 14:35"
---
##### 6.26
  - 确认autobudan,budan两个jobcenter都是正常运作(都部署在<font color=blue>mdpaygate:172.16.1.119</font>这台服务器来执行)。
    - autobudan:处理下单半小时至两个小时后的order_status=3的单子，每30分钟执行一次。
    - budantask:处理下单前两天之内的pay_status!=2 and refund_status=0的单子,每天凌晨2点执行。
  - 确认因为<font color=red>AbstractNotify.addQueue</font>时DLock取锁操作超时导致大量b->c(多码合一)丢单，744单，budantask应该补回了一百多单。
    - 确认相较于最初的阿里云上线，23，24，25三天，23是两百多，24是三百多，25为两千多，大量存在redis "Read timed out"错误。
    - 确认相对于IDC，虚拟机的每小时备份会导致占用大量IO，引发redis忙，考虑单独针对7500,7501(mdpaygate专用)不需要做持久化备份来解决。
    - 将24号修改的5秒nowpaytool socket超时改回了3秒并已经上线。
    - 确认了mdfrontserver/mdtask用的sentinel端口7672的保存过于频繁，为10分钟，占用IO，导致网络IO无法进来或处理太慢，而且IDC的每日清理redis操作并没有在阿里云执行，导致1.5G的数据量占用磁盘IO，且是虚拟机性能影响更大。
  - mdfrontserver的确出现了从webMVC到generateorder纯走内存居然耗费10秒？我CTMD，无语了，没法解释这个诡异现象，难道当时线程堆积还是IO堆积？待后续继续观察，只是再嘟囔mdfrontserver慢需要先查日志再说了。我理解是方法栈日志搞的，不太明白这块了，待后续跟踪，这部分太反常识了！
  - 通过在Google Chrome上安装了Markdown reader插件，然后修改.markdown文件的默认处理程序，再通过freemind追加文件链接方式，能暂时完美满足我的需求，即通过Atom编辑日常文档，在freemind中整理并点击在GoogleChrome中显示，可以了，以后大量使用Atom写文档且必须采用vim模式进行，疯狂熟悉vim编辑，甚至考虑用Atom编写Java源码文件，通过Itellij IDEA只是用来编译而已。
##### 6.27
  - 丢单量的确降下来了，只有几十单了，明天应该就正常了
  - 常规环境mdfrontserver不正常，一是所连redis挂了，一是可能需要重启，因为用curl -I并不通。
  - 无事，考虑补单事宜，需要标识出是自动补单修正
##### 6.28
  - 核对了丢单，至昨天恢复正常凌晨5点丢了一单
  - 常规环境因为机房掉电，完全不正常，今天恢复常规测试环境，明天考虑丢单补单再修改。
    - 异常糟糕，notifyserver先是resin端口被占用，其使用的80端口在resin.properties里配置，但被另外的程序占用，杀掉占用进程，重启，又报连接数据库错误，先排查保证http://10.8.210.166/notifyserver 的控制台网站正常起来再进行后续配置。
    - 需要确定的环境
        - mysql:10.8.210.169:3306(notifyserver);
        - redis:10.8.210.169:50701,50702(notifyserver);
        - jobcenter
        - notifyserver:10.8.210.166，应该是正常了，采用了线上包当然连不通，另外，console-bean.xml有两份，一份明显多余的，导致误判很久，起作用的是web下的那份。
        - mdfrontserver:10.8.210.118(/data/application目录下)
        - mdpaygate:10.9.28.109(home目录下)
        - mdtradecenter:10.8.210.117
        - mdtask:10.8.210.116
        - zookeeper
        - wap ...
  - 重点排查了W1706270543929单子，发现order_status=5/c->b的单子，但有大量的closeTrade操作，提示already pay success，今天早上实际排查是pay_status=0 ,pay_id=0,order_status=5的状态，很诡异，待考虑如何修改完善。2点正常补单了，但在刷库时报如下错误：
  MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.PersistenceException:
  Error querying database.  Cause: org.springframework.jdbc.CannotGetJdbcConnectionException: Could not get JDBC Connection; nested exception is java.sql.SQLException: Failed For Connect Mysql Server or Wait Handshake, please check the health of db
  且发现搜索条件会搜出十二万左右待补单的记录，有点多
  - 中午老刘请吃饭，席间了解不吃晚饭或者只吃水果，一年半减了60斤，值得尝试！我是只吃玉米一个核桃。
##### 6.29
  - 今天一是搞定常规环境，一是查明为啥掉单又多了...
    - 重启了117的mdtradecenter，能出现支付界面了
    - 通过redis提取多公众号参数错误，待手动执行jobcenter
    - 常规数据库用的是34库，别查错了，不是189库,目前卡在回调地址109的调整上。<font color=green>下午13点半，常规环境通了c->b下单成功，数据库验证成功</font>
    - mdpaygate的回调地址设置到了207，而实际是109，今天应该统一改回来，包括jobcenter,另外确定了mdpaygate里向现在支付提交时会根据环境参数追加T,L等区别正式订单参数，不会影响线上环境在现在支付的参数。
    - 今天梳理补单，丢单处理并争取修改完成，考虑closeTrade的影响

        - budanTask仅仅是提取pay_status!=2/refund_status=0的记录查询一下接口，如果支付成功，打包邮件发给胡正安排人工补单...,所以这个凌晨2点执行一次的任务意义不大，只是寄希望于手工补单，真正的补单任务是那个autobudantask
        - autobudanTask,提取条件考虑修改（现在是order_status=3，时间是两个半小时前到两个小时前的半小时间的记录），如果查询支付成功，则确认md_pay_trade中有相应记录，将最新记录刷为status=8(userpaying状态),add_time=当前时间，notifystatus=0，等待queue线程提取进行后续处理,另外，直接刷md_order_info相应的order_status=3的记录为order_status=5，bindtime=当前时间。静等后续结算，刷新相应记录。
        - closeTrade在mdtask中进行，service.impl.resource.task里配置了NotPayOrderFailureTask。
        - mdtradecenter新增两台服务器的连接串还是老的二合一连接，导致丢单有增加了,亦即<font color=green>所谓订单状态不正确闹得(order_status=5必须等于5，已绑定)，才能进行后续的手续费结算，返现等操作！</font>
