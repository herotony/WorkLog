### Java远程调试原理

> * Java远程调试的原理是**<font color=Teal>两个VM之间通过debug协议(全名：Java Debug Wire Protocol，简称：jdwp)进行通信</font>**，然后以达到远程调试的目的。两者之间可以通过socket进行通信。

>       * 首先**被debug程序的虚拟机**在启动时要**开启debug模式，启动debug监听程序**。jdwp是Java Debug Wire Protocol的缩写。

```
java -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8000,suspend=n your_application
```

这是jdk1.7版本之前的方法，1.7之后可以这样用：

```
java -agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n your_application
```

your_application是main程序，server=y表示是监听其他debugclient端的请求。address=8000表示端口是8000

> * suspend表示是否在调试客户端建立连接之后启动VM。如果为y，那么当前的VM就是suspend直到有debug client连接进来才开始执行程序。如果你的程序不是服务器监听模式并且很快就执行完毕的，那么可以选择在y来阻塞它的启动。

> * 然后用一个debug客户端去debug远程的程序了，比如用Eclipse自带的debug客户端，**<font color=LightCoral>填写运行被debug程序的虚拟机监听的端口号和地址，选择connect方式为attach</font>**。

Okay，现在就可以开始远程调试了。

#### Eclipse debug快捷键

* F5 Step into
* F6 Step over
* F7 Step out
* F8 continue to the next breakpoint

#### Intellij debug的快捷键

* F7 Step into
* F8 Step over
* Shift+F8 Step out
* Alt+F9 运行至光标处
* F9 恢复程序

#### 路人笔记

虽然很早以前就只有Eclipse和IDEA都支持远程调试功能的，但是基本没怎么使用过，今天因为紧急处理一个问题，而本地环境搭建起来比较麻烦，所以就使用了IDEA的远程调试功能。因此写一篇文章记录一下。
1. 首先在IDEA中check出来你要调试的工程的代码，假设工程的名字为A。然后在IDEA打开这个工程。
2. 因为我们用的是Tomcat，所以在IDEA中点击右上角那个“Edit Configurations”按钮，然后在弹出的界面中点击左上角的加号，选择tomcat server->remote
3. 在弹出的的界面中填写服务器的ip和工程的端口。
4. 然后点击那个弹出框的Starup/Connection选项卡，点击debug按钮，可以看到下面的文本框中有一段类似于下面的文字：

```
-Xdebug -Xrunjdwp:transport=dt_socket,address=55890,suspend=n,server=y
```
5. 将文本框中的这段话复制，然后登陆自己的远程机器，修改配置，在**JAVA_OPTS属性**中增加上面的那段话。并**<font color=Teal>重启tomcat</font>**。
6. 然后回到自己的idea点击debug就可以加断点调试了。profile什么的都不需要选择。
