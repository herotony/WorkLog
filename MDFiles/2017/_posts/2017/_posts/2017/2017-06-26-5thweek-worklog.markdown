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
