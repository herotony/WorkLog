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

#### HTTPS认证
##### 基本概念
> * **单向认证**：就是传输的数据加密但不会校验数据来源。
> * **双向认证**:此时客户端浏览器不导入p12证书，是访问不来https服务端的，也意味着要验证来源。导入p12文件是服务端的证书，此时，即可获取加密的服务端数据也能验证服务端的来源是否合法，但服务端一般不安装客户端证书，除非要验证客户端来源。所以，一般是单向，而银行系统的专业版估计一般都是双向验证，即在客户端安装了服务端证书，同时服务端也安装了客户端的信任证书。

#### 为客户端生成证书
>  * （注意：个人证书的生成和使用比较特别，是分开的。**先生成p12文件，然后导出cer文件，再将cer文件导入默认类型的keystore（JKS）文件**）
>  *  这一步是为浏览器生成证书，以便让服务器来验证它。**为了能将证书顺利导入至IE和Firefox,证书格式应该是PKCS12** ，因此，使用如下命令生成：
>      * keytool -genkey -v -keystore c:\keystore\user.p12 -alias MyPC -keyalg RSA -storetype PKCS12 -validity 3650 -dname "CN=MyPC,OU=cn,O=cn,L=cn,ST=cn,c=cn" -storepass 123456 -keypass 123456
>  *  服务器要信任客户端，必须也要把客户端的证书添加到服务器的信任认证，由于不能直接将PKCS12格式的证书导入（p12文件一般用于IE/FireFox导入使用),我们必须**先把客户端p12证书导出为一个单独的cer文件**，使用如下命令生成：
>       * keytool -export -alias MyPC -keystore c:\keystore\user.p12 -storetype PKCS12 -storepass 123456 **<font color=blue>-rfc</font>** -file c:\keystore\user.cer
        * **rfc意味着输出文件会采用BASE64编码**
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
> * **上面的keystoreFile是服务端的密钥库，truststoreFile则是用于存储来自各个客户端证书的密钥库**。
> * 同时在windows系统下的**客户端**安装个人证书client.p12给IE/FireFox和服务器证书server.cer。
> * 然后服务端启动tomcat,此时客户端浏览器中敲入https://qixun.me:443/Test即可。

## Java实例处理证书
### Java程序读取证书相关信息

```java
import java.io.*;
import java.security.*;
import java.security.cert.*;
import java.math.*;

public class ShowCertInfo{

   public static void main(String args[ ]) throws Exception{

        CertificateFactory cf=CertificateFactory.getInstance("X.509");
        FileInputStream in=new FileInputStream("my.cer");
        java.security.cert.Certificate c=cf.generateCertificate(in);
        in.close();

        X509Certificate t=(X509Certificate) c;

        System.out.println("版本号 "+t.getVersion());
        System.out.println("序列号 "+t.getSerialNumber().toString(16));
        System.out.println("全名 "+t.getSubjectDN());
        System.out.println("签发者全名n"+t.getIssuerDN());
        System.out.println("有效期起始日 "+t.getNotBefore());
        System.out.println("有效期截至日 "+t.getNotAfter());
        System.out.println("签名算法 "+t.getSigAlgName());

        byte[] sig=t.getSignature();

        System.out.println("签名n"+new BigInteger(sig).toString(16));

        PublicKey pk=t.getPublicKey();
        byte[] pkenc=pk.getEncoded();
  }
}
```

### apache的commons-codec-1.8.jar包来进行BASE64编码/解码

> * 一般采用utf-8字节流

```java
        /**
         * @param bytes
         * @return
         */
        public static byte[] decryptBASE64(final byte[] bytes) {
            return Base64.decodeBase64(bytes);
        }

        /**
         * 二进制数据编码为BASE64字符串
         *
         * @param bytes
         * @return
         * @throws Exception
         */
        public static String encryptBASE64(final byte[] bytes) {
            return new String(Base64.encodeBase64(bytes));
        }
```

### Java加签和验证签名

```java
   /**
    * 签名
    *
    * @param keyStorePath
    * @param alias
    * @param password
    *
    * @return
    * @throws Exception
    */
   public static String sign(byte[] sign, String keyStorePath, String alias,
           String password) throws Exception {
       // 获得证书
       X509Certificate x509Certificate = (X509Certificate) getCertificate(
               keyStorePath, alias, password);
       // 获取私钥
       KeyStore ks = getKeyStore(keyStorePath, password);
       // 取得私钥
       PrivateKey privateKey = (PrivateKey) ks.getKey(alias, password
               .toCharArray());

       // 构建签名
       Signature signature = Signature.getInstance(x509Certificate
               .getSigAlgName());
       signature.initSign(privateKey);
       signature.update(sign);
       return encryptBASE64(signature.sign());
   }

   /**
    * 验证签名
    *
    * @param data
    * @param sign
    * @param certificatePath
    * @return
    * @throws Exception
    */
   public static boolean verify(byte[] data, String sign,
           String certificatePath) throws Exception {
       // 获得证书
       X509Certificate x509Certificate = (X509Certificate) getCertificate(certificatePath);
       // 获得公钥
       PublicKey publicKey = x509Certificate.getPublicKey();
       // 构建签名
       Signature signature = Signature.getInstance(x509Certificate
               .getSigAlgName());
       signature.initVerify(publicKey);
       signature.update(data);

       return signature.verify(decryptBASE64(sign));

   }

```
### 较完整的Java证书组件

#### 组件部分

```java
import java.io.FileInputStream;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Date;

import javax.crypto.Cipher;

/**
 * 证书组件
 *
 *
 * @version 1.0
 * @since 1.0
 */
public abstract class CertificateCoder extends Coder {


    /**
     * Java密钥库(Java Key Store，JKS)KEY_STORE
     */
    public static final String KEY_STORE = "JKS";

    public static final String X509 = "X.509";

    /**
     * 由KeyStore获得私钥
     *
     * @param keyStorePath
     * @param alias
     * @param password
     * @return
     * @throws Exception
     */
    private static PrivateKey getPrivateKey(String keyStorePath, String alias,
            String password) throws Exception {
        KeyStore ks = getKeyStore(keyStorePath, password);
        PrivateKey key = (PrivateKey) ks.getKey(alias, password.toCharArray());
        return key;
    }

    /**
     * 由Certificate获得公钥
     *
     * @param certificatePath
     * @return
     * @throws Exception
     */
    private static PublicKey getPublicKey(String certificatePath)
            throws Exception {
        Certificate certificate = getCertificate(certificatePath);
        PublicKey key = certificate.getPublicKey();
        return key;
    }

    /**
     * 获得Certificate
     *
     * @param certificatePath
     * @return
     * @throws Exception
     */
    private static Certificate getCertificate(String certificatePath)
            throws Exception {
        CertificateFactory certificateFactory = CertificateFactory
                .getInstance(X509);
        FileInputStream in = new FileInputStream(certificatePath);

        Certificate certificate = certificateFactory.generateCertificate(in);
        in.close();

        return certificate;
    }

    /**
     * 获得Certificate
     *
     * @param keyStorePath
     * @param alias
     * @param password
     * @return
     * @throws Exception
     */
    private static Certificate getCertificate(String keyStorePath,
            String alias, String password) throws Exception {
        KeyStore ks = getKeyStore(keyStorePath, password);
        Certificate certificate = ks.getCertificate(alias);

        return certificate;
    }

    /**
     * 获得KeyStore
     *
     * @param keyStorePath
     * @param password
     * @return
     * @throws Exception
     */
    private static KeyStore getKeyStore(String keyStorePath, String password)
            throws Exception {
        FileInputStream is = new FileInputStream(keyStorePath);
        KeyStore ks = KeyStore.getInstance(KEY_STORE);
        ks.load(is, password.toCharArray());
        is.close();
        return ks;
    }

    /**
     * 私钥加密
     *
     * @param data
     * @param keyStorePath
     * @param alias
     * @param password
     * @return
     * @throws Exception
     */
    public static byte[] encryptByPrivateKey(byte[] data, String keyStorePath,
            String alias, String password) throws Exception {
        // 取得私钥
        PrivateKey privateKey = getPrivateKey(keyStorePath, alias, password);

        // 对数据加密
        Cipher cipher = Cipher.getInstance(privateKey.getAlgorithm());
        cipher.init(Cipher.ENCRYPT_MODE, privateKey);

        return cipher.doFinal(data);

    }

    /**
     * 私钥解密
     *
     * @param data
     * @param keyStorePath
     * @param alias
     * @param password
     * @return
     * @throws Exception
     */
    public static byte[] decryptByPrivateKey(byte[] data, String keyStorePath,
            String alias, String password) throws Exception {
        // 取得私钥
        PrivateKey privateKey = getPrivateKey(keyStorePath, alias, password);

        // 对数据加密
        Cipher cipher = Cipher.getInstance(privateKey.getAlgorithm());
        cipher.init(Cipher.DECRYPT_MODE, privateKey);

        return cipher.doFinal(data);

    }

    /**
     * 公钥加密
     *
     * @param data
     * @param certificatePath
     * @return
     * @throws Exception
     */
    public static byte[] encryptByPublicKey(byte[] data, String certificatePath)
            throws Exception {

        // 取得公钥
        PublicKey publicKey = getPublicKey(certificatePath);
        // 对数据加密
        Cipher cipher = Cipher.getInstance(publicKey.getAlgorithm());
        cipher.init(Cipher.ENCRYPT_MODE, publicKey);

        return cipher.doFinal(data);

    }

    /**
     * 公钥解密
     *
     * @param data
     * @param certificatePath
     * @return
     * @throws Exception
     */
    public static byte[] decryptByPublicKey(byte[] data, String certificatePath)
            throws Exception {
        // 取得公钥
        PublicKey publicKey = getPublicKey(certificatePath);

        // 对数据加密
        Cipher cipher = Cipher.getInstance(publicKey.getAlgorithm());
        cipher.init(Cipher.DECRYPT_MODE, publicKey);

        return cipher.doFinal(data);

    }

    /**
     * 验证Certificate
     *
     * @param certificatePath
     * @return
     */
    public static boolean verifyCertificate(String certificatePath) {
        return verifyCertificate(new Date(), certificatePath);
    }

    /**
     * 验证Certificate是否过期或无效
     *
     * @param date
     * @param certificatePath
     * @return
     */
    public static boolean verifyCertificate(Date date, String certificatePath) {
        boolean status = true;
        try {
            // 取得证书
            Certificate certificate = getCertificate(certificatePath);
            // 验证证书是否过期或无效
            status = verifyCertificate(date, certificate);
        } catch (Exception e) {
            status = false;
        }
        return status;
    }

    /**
     * 验证证书是否过期或无效
     *
     * @param date
     * @param certificate
     * @return
     */
    private static boolean verifyCertificate(Date date, Certificate certificate) {
        boolean status = true;
        try {
            X509Certificate x509Certificate = (X509Certificate) certificate;
            x509Certificate.checkValidity(date);
        } catch (Exception e) {
            status = false;
        }
        return status;
    }

    /**
     * 签名
     *
     * @param keyStorePath
     * @param alias
     * @param password
     *
     * @return
     * @throws Exception
     */
    public static String sign(byte[] sign, String keyStorePath, String alias,
            String password) throws Exception {
        // 获得证书
        X509Certificate x509Certificate = (X509Certificate) getCertificate(
                keyStorePath, alias, password);
        // 获取私钥
        KeyStore ks = getKeyStore(keyStorePath, password);
        // 取得私钥
        PrivateKey privateKey = (PrivateKey) ks.getKey(alias, password
                .toCharArray());

        // 构建签名
        Signature signature = Signature.getInstance(x509Certificate
                .getSigAlgName());
        signature.initSign(privateKey);
        signature.update(sign);
        return encryptBASE64(signature.sign());
    }

    /**
     * 验证签名
     *
     * @param data
     * @param sign
     * @param certificatePath
     * @return
     * @throws Exception
     */
    public static boolean verify(byte[] data, String sign,
            String certificatePath) throws Exception {
        // 获得证书
        X509Certificate x509Certificate = (X509Certificate) getCertificate(certificatePath);
        // 获得公钥
        PublicKey publicKey = x509Certificate.getPublicKey();
        // 构建签名
        Signature signature = Signature.getInstance(x509Certificate
                .getSigAlgName());
        signature.initVerify(publicKey);
        signature.update(data);

        return signature.verify(decryptBASE64(sign));

    }

    /**
     * 验证Certificate
     *
     * @param keyStorePath
     * @param alias
     * @param password
     * @return
     */
    public static boolean verifyCertificate(Date date, String keyStorePath,
            String alias, String password) {
        boolean status = true;
        try {
            Certificate certificate = getCertificate(keyStorePath, alias,
                    password);
            status = verifyCertificate(date, certificate);
        } catch (Exception e) {
            status = false;
        }
        return status;
    }

    /**
     * 验证Certificate
     *
     * @param keyStorePath
     * @param alias
     * @param password
     * @return
     */
    public static boolean verifyCertificate(String keyStorePath, String alias,
            String password) {
        return verifyCertificate(new Date(), keyStorePath, alias, password);
    }
}
```

#### 测试部分

```java
import static org.junit.Assert.*;

import org.junit.Test;

/**
 *
 *
 * @version 1.0
 * @since 1.0
 */
public class CertificateCoderTest {
    private String password = "123456";
    private String alias = "www.zlex.org";
    private String certificatePath = "d:/zlex.cer";
    private String keyStorePath = "d:/zlex.keystore";

    @Test
    public void test() throws Exception {
        System.err.println("公钥加密——私钥解密");
        String inputStr = "Ceritifcate";
        byte[] data = inputStr.getBytes();

        byte[] encrypt = CertificateCoder.encryptByPublicKey(data,
                certificatePath);

        byte[] decrypt = CertificateCoder.decryptByPrivateKey(encrypt,
                keyStorePath, alias, password);
        String outputStr = new String(decrypt);

        System.err.println("加密前: " + inputStr + "\n\r" + "解密后: " + outputStr);

        // 验证数据一致
        assertArrayEquals(data, decrypt);

        // 验证证书有效
        assertTrue(CertificateCoder.verifyCertificate(certificatePath));

    }

    @Test
    public void testSign() throws Exception {
        System.err.println("私钥加密——公钥解密");

        String inputStr = "sign";
        byte[] data = inputStr.getBytes();

        byte[] encodedData = CertificateCoder.encryptByPrivateKey(data,
                keyStorePath, alias, password);

        byte[] decodedData = CertificateCoder.decryptByPublicKey(encodedData,
                certificatePath);

        String outputStr = new String(decodedData);
        System.err.println("加密前: " + inputStr + "\n\r" + "解密后: " + outputStr);
        assertEquals(inputStr, outputStr);

        System.err.println("私钥签名——公钥验证签名");
        // 产生签名
        String sign = CertificateCoder.sign(encodedData, keyStorePath, alias,
                password);
        System.err.println("签名:\r" + sign);

        // 验证签名
        boolean status = CertificateCoder.verify(encodedData, sign,
                certificatePath);
        System.err.println("状态:\r" + status);
        assertTrue(status);

    }
}
```
