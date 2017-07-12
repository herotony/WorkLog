## All abount Java's KeyTool
### 创建数字证书
> * 默认使用.keystore格式的密钥库和DSA的算法。
> * 一个密钥库可以存放多个条目（每个条目对应 公钥/私钥和证书并以别名alias作彼此间的区分）。
>       * keytool -genkey -alias qixun -keyalg RSA -keysize 2048 -keystore mycomputerkeystore -validity 3650
>            * keyalg 指定生成密钥的算法，这里采用了RSA
>            * keysize 指定密钥的长度，这里采用2048
>            * 若采用DSA算法生成密钥，则keysize只能在512～1024间且必须为64的整数倍，不方便。
>            * validity 所创建证书的有效天数。
>            * 上述指令生成了一个本地名为mycomputerkeystore的密钥库，并追加了一个名为qixun的条目，其内包含一对RSA，长度为2048的公钥/密钥和一个有效期为10年的证书。
>            * 上述指定执行过程中需要为密钥和证书各输入一次密码的交互过程。
>       * keytool -genkey -dname "CN=tmp,OU=NC,O=Beijing University,L=ZB,ST=Beijing,C=CN" -alias qixun -kealg RSA -keystore mycomputerkeystore -keypass wangqixun -storepass wangqixun -validity 3650
>            * 该过程省去了输入密码的交互过程而已。

### 显示数字证书信息
> * keytool -list -v -keystore mycomputerkeystore -alias qixun
> * 显示密钥库mycomputerkeystore中别名为qixun的条目信息（包括发照者，序号，有效期，MD5和SHA1认证指纹等额外信息）

### 利用keytool将数字证书导出到文件
> * keytool -export -alias qixun -file qixun.cer -keystore mycomputerkeystore
> * 将本地名为mycomputerkeystore密钥库中的名为qixun的条目导出到名为qixun.cer的文件中。

### 利用keytool显示文件中数字证书
> * keytool -printcert -file qixun.cer

### 利用keytool维护本地密钥库
> * 删除指定条目：keytool -delete -alias qixun -keystore mycomputerkeystore
> * 修改指定条目的口令：keytool -keypasswd -alias qixun -keystore mycomputerkeystore
> * 非交互模式修改指定条目口令：keytool -keypasswd -alias qixun -keystore mycomputerkeystore -storepass 123 -keypass 123 -new 123456,其中123456为原来的口令，新的key密码为123。

### windows系统下的综合应用实例

这里举例是windows系统，至于linux系统自行模仿照做即可。一般默认目录建议为当前用户的home目录下创建即可。这点也同于Windows的默认目录情况(c:\Documents and Settings\UserName目录)。也可以指定目录保存，这都是一样的。

#### 为客户端生成证书
>  * （注意：个人证书的生成和使用比较特别，是分开的。**先生成p12文件，然后导出cer文件，再将cer文件导入默认类型的keystore（JKS）文件**）
>  *  这一步是为浏览器生成证书，以便让服务器来验证它。**为了能将证书顺利导入至IE和Firefox,证书格式应该是PKCS12** ，因此，使用如下命令生成：
>      * keytool -genkey -v -keystore c:\keystore\user.p12 -alias MyPC -keyalg RSA -storetype PKCS12 -validity 3650 -dname "CN=MyPC,OU=cn,O=cn,L=cn,ST=cn,c=cn" -storepass 123456 -keypass 123456
>  *  服务器要信任客户端，必须也要把客户端的证书添加到服务器的信任认证，由于不能直接将PKCS12格式的证书导入（p12文件一般用于IE/FireFox导入使用),我们必须先把客户端证书导出为一个单独的cer文件，使用如下命令生成：
>       * keytool -export -alias MyPC -keystore c:\keystore\user.p12 -storetype PKCS12 -storepass 123456 -rfc -file c:\keystore\user.cer
        * **服务端导入user.cer证书**，命令为：keytool -import -v -file c:\keyStore\user.cer -keystore c:\keystore\servertrust -alias **user** -storepass 123456
        * **服务端查看安装后的客户端证书**：keytool -list -keystore c:\keystore\servertrust -storepass 123456,这里新建了一个密钥库servertrust。
#### 为服务器生成证书
>  * 在c盘根目录下创建keystore文件夹
>  * 确定服务器对应的域名，查看c:\windows\system32\drivers\etc\hosts文件
>  * 用keytool生成本地密钥库和为tomcat使用的证书
>      * 这里假设域名为qixun.me
>      * 密钥库保存在c:\keystore目录下,命名为**server**
>      * 密钥库server和tomcatkey证书都用口令:123456
>      * keytool -genkey -v -keystore c:\keystore\server -alias tomcatkey -keyalg RSA -storetype PKCS12 -keysize 2048 -validity 3650 -dname "CN=qixun.me OU=cn O=cn L=cn ST=cn c=cn" -storepass 123456 -keypass 123456
>      *  **导出证书server.cer给客户端使用**：keytool -export -alias tomcatkey -keystore c:\keystore\server  -storepass 123456  -file c:\keystore\server.cer



##### 配置Tomcat服务器

服务器证书生成后，需要在Tomcat容器中进行设置以便建立https连接。
> * 配置tomcat下的conf/server.xml，增加如下节点:

```xml
< clientAuth="true" sslProtocol="TLS"
  keystoreFile="C:\Java\Tomcat\conf\keystore\server" keystorePass="123456"
  truststoreFile="C:\Java\Tomcat\conf\keystore\servertrust" truststorePass="123456"
/>
```
> * 同时在windows系统下安装个人证书client.p12和服务器证书server.cer。
