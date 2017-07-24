## 基本概念

> * OpenSSL初接触的人恐怕最难的在于先理解各种概念

### 公钥/私钥/签名/验证签名/加密/解密/非对称加密

> * 我们一般的加密是用一个密码加密文件,然后解密也用同样的密码.这很好理解,这个是对称加密.

> * 而有些加密时,加密用的一个密码,而解密用另外一组密码,这个叫非对称加密,意思就是加密解密的密码不一样.初次接触的人恐怕无论如何都理解不了.**其实这是数学上的一个素数积求因子的原理的应用**,如果你一定要搞懂,百度有大把大把的资料可以看,其结果就是用这一组密钥中的一个来加密数据,可以用另一个解开.是的**<font color=OrangeRed>没错,公钥和私钥都可以用来加密数据,相反用另一个解开</font>**。


>        * 公钥加密数据,然后私钥解密的情况被称为<font color=Teal>加密解密</font>
>        * 私钥加密数据,公钥解密一般被称为<font color=Teal>签名和验证签名</font>

> * 因为公钥加密的数据只有它相对应的私钥可以解开,所以你可以把公钥给所有相关人,让他们用该公钥加密他想要传送给你的数据,这个数据只有到了有私钥的你这里,才可以解开成有用的数据,其他人就是得到了,也看不到内容

> * 同理,如果你用你的私钥对数据进行签名,那这个数据就只有配对的公钥可以解开,有这个私钥的只有你,所以如果配对的公钥解开了数据,就说明这数据是你发的,相反,则不是.这个被称为签名.

> * 实际应用中,**<font color=Teal>一般都是和对方交换公钥</font>**,然后你要发给对方的数据,用他的公钥加密,他得到后用他的私钥解密,他要发给你的数据,用你的公钥加密,你得到后用你的私钥解密,这样最大程度保证了安全性.

#### RSA/DSA/SHA/MD5

> * 非对称加密的算法有很多,比较著名的有RSA/DSA
>     * RSA可以用于加/解密,也可以用于签名验签
>     * DSA则只能用于签名
> * SHA则是一种和md5相同的算法,它不是用于加密解密或者签名的,它被称为**摘要算法**.就是**<font color=Teal>通过一种算法,依据数据内容生成一种固定长度的摘要</font>**,这串摘要值与原数据存在对应关系,就是原数据会生成这个摘要,但是,<font color=LightCoral>这个摘要是不能还原成原数据的</font>,嗯,正常情况下是这样的,这个算法起的作用就是,如果你把原数据修改一点点,那么生成的摘要都会不同,传输过程中把原数据给你再额外追加给你一个摘要,你把得到的原数据同样做一次摘要算法,与给你得到的传过来摘要相比较就可以知道这个数据有没有在传输过程中被修改了.

> * 实际应用过程中,<font color=RoyalBlue>因为需要加密的数据可能会很大,进行加密费时费力,所以一般都会把原数据先进行摘要,然后只对这个摘要值进行加密,但对于敏感数据还是要加密的,这里仅限于不敏感但庞大的数据</font>,将原数据的明文和加密后的摘要值一起传给你.这样你解开加密后的摘要值,再和你得到的数据进行的摘要值对应一下就可以知道数据有没有被修改了,而且,因为私钥只有你有,只有你能解密摘要值,所以别人就算把原数据做了修改,然后生成一个假的摘要给你也是不行的,你这边用密钥也根本解不开.

### CA/PEM/DER/X509/PKCS

#### 为什么需要CA,因为公钥中途可被替换掉，如何防止有赖CA

> * 一般的公钥不会用明文传输给别人的,正常情况下都会生成一个文件,这个文件就是公钥文件,然后这个文件可以交给其他人用于加密,但是传输过程中如果有人恶意破坏,将你的公钥换成了他的公钥,然后得到公钥的一方加密数据,不是他就可以用他自己的密钥解密看到数据了吗,为了解决这个问题,需要一个公证方来做这个事,任何人都可以找它来确认公钥是谁发的.这就是CA,**<font color=Teal>CA确认公钥的原理也很简单,它将它自己的公钥发布给所有人,然后一个想要发布自己公钥的人可以将自己的公钥和一些身份信息发给CA,CA用自己的密钥进行加密,这里也可以称为签名.然后这个包含了你的公钥和你的信息的文件就可以称为证书文件了.这样一来所有得到一些公钥文件的人,通过CA的公钥解密了文件,如果正常解密那么机密后里面的信息一定是真的,因为加密方只可能是CA,其他人没它的密钥啊</font>**.这样你解开公钥文件,看看里面的信息就知道这个是不是那个你需要用来加密的公钥了.

> * 实际应用中,一般人都不会找CA去签名,因为那是收钱的,所以可以自己做一个自签名的证书文件,就是自己生成一对密钥,然后再用自己生成的另外一对密钥对这对密钥进行签名,这个只用于真正需要签名证书的人,普通的加密解密数据,直接用公钥和私钥来做就可以了。即生成两对公私密钥来充当证书申请方和CA方。


#### 密钥文件格式PEM和DER

> * 密钥文件的格式用OpenSSL生成的就只有PEM和DER两种格式
>      * PEM的是将密钥用**base64编码**表示出来的,直接打开你能看到一串的英文字母
>      * DER格式是**二进制**的密钥文件,直接打开,你可以看到........你什么也看不懂!

#### 证书文件格式X509和PKCS

> * X509是通用的证书文件格式定义
> * PKCS的一系列标准是指定的存放密钥的文件标准，用于web浏览器？

<table><tr><td bgcolor=YellowGreen>你只要知道PEM DER X509 PKCS这几种格式是可以互相转化的。</td></tr></table>

## centos上openssl实际操作

> * ubuntu和centos默认已经安装好了openssl,ssl证书目录默认在**/etc/pki/CA**和**/etc/pki/tls**下。
> * CA目录的存在意味着任何一台centos服务器都能做ca服务器（负责证书颁发和证书验证运作的服务器)。

### 修改CA相关的配置文件

> * 执行如下指令
```
vi /etc/pki/tls/openssl.cnf
```
> 显示内容如下：

```
...
[ CA_default ]

dir             = /etc/pki/CA           # Where everything is kept
certs           = $dir/certs            # Where the issued certs are kept
crl_dir         = $dir/crl              # Where the issued crl are kept
database        = $dir/index.txt        # database index file.
#unique_subject = no                    # Set to 'no' to allow creation of
                                        # several ctificates with same subject.
new_certs_dir   = $dir/newcerts         # default place for new certs.

certificate     = $dir/cacert.pem       # The CA certificate
serial          = $dir/serial           # The current serial number
crlnumber       = $dir/crlnumber        # the current crl number
                                        # must be commented out to leave a V1 CRL
crl             = $dir/crl.pem          # The current CRL
private_key     = $dir/private/cakey.pem # The private key
RANDFILE        = $dir/private/.rand    # private random number file
...
default_days    = 3650                  # how long to certify for
...
# For the CA policy，这里强调了提交证书数据信息的规范要求
[ policy_match ]
countryName             = match
stateOrProvinceName     = optional
localityName            = optional
organizationName        = optional
organizationalUnitName  = optional
commonName              = supplied
emailAddress            = optional
...
[ req_distinguished_name ]
countryName                     = Country Name (2 letter code)
countryName_default             = CN
countryName_min                 = 2
countryName_max                 = 2

stateOrProvinceName             = State or Province Name (full name)
stateOrProvinceName_default     = GD
...
[ req_distinguished_name ] 部分主要是颁证时一些默认的值，可以不动
```
### 生成CA服务器必须有的根证书
#### 生成公私密钥对并输出密钥文件
> 首先，任何CA服务方都得有一个自己的根证书用于为申请方颁发证书，即自己必须有公开的公钥，和保存妥当的密钥，用于验签。
> 如下指令生成本地/etc/pki/CA/private目录下生成名为cakey.pem的模数长度为2048的密钥文件当作**根证书**所用密钥。
<table><tr><td bgcolor=SpringGreen> 这里要注意：genrsa会同时产生公私钥，这里只是输出了密钥文件，后续随时可以利用该密钥文件得到对应的公钥文件。</td></tr></table>

```
 cd /etc/pki/CA/
 openssl genrsa -out private/cakey.pem 2048
```
#### 根据密钥文件生成根证书

> 这个根证书的密钥就是用来加签其他证书用的，公钥就是用来使用所颁发证书时验签该证书是来自本CA服务器时用的。
>  * 根据输入的cakey.pem密钥文件生成用x509标准加密的根证书文件cacert.pem。
>     * cacert.pem保存在/etc/pki/CA目录下
>     * 证书生成过程中会有多步交互过程，用来输入组织名称，地区信息等证书要求的数据规范(来自上面的openssl.cnf)

```
openssl req -new -x509 -key private/cakey.pem -out cacert.pem
```

### 模拟证书申请方申请证书

#### 生成公私钥对并输出密钥文件
> 这里还是完全同于先前的步骤，用来生成相应的密钥文件nigix.key,注意这里采用了.key格式的文件保存密钥，没所谓都一样。
> 注意，不同的保存目录/etc/ngix/ssl

```
 cd /etc/nginx/ssl
 openssl genrsa -out nginx.key 2048
```
#### 生成申请证书必须的请求文件
> 最终根据密钥文件nginx.key生成一个请求文件nginx.csr
> 这里同样会有多个交互过程，用来提交相应信息
>  <font color=Teal>关键的Common Name 一般为服务器的主机名或域名。</font>
```
 openssl req -new -key nginx.key -out nginx.csr
...
Country Name (2 letter code) [AU]:CN
State or Province Name (full name) [Some-State]:GD
Locality Name (eg, city) []:SZ
Organization Name (eg, company) [Internet Widgits Pty Ltd]:COMPANY
Organizational Unit Name (eg, section) []:IT_SECTION
Common Name (e.g. server FQDN or YOUR name) []:your.domain.com
Email Address []:

Please enter the following 'extra' attributes
to be sent with your certificate request
A challenge password []:
An optional company name []:
...
```

### CA服务器收到csr请求文件生成证书

> CA服务器收到CSR文件，会在本地执行如下指令来生成CRT文件，也就是证书文件并返回给申请方。
> 这里ca就是代表本地根证书啦，即用根证书和上传的csr文件共同生成nginx.crt证书文件。

```
openssl ca -in nginx.csr -out nginx.crt
```
> 万一**ca选项参数**不好用，用如下完整指令生成证书即可。

```
openssl x509 -req -in nginx.csr -CA /etc/pki/CA/cacert.pem -CAkey /etc/pki/CA/private/cakey.pem -CAcreateserial -out nginx.crt
```


<table><tr><td bgcolor=Tomato><font color=white>至此，我们已经完整获取了建立ssl所需要的所有密钥文件和证书文件</font></td></tr></table>
