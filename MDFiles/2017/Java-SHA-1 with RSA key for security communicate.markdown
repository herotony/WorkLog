# RSA加密与SHA签名
## 加密和加签的区别
### 加密
RSA<font color=green>公钥</font>放在客户端，客户端用公钥进行加密，服务端则拿RSA<font color=red>私钥</font>进行解密。**目的是防止数据被看到**。
### 加签
RSA<font color=red>私钥</font>放在客户端，客户端用私钥进行加签，服务端则用RSA<font color=green>公钥</font>进行验签，注意不是解密哦,客户端采用的公钥私钥的选择都是正好相反，这里加签所用算法能确保服务端用公钥生成的签名与私钥签名一致也是牛到家了，至于为什么是客户端采用私钥，这可能确保能判断出来自哪个客户端的需要，这与加密不同，客户端采用公钥，确保所有客户端的数据都能正确解密。**目的是防止数据被篡改**。

### 更明确说明加密和加签对公钥私钥的不同运用选择
> * 加密方面：当A->B资料时，A会使用B的公钥加密，这样才能确保只有B能解开，否则普罗大众都能解开加密的讯息，就是去了资料的保密性。
> * 验证方面：使用签验章的机制，A传资料给大家时，会以自己的私钥做签章，如此所有收到讯息的人都可以用A的公钥进行验章，便可确认讯息是由A发出来的了。

### RSA加密Padding
padding即填充模式，由于RSA加密算法中要加密的明文是必须要比模数小的，Padding就是通过一些填充模式来限制明文的长度，不懂！明文长了会分段进行加密，分段中不足的部分会用padding填充吧。

## 数字证书
### 概念
> * 是数字形式的标识，与护照或驾驶员执照十分相似。数字证书是数字凭据，它提供有关实体标识的信息以及其他支持信息。数字证书是**由成为证书颁发机构（CA）的权威机构颁发的**。由于数字证书有证书权威机构颁发，因此由该权威机构担保证书信息的有效性。此外，**数字证书只在特定的时间段内有效**。


> * 数字证书包含证书中所标识的实体的**<font color=green>公钥</font>（就是说你的证书里有你的公钥），由于证书将公钥与特定的个人匹配，并且该证书的真实性由颁发机构保证（就是说可以让大家相信你的证书是真的）**，因此，数字证书为如何找到用户的公钥并知道它是否有效这一问题提供了解决方案。

### 原理

> * 数字证书采用公钥体制，即利用一对互相匹配的公钥/密钥进行加密、解密。
      * 每个用户自己设定 **一把特定的仅为本人所知的私有密钥（私钥）**，用它进行解密和签名；
      * 同时设定 **一把公共密钥（公钥）**并由本人公开，为一组用户所共享，用于加密和验证签名。

> *  当发送一份保密文件时，发送方使用接收方的公钥对数据加密，而接收方则使用自己的私钥解密，这样信息就可以安全无误地到达目的地了。通过数字的手段保证加密过程是一个不可逆过程,即只有用私有密钥才能解密.在公开密钥密码体制中，常用的一种是RSA体制。
  *  用户也可以采用自己的私钥对信息加以处理，<font color=green>由于密钥仅为本人所有，这样就产生了别人无法生成的文件，也就形成了数字签名</font>。采用数字签名，能够确认以下两点：
      * 1.保证信息是由签名者自己签名发送的，签名者不能否认或难以否认；
      * 2.保证信息自签发后到收到为止未曾作过任何修改，签发的文件是真实文件。

### Java实例操作

> *  密钥库：java平台为你提供了密钥库，用作密钥和证书的资源库。从物理上讲，密钥库是缺省名称为 **.keystore的文件**（有一个选项使它成为加密文件）。**密钥和证书可以拥有名称（称为别名），每个别名都由唯一的密码保护**。密钥库本身也受密码保护；您可以选择让每个别名密码与主密钥库密码匹配。
> * Java自带工具keytool
>     * 创建<font color=red>keyStore密钥库</font> **keytool -genkey -v -alias YourKeyName -keyalg RSA** 默认在自己的home目录下（windows系统是c:/documents and settings/<你的用户名> 目录下的.keystore文件）。
>     * 查看证书 **keytool -list**
> * JAR包签名
>     *  前面我们已将讲了怎样创建自己的证书了，现在可以开始了解怎样对JAR文件签名，**JAR文件在Java中相当于ZIP文件**，允许将多个Java类文件打包到一个具有.jar扩展名的文件中，然后可以**对这个jar文件进行数字签名，以证实其来源和真实性**。该JAR文件的接收方可以根据发送方的签名决定是否信任该代码，并可以确信该内容在接收之前没有被篡改过。同时在部署中，可以通过在策略文件中放置访问控制语句根据签名者的身份分配对机器资源的访问权。这样，有些Applet的安全检验访问就得以进行。
>     * 使用jarsigner工具可以对jar文件进行签名：
>         * 现在假设我们有个Test.jar文件（可以使用jar命令行工具生成）：**jarsigner Test.jar YourKeyName** (这里我们上面创建了该别名的证书) ，详细信息可以输入jarsigner查看帮助
          * 验证其真实性：**jarsigner -verify　Test.jar**(注意，验证的是jar是否被修改了，但不检验减少的，如果增加了新的内容，也提示，但减少的不会提示。）使用Applet中：：<applet code="Test.class" archive="Test.jar" width="150" height="100"></applet>然后浏览器就会提示你：准许这个会话-拒绝-始终准许-查看证书等。


## 利用openssl工具生成p12文件
### 生成模长为2048的私钥
> openssl genrsa -out private_key_for_mybank.pem 2048
>   * genrsa 指定生成rsa的密钥,**<font color=Teal>实际这里只产生了private_key_for_mybank.pem的密钥文件，但此时公对应的钥已经确定了</font>**。
>   * 生成名为private_key_for_mybank的pem格式的私钥文件
>   * 2048的模长，越大密钥破解难度越大，效率也略低

### 根据私钥文件生成证书请求文件
> openssl req -new -key private_key_for_mybank.pem -out rsaCertReq.csr
>   * new 产生新的请求文件
>   * key 指定对应的私钥文件 private_key_for_mybank.pem
>   * <font color=Teal>所有的公钥文件，请求文件，都只能根据已产生的私钥文件来生成</font>，这里强调**只能**。
>   * 这里产生的请求文件的内容包含了**<font color=LightCoral>私钥加密的签名数据和公钥</font>**以及组织信息等
>   * 请求文件用来向证书颁发机构申请证书时必须有的一个数字文件，颁发机构根据公钥来解密私钥加密的内容来验签，同时审核通过后，将请求文件的公钥和组织信息打包到新生成的证书文件里返回给请求方。
>

### 根据证书请求文件生成证书并指定过期时间
> openssl x509 -req -days 3650 -in rsaCertReq.csr -signkey authority_key_for_mybank.pem -out rsaCert.crt
>   * x509这是一种证书加密标准,这是证书加密标准与公私钥无关。
>   * -days 3650，指定了过期时间为10年
>   * -signkey 采用authority_key_for_mybank.pem进行加签，这部分应该是颁发机构用其自己的私钥生成的验签文件并随之产生的公钥打包到rsaCert.crt返回给申请方。

### 生成用于加密解密/加签验签的p12文件
> openssl pkcs12 -export -out private_key.p12 -inkey authority_key_for_mybank.pem -in rsaCert.crt
>   * pckcs12 采用pckcs12标准生成p12文件
>   * -inkey 指定生成p12的私钥文件
>   * -in 指定需要**转换生成**p12格式的证书
>   会提示输入密码，自行记住即可。

### 根据私钥文件生成pem格式公钥文件供Java使用
> openssl rsa -in private_key_for_mybank.pem -out my_public_key.pem -pubout
>   * -in 指定对应的私钥文件private_key_for_mybank.pem
>   * -pubout 公钥文件选项

### 根据私钥文件生成pem格式私钥文件供Java使用
> openssl pkcs8 -topk8 -in private_key_for_mybank.pem -out pkcs8_private_key.pem -nocrypt
>   * -nocrypt 不加密...

## 微信基于https证书机制的示例

>   * keyStore读取p12文件
>   * keyStore文件读取p12文件的密码
>   * SSLContext载入p12文件
>   * SSLConnectionSocketFactory设定TLSv1为TLS版本

```java
public HttpRequestResult postBySSL(String url, EncodeEnum encode, Map<String, String> params, String pkFilePath,
                                     String pkPwd) {

      File pkFile = new File(pkFilePath);
      if (!pkFile.exists()) {
          logger.error(pkFilePath + " file not exists");
          return new HttpRequestResult(HttpRequestStatusCodeEnum.BAD_REQUEST, false, "ssl file not exists");
      }
      StringBuilder sb = new StringBuilder();
      sb.append("http postByXml [ url=" + url + ", encode=" + encode.getEncode());
      FileInputStream instream = null;
      try {
          // 指定读取证书格式为PKCS12
          KeyStore keyStore = KeyStore.getInstance("PKCS12");
          // 读取本机存放的PKCS12证书文件
          instream = new FileInputStream(pkFile);
          // 指定PKCS12的密码(商户ID)
          keyStore.load(instream, pkPwd.toCharArray());
          SSLContext sslcontext = SSLContexts.custom().loadKeyMaterial(keyStore, pkPwd.toCharArray()).build();
          // 指定TLS版本
          SSLConnectionSocketFactory sslsf = new SSLConnectionSocketFactory(sslcontext, new String[]
                  {"TLSv1"}, null, SSLConnectionSocketFactory.BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
          // 设置httpclient的SSLSocketFactory
          CloseableHttpClient httpClient = HttpClients.custom().setSSLSocketFactory(sslsf).build();
          // 设置请求和传输超时时间
          RequestConfig requestConfig = RequestConfig.custom().setSocketTimeout(soTimeout)
                  .setConnectTimeout(connectionTimeout).build();
          HttpPost httpPost = new HttpPost(url);
          httpPost.setConfig(requestConfig);
          httpPost.addHeader("Content-Type", "text/xml;charset=" + encode.getEncode());
          String xmlData = convertMap2Xml(params);
          sb.append(", xmlData=" + xmlData + "]");
          StringEntity se = new StringEntity(xmlData);
          httpPost.setEntity(se);
          long startTime = System.currentTimeMillis();
          CloseableHttpResponse response = httpClient.execute(httpPost);
          long endTime = System.currentTimeMillis();
          int statusCode = response.getStatusLine().getStatusCode();
          sb.append(",useTime=" + (endTime - startTime));
          sb.append(",httpStatus=" + statusCode);
          if (statusCode != HttpStatus.SC_OK) {
              return new HttpRequestResult(
                      HttpRequestStatusCodeEnum.valueOf(statusCode), false, null);
          }
          InputStream resStream = response.getEntity().getContent();
          BufferedReader br = new BufferedReader(new InputStreamReader(resStream, encode.getEncode()));
          StringBuffer resBuffer = new StringBuffer();
          String res = "";
          while ((res = br.readLine()) != null) {
              resBuffer.append(res);
          }
          String resultReturn = resBuffer.toString();
          sb.append(",httpReturn=" + resBuffer);
          if (logger.isDebugEnabled()) {
              logger.debug(sb.toString());
          }
          return new HttpRequestResult(HttpRequestStatusCodeEnum.valueOf(statusCode), true, resultReturn);
      } catch (Exception e) {
          logger.error("postBySSL exception,url=" + url, e);
          return new HttpRequestResult(HttpRequestStatusCodeEnum.BAD_REQUEST, false, e.getMessage());
      } finally {
          if (instream != null) {
              try {
                  instream.close();
              } catch (IOException e) {
              }
          }
      }
  }
```

## Java示例

这部分会针对各种场景可能用到的加密解密举例说明。

### 私钥的加密/解密实例

> * 亦即所谓对称加密，用同样的key进行加密解密

```java
/**
*PrivateTest.java
*/
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import java.security.Key;

/**
*私鈅加密，保证消息机密性
*/
public class PrivateTest{
　public static void main(String[] args) throws Exception{

       String str="123";
　 　byte[] plainText=str.getBytes("UTF8");
　　　　
　　//通过KeyGenerator形成一个key
　　System.out.println("/nStart generate AES key");
　　KeyGenerator keyGen=KeyGenerator.getInstance("AES");
　　keyGen.init(128);
　　Key key=keyGen.generateKey();
　　System.out.println("Finish generating AES key");

　　//获得一个私鈅加密类Cipher，ECB是加密方式，PKCS5Padding是填充方法
　　Cipher cipher=Cipher.getInstance("AES/ECB/PKCS5Padding");
　　System.out.println("/n"+cipher.getProvider().getInfo());

　　//使用私鈅加密
　　System.out.println("/nStart encryption:");
    //用到了先前生成的AES key
　　cipher.init(Cipher.ENCRYPT_MODE,key);
　　byte[] cipherText=cipher.doFinal(plainText);
　　System.out.println("Finish encryption:");
　　System.out.println(new String(cipherText,"UTF8"));

    //使用私鈅解密
　　System.out.println("/nStart decryption:");
    //用到了同样的AES key
　　cipher.init(Cipher.DECRYPT_MODE,key);
　　byte[] newPlainText=cipher.doFinal(cipherText);
　　System.out.println("Finish decryption:");

　　System.out.println(new String(newPlainText,"UTF8"));

　}
}
```

### 公钥加密/私钥解密

> * 典型的RSA加密运用模式，确保数据不被偷窥。

```java
/**
*PublicTest.java
*/
import java.security.Key;
import javax.crypto.Cipher;
import java.security.KeyPairGenerator;
import java.security.KeyPair;
/**
*一个简单的公鈅加密例子,Cipher类使用KeyPairGenerator生成的公鈅和私鈅
*/
public class PublicTest{
　public static void main(String[] args) throws Exception{
　  String str="123";
　  byte[] plainText=str.getBytes("UTF8");
　　//构成一个RSA密钥
　　System.out.println("/nStart generating RSA key");
　　KeyPairGenerator keyGen=KeyPairGenerator.getInstance("RSA");
　　keyGen.initialize(1024);
　　KeyPair key=keyGen.generateKeyPair();
　　System.out.println("Finish generating RSA key");

　　//获得一个RSA的Cipher类，使用公鈅加密
　　Cipher cipher=Cipher.getInstance("RSA/ECB/PKCS1Padding");
　　System.out.println("/n"+cipher.getProvider().getInfo());

　　System.out.println("/nStart encryption");
    //key.getPublic采用公钥加密
　　cipher.init(Cipher.ENCRYPT_MODE,key.getPublic());
　　byte[] cipherText=cipher.doFinal(plainText);
　　System.out.println("Finish encryption:");
　　System.out.println(new String(cipherText,"UTF8"));

　　//使用私鈅解密
　　System.out.println("/nStart decryption");
    //key.getPrivate私钥解密
　　cipher.init(Cipher.DECRYPT_MODE,key.getPrivate());
　　byte[] newPlainText=cipher.doFinal(cipherText);
　　System.out.println("Finish decryption:");
　　System.out.println(new String(newPlainText,"UTF8"));
　}
}


```

### 私钥加签/公钥验签

> * 典型的RSA验签运用模式，确保数据来源合法。

```java
**
*DigitalSignatureTest.java
*/
import java.security.Signature;
import java.security.KeyPairGenerator;
import java.security.KeyPair;
import java.security.SignatureException;

/**
*数字签名，使用RSA私钥对对消息摘要签名，然后使用公鈅验证 测试
*/
public class DigitalSignatureTest{
　public static void main(String[] args) throws Exception{
　    String str="123";
　 　byte[] plainText=str.getBytes("UTF8");
　　//形成RSA公钥对
　　System.out.println("/nStart generating RSA key");
　　KeyPairGenerator keyGen=KeyPairGenerator.getInstance("RSA");
　　keyGen.initialize(1024);

　　KeyPair key=keyGen.generateKeyPair();
　　System.out.println("Finish generating RSA key");

　　//使用私鈅签名，不同于之前的cipher加密类，这是验签类Signature
　　Signature sig=Signature.getInstance("SHA1WithRSA");
　　sig.initSign(key.getPrivate());
　　sig.update(plainText);
　　byte[] signature=sig.sign();
　　System.out.println(sig.getProvider().getInfo());
　　System.out.println("/nSignature:");
　　System.out.println(new String(signature,"UTF8"));

　　//使用公鈅验证
　　System.out.println("/nStart signature verification");
　　sig.initVerify(key.getPublic());
　　sig.update(plainText);
　　try{

      //signature这里是字节流
　　　if(sig.verify(signature)){
　　　　System.out.println("Signature verified");
　　　}else System.out.println("Signature failed");
　　　}catch(SignatureException e){
　　　　System.out.println("Signature failed");
　　　}
　　}
}
```
## 数字签名请求文件CSR

> * CSR是Cerificate Signing Request的英文缩写，即证书请求文件，在多方之间在互联网上安全分享数据的公钥基础架构PKI系统中，**<font color=blue>CSR文件</font>必须在申请和购买SSL证书<font color=blue>之前</font>创建**。也就是证书申请者在申请数字证书时由CSP(加密服务提供者，**一般就是指openssl工具啦，用来生成基于rsa的公钥私钥对**)在生成私钥的同时也生成证书请求文件，证书申请者只要把CSR文件提交给证书颁发机构后，证书颁发机构使用**其(这里指申请方的csr文件)**根证书私钥签名(<font color=green>csr文件内的私钥签名，颁发机构可用其公钥来验签确保是来自正确的申请方,确认无误后拿这个公钥生成证书的公钥文件，亦即最终版证书</font>)就生成了证书公钥文件，也就是颁发给用户的证书。
>  * 通常CSR文件是在拿到参考码、授权码进行证书签发和下载时，通过网页提交给CA的（也可以由浏览器自动生成）。在收集齐全所需CSR数据后，CA将生成SSL证书，CSR的生成方式取决于web服务器软件的类型，这里强调一下，**<font color=Teal>CSR文件中包括了私钥加密的所谓验签数据（只能公钥解密）和公钥给CA的，CA处理后会将公钥打包到要生成的证书中给申请方</font>**。
