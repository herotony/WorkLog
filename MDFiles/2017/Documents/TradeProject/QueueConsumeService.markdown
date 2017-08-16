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

### java启动命令行

```

java -server -Xmx1g -Xms1g -XX:+HeapDumpOnOutOfMemoryError  -classpath "../*" com.shanhui.pay.service.Main

```

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
