### 功能描述
本项目将是重构的起始项目，拆分出queue机制消费模块，该模块负责处理支付成功的订单。
分为三部分：DAO,SERVICE,BIZENTRY
### DAO模块
DAO:
  * 从数据库提取待处理订单，考虑后台提取，单线程while循环持续执行并存储于内存队列，线程最多等待100ms。
  * 批量刷新数据库，采用线程池多线程刷。考虑采用高效线程池并作测试!利用公司服务器。
  * 采用mybatis+HiKariCP的组合来做数据库这一层的操作,具体为：
      * 一个线程负责提取所有待处理数据，间隔1秒。
      * 开启100个线程处理提取到的所有待处理数据，每个线程间负责将数据刷回数据库，充分利用HikariCP线程池。
          * 开启多少线程待压力评测，不限定10000条了，一次全提取所有待处理线程，休息100毫秒即可
      * 即有一个线程专门负责提取待处理数据，间隔尽可能短，多个线程负责处理所有待处理数据。


### 重要勿遗漏事宜
  * 修改mdpaygate的queueconsumetask，不再提取pay类型queue记录，该任务仍然需要运行，只是最大的pay部分不再继续。
  * 需要添加shop的jar包，走dubbo,调整paycallbacksuccess等逻辑

### 测试疑点
  * dubbo总是失败，报forbid consumer，应该是服务提供方有问题，或者其他问题
      * zookeeper地址错误，本机host与常规环境不同
      * 需要hessian依赖组件
  * dubbo失败的情况下，居然md_order_info状态的pay_status刷成了2，那么mdpaygate屏蔽payevent没起作用？
      * 属于眼花看错字段，错将order_channel当成了pay_status
  * clientip必须不能为null，否则所有扫码枪失败，需要将null转为空白字符
  * paytype在payEventHandle里做了一次转换，会影响payid，进而影响客户端显示的支付通道的图标
  * 模板消息常规环境始终未收到，今天上午开始排查，最终确定是昨天压力测试导致wxmsg.55tuan.me/api/WeChatMsg崩了
      * 最终步骤，首先用http://idcenter.55tuan.me/idcenter/home(账号密码是manager/manager，idcenter.55tuan.me对应ip:10.8.210.223)登录
      * 通过notifyserver项目配置找到其对应数据库地址为10.8.210.166(账号密码是notifyserver/notifyserver)，常规环境对应的库为notifyserver库下的以test_bu/test_ct/test_lk/test_if的表，查到相应消息的uuid，然后再在控制台"跟踪消息"处搜索，发现到了交换中心就没了记录，进一步查询，发现分配中心没有服务器在线
      * 先清空test_bu/test_ct/test_lk/test_if相关表，然后重启分发中心，很简单就是执行相关脚本如下,注意其中**&符号代表后台运行**

      ```
      ./run-distributer.sh &
      ```

      * 找到常规环境的notifyserver项目，打开对应控制台网站，发现分配中心不在线,重启分配中心在线
      * 继续从数据库提取uuid查某个消息然后发现还是失败，进入mdtask error目录发现http://wxmsg.55tuan.me/api/WeChatMsg 网站无法访问，重启windows服务器的www服务和相应的应用程序池，再查uuid方式排查发现notifyserver发送消息已经成功!
      * 在mdtask的business目录中搜索"模板消息"的确可以看到正常post给了http://wxmsg.55tuan.me 网站。而该网站发送模板消息的账号应该被封了。
      * 强调一点

<table><tr><td bgcolor="Teal"><font color="white">模板消息在mdtask的反现任务中处理，而该消息来自notifyserver，亦即来自支付成功的finishup的notify消息发送模块，此后该消息在notifyserver系统的mdtask消费者来继续post给.net的微信消息处理通道</font></td></tr></table>

### java启动命令行

```

java -server -Xmx1g -Xms1g -XX:+HeapDumpOnOutOfMemoryError  -classpath "../*" com.shanhui.pay.service.Main

```

我线上采用后台模式，用如下指令行

```
nohup java -server -Xmx1g -Xms1g -XX:+HeapDumpOnOutOfMemoryError  -jar SERVICE-1.0.0.jar &
```

* nohup [...] & 代表后台执行相应命令行
* 更简单的模式，放入某个.sh脚本，用**./some.sh &**模式也行

#### java程序

* 无需web容器也能启动基于Spring框架的Java程序，前提是如下图得在Main入口用<font color=Teal>**ApplicationContext**</font>来载入相应的Bean Xml。
 ![Java-Spring-01](images/Java-Spring-01.jpg)

* 相应入口模块(module)的resources下需要<font color=Teal>**配置META-INF目录并添加MANIFEST.MF文件**</font>，并写入如下内容：
   * 其中<font color=Teal>**Main-Class**</font>即入口类Main.java的完整命名路径。
```
Manifest-Version: 1.0
Main-Class: com.shanhui.pay.service.Main
```
* 相应入口模块的pom文件中务必在build节点添加如下插件配置
    * <font color=Teal>**maven-dependency-plugin**</font>插件定义了拷贝依赖组件到lib目录
    * <font color=Teal>**maven-jar-plugin**</font>的archive节点定义了在MANIFEST.MF文件中写入入口类依赖的jar包，这样才能简明启动而不是在java命令里添加无穷的依赖包指令。
```xml
<build>

        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-dependency-plugin</artifactId>
                <executions>
                    <execution>
                        <id>copy</id>
                        <phase>package</phase>
                        <goals>
                            <goal>copy-dependencies</goal>
                        </goals>
                        <configuration>
                            <outputDirectory>${project.build.directory}/lib</outputDirectory>
                        </configuration>
                    </execution>
                </executions>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-jar-plugin</artifactId>
                <configuration>
                    <archive>
                        <manifest>
                            <addClasspath>true</addClasspath>
                            <classpathPrefix>lib/</classpathPrefix>
                            <mainClass>com.shanhui.pay.service.Main</mainClass>
                        </manifest>
                    </archive>
                </configuration>
            </plugin>
        </plugins>
    </build>
```
* 编译后的目录结构说明
    * jar包一定只包含自身类的内容，绝不包含lib目录，这不是war包，那是打包所有的目录(包括lib目录)进来。
    * 基于jar包的项目需要手工拷贝相应的所有目录来部署，只是没有war包会通过容器自动解压缩而已，麻烦不了多少。
    * 一般target目录如下图所示

    ![Java-Spring-02](images/Java-Spring-02.jpg)
