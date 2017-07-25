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
