### 官方网址

https://hc.apache.org/
* 当前最新稳定版是4.5(httpclient)/4.4(httpcore)/4.1(HttpAsyncClient)

#### HttpClient日志配置

一般记录于web容器的日志中

http://hc.apache.org/httpcomponents-client-ga/logging.html

#### 关于连接管理部分的官方文档

https://hc.apache.org/httpcomponents-client-4.5.x/tutorial/html/connmgmt.html

##### 关于KeepAlive

HTTP是一种无连接的事务协议，底层使用的还是TCP，连接池复用的就是TCP连接，目的就是在一个TCP连接上进行多次的HTTP请求从而提高性能。每次HTTP请求结束的时候，HttpClient会判断连接是否可以保持，如果可以则交给连接管理器进行管理以备下次重用，否则直接关闭连接。这里涉及到三个问题

* 如何判断连接是否可以保持

     * 要想保持连接，首先客户端需要告诉服务器希望保持长连接，这就是所谓的Keep-Alive模式（又称持久连接，连接重用），HTTP1.0中默认是关闭的，需要在HTTP头加入"Connection: Keep-Alive"，才能启用Keep-Alive；**<font color=Teal>HTTP1.1中默认启用Keep-Alive，加入"Connection: close "，才关闭</font>**。

     * 但客户端设置了Keep-Alive并不能保证连接就可以保持，这里情况比较复。要想在一个TCP上进行多次的HTTP会话，关键是如何判断一次HTTP会话结束了？非Keep-Alive模式下可以使用EOF（-1）来判断，但**Keep-Alive时服务器<font color=red>不会自动断开连接</font>**。

* 连接保持多长时间

    * 保持时间计时开始时间为连接交换至连接池的时间。 保持时长计算规则为：获取response中Keep-Alive字段中timeout值，若timeout存在，则保持时间为 timeout值*1000，单位**毫秒**。
    * 若不存在，则连接保持时间设置为-1，表示为无穷。

* 保持过程中如何确认连接还有效

    * 很难保证。传统阻塞I/O模型，只有当I/O有操做的时候（有数据通讯时），socket才能响应I/O事件。当TCP连接交给连接管理器后，它可能还处于“保持连接”的状态，但是无法监听socket状态和响应I/O事件。如果这时**<font color=red>服务器将连接关闭的话，客户端是没法知道这个状态变化的</font>**，从而也无法采取适当的手段来关闭连接。

    * 针对这种情况，HttpClient采取一个策略，**<font color=Teal>通过一个后台的监控线程定时的去检查连接池中连接是否还“新鲜”，如果过期了，或者空闲了一定时间则就将其从连接池里删除掉</font>**。ClientConnectionManager也提供了 closeExpiredConnections和closeIdleConnections两个方法。

### pom引用

如何引用请参考该页面的dependency management部分中的maven部分
https://hc.apache.org/httpcomponents-client-4.5.x/download.html

采用较新的apache httpclient组件包括：HttpClient,HttpCore,fluent-hc,httpmime但实际引用需要如下配置

```xml
<dependency>
  <groupId>org.apache.httpcomponents</groupId>
  <artifactId>httpclient</artifactId>
  <version>4.5.3</version>
</dependency>
<dependency>
  <groupId>org.apache.httpcomponents</groupId>
  <artifactId>fluent-hc</artifactId>
  <version>4.5.3</version>
</dependency>
<dependency>
  <groupId>org.apache.httpcomponents</groupId>
  <artifactId>httpclient-cache</artifactId>
  <version>4.5.3</version>
</dependency>
<dependency>
  <groupId>org.apache.httpcomponents</groupId>
  <artifactId>httpmime</artifactId>
  <version>4.5.3</version>
</dependency>

```

### 实例

#### 来自stackflow

https://stackoverflow.com/questions/32753257/how-to-check-weather-client-is-using-poolinghttpclientconnectionmanager-in-java

* 适用于Https连接

```java

    static PoolingHttpClientConnectionManager cm ;
    static CloseableHttpClient client;
    static
    {
        SslConfigurator sslConfig = SslConfigurator.newInstance()
                .securityProtocol("TLS")
                .keyStoreFile("/path")
                .keyStorePassword("passw")
                .keyStoreType("JKS")
                .trustStoreFile("/path");

        SSLContext sslCtx = sslConfig.createSSLContext();
        SSLConnectionSocketFactory sslSocketFactory = new SSLConnectionSocketFactory(sslCtx,NoopHostnameVerifier.INSTANCE);
        HttpClientContext clientContext = HttpClientContext.create();


        final Registry<ConnectionSocketFactory> registry = RegistryBuilder.<ConnectionSocketFactory> create()
                .register("http", PlainConnectionSocketFactory.getSocketFactory())
                .register("https", sslSocketFactory)
                .build();


        cm = new PoolingHttpClientConnectionManager(registry);
        // Increase max total connection to 200
        cm.setMaxTotal(200);
        // Increase default max connection per route to 20
        cm.setDefaultMaxPerRoute(200);
        // Increase max connections for localhost:80 to 50,针对某个服务器host单独设置最大连接数
        //HttpHost localhost = new HttpHost("locahost", 80);
        //cm.setMaxPerRoute(new HttpRoute(localhost), 50);

        client = HttpClients.custom()
                .setSSLSocketFactory(sslSocketFactory)
                .setConnectionManager(cm)
                .build();

    }

    public static void main(String a[]) throws ClientProtocolException, IOException, JSONException
    {
        JSONObject jsonResponse;

        StringEntity se = new StringEntity(jsonRequest.toString());

        HttpPost httpPost = new HttpPost(path);
        httpPost.setEntity(se);
        httpPost.setHeader("Accept", "application/json");
        httpPost.setHeader("Content-type", "application/json");
        httpPost.setHeader("Connection", "keep-alive");
        CloseableHttpResponse response2;
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss:SSS");

        int i;
        for(i=0;i<10;i++)
        {
          response2 = client.execute(httpPost);

          System.out.println(response2.getStatusLine());
          HttpEntity entity2 = response2.getEntity();

          String result = EntityUtils.toString(entity2);
          System.out.println(result);

          Date date = new Date();
          System.out.println(dateFormat.format(date));
          response2.close();
       }

    }
```

#### another sample from stackflow

```java

public class PooledCloseableHttpClient implements FactoryBean {

    @Autowired
    S3ClientUtil s3Client;

    // For TLS/SSL connectivity from this client to service
    @Value("${jks.filename}")
    String jksFile;

    // Password for Java keystores
    @Value("${keystore.password}")
    String keystorePassword;

    private int maxRetries = 2;
    //1 second
    @Value("${rest.call.request.retryInterval:1000}")
    private int retryInterval = 1000;

    @Value("${rest.call.request.keepAliveTime:60}")
    private int keepAliveTime = 60;

    @Value("${rest.call.request.maxConnection:200}")
    private int maxConnection = 200;

    @Value("${rest.call.request.maxConnectionsPerRoute:100}")
    private int maxConnectionsPerRoute = 100 ;

    SSLConnectionSocketFactory sslConnectionSocketFactory;

    // Custom Keep-Alive
    ConnectionKeepAliveStrategy keepAliveStrategy = (response, context) -> {
        HeaderElementIterator it = new BasicHeaderElementIterator
                (response.headerIterator(HTTP.CONN_KEEP_ALIVE));
        while (it.hasNext()) {
            HeaderElement he = it.nextElement();
            String param = he.getName();
            String value = he.getValue();
            if (value != null && param.equalsIgnoreCase
                    ("timeout")) {
                return Long.parseLong(value) * 1000;
            }
        }
        return keepAliveTime * 1000;
    };

    // Called once during initialization to get JKS file from Cloud
    private SSLContext buildSslContext() {
        try {
            // Get the JKS contents and then use the pooling connection manager below
            File keyStoreFile = s3Client.importKeystoreFile(jksFile);

            // Build key store from JKS file downloaded from S3
            final KeyStore keyStore = KeyStore.getInstance("JKS");
            InputStream is = null;
            try {
                is = new FileInputStream(keyStoreFile); // Get Keystore
                keyStore.load(is, keystorePassword.toCharArray()); //Get keystore password
            } finally {
                IOUtils.closeQuietly(is);
            }

            // Build SSL Context
            SSLContextBuilder sslBuilder = new SSLContextBuilder();
            sslBuilder.loadKeyMaterial(keyStore, keystorePassword.toCharArray());
            sslBuilder.loadTrustMaterial(keyStoreFile, keystorePassword.toCharArray());

            return sslBuilder.build();
        } catch (final GeneralSecurityException | IOException exc) {
            return null;
        }
    }

    @Override
    public Object getObject() throws Exception {

        //Build PoolingHttpClientConnectionManager
        PoolingHttpClientConnectionManager poolingConnectionManager = new PoolingHttpClientConnectionManager(
                RegistryBuilder.<ConnectionSocketFactory> create()
                        .register("https", new SSLConnectionSocketFactory(buildSslContext(), new NoopHostnameVerifier()))
                        .register("http", new PlainConnectionSocketFactory()).build())
            poolingConnectionManager.setMaxTotal(maxConnection);
            poolingConnectionManager.setDefaultMaxPerRoute(maxConnectionsPerRoute);

        // Build HttpClient
        HttpClientBuilder httpClientBuilder = HttpClients.custom().useSystemProperties().setConnectionManager(poolingConnectionManager)
                    .setKeepAliveStrategy(keepAliveStrategy)
                    .setSSLSocketFactory(sslConnectionSocketFactory)
                    .setConnectionReuseStrategy((arg0, arg1) -> true)
                    .setMaxConnTotal(maxConnection)
                    .setMaxConnPerRoute(maxConnectionsPerRoute)
                    .setServiceUnavailableRetryStrategy(new ServiceUnavailableRetryStrategy(maxRetries, retryInterval));
        return httpClientBuilder.build();
    }

    @Override
    public Class<?> getObjectType() {
        return CloseableHttpClient.class;
    }

    @Override
    public boolean isSingleton() {
        return true;
    }
}

```
#### 配置各种超时

```java

import org.apache.http.HttpEntity;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

/**
 * 使用httpclient-4.5.2发送请求，配置请求定制化参数
 * @author chmod400
 * 2016.3.28
 */
public class RequestConfigDemo {

    public static void main(String[] args) {
        try {
            String url = "http://www.baidu.com";
            /**
             *  请求参数配置
             *  connectionRequestTimeout:
             *                          从连接池中获取连接的超时时间，超过该时间未拿到可用连接，
             *                          会抛出org.apache.http.conn.ConnectionPoolTimeoutException: Timeout waiting for connection from pool
             *  connectTimeout:
             *                  连接上服务器(握手成功)的时间，超出该时间抛出connect timeout
             *  socketTimeout:
             *                  服务器返回数据(response)的时间，超过该时间抛出read timeout
             */
            CloseableHttpClient client = HttpClients.custom().setDefaultRequestConfig(RequestConfig.custom()
                    .setConnectionRequestTimeout(2000).setConnectTimeout(2000).setSocketTimeout(2000).build()).build();

            HttpPost post = new HttpPost(url);
//            HttpGet get = new HttpGet(url);

            CloseableHttpResponse response = client.execute(post);
//            CloseableHttpResponse response = client.execute(get);

            // 服务器返回码
            int status_code = response.getStatusLine().getStatusCode();
            System.out.println("status_code = " + status_code);

            // 服务器返回内容
            String respStr = null;
            HttpEntity entity = response.getEntity();
            if(entity != null) {
                respStr = EntityUtils.toString(entity, "UTF-8");
            }
            System.out.println("respStr = " + respStr);
            // 释放资源
            EntityUtils.consume(entity);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}


```

#### 较完整的针对Pooling各种配置

```java
/*
 * ====================================================================
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 * ====================================================================
 *
 * This software consists of voluntary contributions made by many
 * individuals on behalf of the Apache Software Foundation.  For more
 * information on the Apache Software Foundation, please see
 * <http://www.apache.org/>.
 *
 */

package org.apache.http.examples.client;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;

import javax.net.ssl.SSLContext;

import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.config.AuthSchemes;
import org.apache.http.client.config.CookieSpecs;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.MessageConstraints;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.config.SocketConfig;
import org.apache.http.conn.DnsResolver;
import org.apache.http.conn.HttpConnectionFactory;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.impl.DefaultHttpResponseFactory;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.impl.conn.DefaultHttpResponseParser;
import org.apache.http.impl.conn.DefaultHttpResponseParserFactory;
import org.apache.http.impl.conn.ManagedHttpClientConnectionFactory;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.impl.conn.SystemDefaultDnsResolver;
import org.apache.http.impl.io.DefaultHttpRequestWriterFactory;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.HttpMessageWriterFactory;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicLineParser;
import org.apache.http.message.LineParser;
import org.apache.http.ssl.SSLContexts;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.EntityUtils;

/**
 * This example demonstrates how to customize and configure the most common aspects
 * of HTTP request execution and connection management.
 */
public class ClientConfiguration {

    public final static void main(String[] args) throws Exception {

        // Use custom message parser / writer to customize the way HTTP
        // messages are parsed from and written out to the data stream.
        HttpMessageParserFactory<HttpResponse> responseParserFactory = new DefaultHttpResponseParserFactory() {

            @Override
            public HttpMessageParser<HttpResponse> create(
                SessionInputBuffer buffer, MessageConstraints constraints) {
                LineParser lineParser = new BasicLineParser() {

                    @Override
                    public Header parseHeader(final CharArrayBuffer buffer) {
                        try {
                            return super.parseHeader(buffer);
                        } catch (ParseException ex) {
                            return new BasicHeader(buffer.toString(), null);
                        }
                    }

                };
                return new DefaultHttpResponseParser(
                    buffer, lineParser, DefaultHttpResponseFactory.INSTANCE, constraints) {

                    @Override
                    protected boolean reject(final CharArrayBuffer line, int count) {
                        // try to ignore all garbage preceding a status line infinitely
                        return false;
                    }

                };
            }

        };
        HttpMessageWriterFactory<HttpRequest> requestWriterFactory = new DefaultHttpRequestWriterFactory();

        // Use a custom connection factory to customize the process of
        // initialization of outgoing HTTP connections. Beside standard connection
        // configuration parameters HTTP connection factory can define message
        // parser / writer routines to be employed by individual connections.
        HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> connFactory = new ManagedHttpClientConnectionFactory(
                requestWriterFactory, responseParserFactory);

        // Client HTTP connection objects when fully initialized can be bound to
        // an arbitrary network socket. The process of network socket initialization,
        // its connection to a remote address and binding to a local one is controlled
        // by a connection socket factory.

        // SSL context for secure connections can be created either based on
        // system or application specific properties.
        SSLContext sslcontext = SSLContexts.createSystemDefault();

        // Create a registry of custom connection socket factories for supported
        // protocol schemes.
        Registry<ConnectionSocketFactory> socketFactoryRegistry = RegistryBuilder.<ConnectionSocketFactory>create()
            .register("http", PlainConnectionSocketFactory.INSTANCE)
            .register("https", new SSLConnectionSocketFactory(sslcontext))
            .build();

        // Use custom DNS resolver to override the system DNS resolution.
        DnsResolver dnsResolver = new SystemDefaultDnsResolver() {

            @Override
            public InetAddress[] resolve(final String host) throws UnknownHostException {
                if (host.equalsIgnoreCase("myhost")) {
                    return new InetAddress[] { InetAddress.getByAddress(new byte[] {127, 0, 0, 1}) };
                } else {
                    return super.resolve(host);
                }
            }

        };

        // Create a connection manager with custom configuration.
        PoolingHttpClientConnectionManager connManager = new PoolingHttpClientConnectionManager(
                socketFactoryRegistry, connFactory, dnsResolver);

        // Create socket configuration
        SocketConfig socketConfig = SocketConfig.custom()
            .setTcpNoDelay(true)
            .build();
        // Configure the connection manager to use socket configuration either
        // by default or for a specific host.
        connManager.setDefaultSocketConfig(socketConfig);
        connManager.setSocketConfig(new HttpHost("somehost", 80), socketConfig);
        // Validate connections after 1 sec of inactivity
        connManager.setValidateAfterInactivity(1000);

        // Create message constraints
        MessageConstraints messageConstraints = MessageConstraints.custom()
            .setMaxHeaderCount(200)
            .setMaxLineLength(2000)
            .build();
        // Create connection configuration
        ConnectionConfig connectionConfig = ConnectionConfig.custom()
            .setMalformedInputAction(CodingErrorAction.IGNORE)
            .setUnmappableInputAction(CodingErrorAction.IGNORE)
            .setCharset(Consts.UTF_8)
            .setMessageConstraints(messageConstraints)
            .build();
        // Configure the connection manager to use connection configuration either
        // by default or for a specific host.
        connManager.setDefaultConnectionConfig(connectionConfig);
        connManager.setConnectionConfig(new HttpHost("somehost", 80), ConnectionConfig.DEFAULT);

        // Configure total max or per route limits for persistent connections
        // that can be kept in the pool or leased by the connection manager.
        connManager.setMaxTotal(100);
        connManager.setDefaultMaxPerRoute(10);
        connManager.setMaxPerRoute(new HttpRoute(new HttpHost("somehost", 80)), 20);

        // Use custom cookie store if necessary.
        CookieStore cookieStore = new BasicCookieStore();
        // Use custom credentials provider if necessary.
        CredentialsProvider credentialsProvider = new BasicCredentialsProvider();
        // Create global request configuration
        RequestConfig defaultRequestConfig = RequestConfig.custom()
            .setCookieSpec(CookieSpecs.DEFAULT)
            .setExpectContinueEnabled(true)
            .setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM, AuthSchemes.DIGEST))
            .setProxyPreferredAuthSchemes(Arrays.asList(AuthSchemes.BASIC))
            .build();

        // Create an HttpClient with the given custom dependencies and configuration.
        CloseableHttpClient httpclient = HttpClients.custom()
            .setConnectionManager(connManager)
            .setDefaultCookieStore(cookieStore)
            .setDefaultCredentialsProvider(credentialsProvider)
            .setProxy(new HttpHost("myproxy", 8080))
            .setDefaultRequestConfig(defaultRequestConfig)
            .build();

        try {
            HttpGet httpget = new HttpGet("http://httpbin.org/get");
            // Request configuration can be overridden at the request level.
            // They will take precedence over the one set at the client level.
            RequestConfig requestConfig = RequestConfig.copy(defaultRequestConfig)
                .setSocketTimeout(5000)
                .setConnectTimeout(5000)
                .setConnectionRequestTimeout(5000)
                .setProxy(new HttpHost("myotherproxy", 8080))
                .build();
            httpget.setConfig(requestConfig);

            // Execution context can be customized locally.
            HttpClientContext context = HttpClientContext.create();
            // Contextual attributes set the local context level will take
            // precedence over those set at the client level.
            context.setCookieStore(cookieStore);
            context.setCredentialsProvider(credentialsProvider);

            System.out.println("executing request " + httpget.getURI());
            CloseableHttpResponse response = httpclient.execute(httpget, context);
            try {
                System.out.println("----------------------------------------");
                System.out.println(response.getStatusLine());
                System.out.println(EntityUtils.toString(response.getEntity()));
                System.out.println("----------------------------------------");

                // Once the request has been executed the local context can
                // be used to examine updated state and various objects affected
                // by the request execution.

                // Last executed request
                context.getRequest();
                // Execution route
                context.getHttpRoute();
                // Target auth state
                context.getTargetAuthState();
                // Proxy auth state
                context.getTargetAuthState();
                // Cookie origin
                context.getCookieOrigin();
                // Cookie spec used
                context.getCookieSpec();
                // User security token
                context.getUserToken();

            } finally {
                response.close();
            }
        } finally {
            httpclient.close();
        }
    }

}


```

#### 官方建议的监控线程

用于清理连接池中可能作废的连接。
 * 采用了java特有的内部静态类实现(注意：静态类只能是内部嵌套类)

##### 为什么要static nested class

  * There is a static nested class, this [static nested] class **does not need an instance of the enclosing class** in order to be instantiated itself.

  * These classes [static nested ones] can access **only the static members of the enclosing class** [since it does not have any reference to instances of the enclosing class...]

  * 即不需要创建外围封装类就能创建内部静态类并能访问外围封装了的静态变量。
  * 还有就是有些类实例化对象比较大，然后如果运行时加载时耗费的资源和时长都比较多，静态类在运行前加载，所以在性能上会有提升吧。


```java

public class Test {
  class A { }
  static class B { }
  public static void main(String[] args) {
    /*will fail - compilation error, you need an instance of Test to instantiate A*/
    A a = new A();
    /*will compile successfully, not instance of Test is needed to instantiate B */
    B b = new B();
  }
}

```


##### 官方提供的监控示例程序


```java

public static class IdleConnectionMonitorThread extends Thread {

    private final HttpClientConnectionManager connMgr;
    private volatile boolean shutdown;

    public IdleConnectionMonitorThread(HttpClientConnectionManager connMgr) {
        super();
        this.connMgr = connMgr;
    }

    @Override
    public void run() {
        try {
            while (!shutdown) {
                synchronized (this) {
                    wait(5000);
                    // Close expired connections，二选一，要么这个，要么closeIdleConnections
                    //connMgr.closeExpiredConnections();
                    // Optionally, close connections
                    // that have been idle longer than 30 sec
                    connMgr.closeIdleConnections(30, TimeUnit.SECONDS);
                }
            }
        } catch (InterruptedException ex) {
            // terminate
        }
    }

    public void shutdown() {
        shutdown = true;
        synchronized (this) {
            notifyAll();
        }
    }

}

```
#### alipay demo

##### 相关pom设置

```xml

      <dependency>
           <groupId>org.apache.ws.security</groupId>
           <artifactId>wss4j</artifactId>
           <version>1.6.7</version>
       </dependency>
       <dependency>
           <groupId>org.apache.commons</groupId>
           <artifactId>commons-io</artifactId>
           <version>1.3.2</version>
       </dependency>

```

##### 代码实例

```java

/**
 * Alipay.com Inc.
 * Copyright (c) 2004-2017 All Rights Reserved.
 */
package com.alipay.supergw;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.IOUtils;
import org.apache.xml.security.signature.XMLSignature;
import org.apache.xml.security.transforms.Transforms;
import org.apache.xml.security.utils.Constants;
import org.apache.xml.security.utils.XMLUtils;
import org.junit.Before;
import org.junit.Test;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/**
 * 加签验签示例代码
 */
public class XMLSignDemoV01 {

    private static final String CHARSET            = "UTF-8";
    private static final String SIGN_ALGORITHM     = "SHA256withRSA";
    private static final String XML_ALGORITHM      = "http://www.w3.org/2001/04/xmldsig-more#rsa-sha256";
    private static final String REQUEST_TAG_NAME   = "request";
    private static final String RESPONSE_TAG_NAME  = "response";
    private static final String SIGNATURE_TAG_NAME = "Signature";

    /** 测试私钥 */
    private static final String TEST_PRIVATE_KEY   = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCw8qSIJSCE0qtziM4KvvHNOWp+sPAO5Xs1nMEWgCnyMvzOyzN4CdIKWKjHsnks4hA4vYAtCGSsjRk4awtayc6qxn8kFHPaazqEzqwiBCO34+weqN0wfvre7HZXquHtoVtede2vWt0t7UygvFNHtdoQPNPFOijewyRfBQ02iiMZvFlgYqjoZiAtZbW6jFTDQc50GbUsSnOLo3m7QBZZjf0tx5bHmkkg25+kgAYVKuNASlGrAgUp4GbMWECCiKpKPt3btdPSiDyZtUcF2RCNY1q6R5JHEooX/gUAEUJqlQuYaGSAu9NYzsI59Huhcva30oGS7P1Ztfx26m4ev/UHLh81AgMBAAECggEBAI+dMArLz1vePId15nz0Qv6k9hlDdGMyv9BgnJqthN3toiAY7nojxlTdZodGBHF4PWA/9bMXF9awYmLXBo02M8WJe5GGBA2ncARwVWb6Yx8SHwc3WObOeMDLvLUknWAn0SeWoUXsgo2PBt2CXDlckFMTe3Gc5aT/TxrL19CHRzvPuE8dRhjVcECPZFmezETJe7J7xZgEQZvnKmrGLYwVG31m5dd2SchG5UGy80cW8kHCbMjp3nXk2vrqa8ifooJzA91LJ2a+eTqf8vsVEl8mpvgqFeURGnrebvH66P24+SP5dTNMip3lLVj+845A9OtLSeJi+ANT7SQrjBtP0r3h+zUCgYEA2U2Kl09I0/9rQY+mGYFe82ttkvwf/b75msmYOkklq3ZZfuRZtZa+Fy1o3tYGjP2zbzPDHF2FYZvS4vNa9F2wTxexlCINcq3TdgI+ATV4Pqds4CC9WPq/MQqevOgXHQVqv2uq2sarTInKFQ0eB292ZzN5VphdLXFh/BgGEelGpa8CgYEA0HViWu0TpbytEsPib0bOWvlP9l9+/+OKQ21EFARX5lvYNeYcRtRl+m40drEr7NYPsHCBLjDk88IuBMMY9jpiAivgsCqBTjO0DFeEc6qFaKvDTOV5kwbha9I/NQWApaP94AHSKygUL/kn4YSJ0nx3qlJgP7c036xwad6CpSSq5lsCgYEAs0ZZtINgniX3ItuUOS6WW1ShzcXbzsgjvSPcRxnZzh+RrjJOIJYAtbZs8oq4VNFpm7Cko140kFayITKMM1aoAliV1JRTa+0krBMlfHHUhjwygqYAEMytt5P/afJAP10cuFfnWR7WbAqxgbSUtaWrlXDOBjcliDwmjohzWYuPEVkCgYBg36wthS80PlJP/igkfks3i9TVMdvbHusKGqUgiEQxEU2Q/rb1U49wqfZHkl5PWctAu4fM53v+q6anH+Nhyg/x4mIwfBBLP0vU0HcFKaGF2wyPl7S/1tq7OKGXCk+Wqnc4up/o3l9DTA50hxtlbeJOjKmd8o3nxEMZcAZWqIujMQKBgQCEdlItcNT7FFVYDHAg1oPQK9iC8coBa+cBxbFGsEH+co4J4qxhv0NnCarvnz5koptPrwn8iWWfnb4oU2/yottgURq4xUySAT/wxtYiEyBJAMRMXaNeiJxjYghNrmOjs3rUUMQBeHVZ4THkPGLkpp/ma96Bp9rjqvapf/qFsFZ3Hg==";

    /** 测试公钥 */
    private static final String TEST_PUB_KEY       = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsPKkiCUghNKrc4jOCr7xzTlqfrDwDuV7NZzBFoAp8jL8zsszeAnSCliox7J5LOIQOL2ALQhkrI0ZOGsLWsnOqsZ/JBRz2ms6hM6sIgQjt+PsHqjdMH763ux2V6rh7aFbXnXtr1rdLe1MoLxTR7XaEDzTxToo3sMkXwUNNoojGbxZYGKo6GYgLWW1uoxUw0HOdBm1LEpzi6N5u0AWWY39LceWx5pJINufpIAGFSrjQEpRqwIFKeBmzFhAgoiqSj7d27XT0og8mbVHBdkQjWNaukeSRxKKF/4FABFCapULmGhkgLvTWM7COfR7oXL2t9KBkuz9WbX8dupuHr/1By4fNQIDAQAB";

    /**
     * 网商银行线下环境公钥数据， 注意是-----BEGIN PUBLIC KEY----- 和 -----END PUBLIC KEY----- 中间的内容
     */
    private static final String MYBANK_PUB_KEY     = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDOb4B1dnwONcW0RoJMa0IOq3O6jiqnTGLUpxEw2xJg+c7wsb6DBy5CAoR0w2ZjZ/BjKxGIQ+DoDg3NsHJeyuEjNF0/Ro/R5xVpFC5z4cBVSC2/gddz4a1EoGDJewML/Iv0yIw7ylB86++h23nRd079c5S9RZXurBfnLW2Srhqk2QIDAQAB";

    @Before
    public void beforeTest() {
        org.apache.xml.security.Init.init();
    }

    @Test
    public void testSignAndVerify() throws Exception {

        PrivateKey privateKey = getPrivateKey(TEST_PRIVATE_KEY.getBytes());
        System.out.println(privateKey);
        String xmlSource = "<document><request><head><appid>2017060700000025</appid><function>ant.mybank.yulibao.accountopen.query</function><inputCharset>UTF-8</inputCharset><reqMsgId>e08d3570-af06-42ca-9486-6b553e4d76d5</reqMsgId><respTime>20170613124952</respTime><version>1.0.0</version></head><body><fundCode>001529</fundCode><isvOrgId>202210000000000001055</isvOrgId><merchantId>2088611330087634</merchantId></body></request></document>";
        String xmlWithSign = signRequestMessage(xmlSource, privateKey);
        System.out.println("XML message with sign: " + xmlWithSign);

        PublicKey publicKey = getPublicKey(TEST_PUB_KEY.getBytes());
        System.out.println(publicKey);
        System.out.println("Verify result: " + verifyXmlMessage(xmlWithSign, publicKey));
    }

    //@Test
    public void testVerifyMybank() throws Exception {
        String message = IOUtils.toString(new FileReader("/Users/FANSY/Downloads/响应报文.txt"));
        PublicKey publicKey = getPublicKey(MYBANK_PUB_KEY.getBytes());
        System.out.println(publicKey);
        System.out.println(verifyXmlMessage(message, publicKey));
    }

    /**
     * 读取公钥
     *
     * @param keyData 公钥数据， 注意是-----BEGIN PUBLIC KEY----- 和 -----END PUBLIC KEY----- 中间的内容
     * @return the public key
     * @throws GeneralSecurityException the general security exception
     */
    private static PublicKey getPublicKey(final byte[] keyData) throws Exception {

        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        byte[] encodedKey = Base64.decodeBase64(keyData);
        return keyFactory.generatePublic(new X509EncodedKeySpec(encodedKey));
    }

    /**
     * 读取私钥
     *
     * @param keyData 私钥数据
     * @return
     * @throws Exception
     */
    public static PrivateKey getPrivateKey(final byte[] keyData) throws Exception {

        byte[] encodedKey = Base64.decodeBase64(keyData);
        final PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(encodedKey);
        final KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        return keyFactory.generatePrivate(keySpec);
    }

    /**
     * 私钥签名请求报文
     *
     * @param requestMessage
     * @param privateKey
     * @return
     * @throws Exception
     */
    public static String signRequestMessage(String requestMessage, PrivateKey privateKey)
                                                                                         throws Exception {
        return signXmlMessage(requestMessage, REQUEST_TAG_NAME, privateKey);
    }

    /**
     * 私钥签名应答报文
     *
     * @param responseMessage
     * @param privateKey
     * @return
     * @throws Exception
     */
    public static String signResponseMessage(String responseMessage, PrivateKey privateKey)
                                                                                           throws Exception {
        return signXmlMessage(responseMessage, RESPONSE_TAG_NAME, privateKey);
    }

    /**
     * 私钥签名
     *
     * @param xmlMessageSource 待签名的XML
     * @param elementTagName
     * @param privateKey
     * @return
     * @throws Exception
     */
    public static String signXmlMessage(String xmlMessageSource, String elementTagName,
                                        PrivateKey privateKey) throws Exception {

        Document xmlDocument = getDocument(xmlMessageSource);
        XMLSignature xmlSignature = new XMLSignature(xmlDocument, xmlDocument.getDocumentURI(),
            XML_ALGORITHM);

        NodeList nodeList = xmlDocument.getElementsByTagName(elementTagName);
        if (nodeList == null || nodeList.getLength() != 1) {
            throw new Exception("Document element with tag name " + elementTagName + " not fount");
        }
        Node elementNode = nodeList.item(0);
        elementNode.getParentNode().appendChild(xmlSignature.getElement());

        Transforms transforms = new Transforms(xmlDocument);
        transforms.addTransform(Transforms.TRANSFORM_ENVELOPED_SIGNATURE);
        xmlSignature.addDocument("", transforms, Constants.ALGO_ID_DIGEST_SHA1);

        xmlSignature.sign(privateKey);

        ByteArrayOutputStream os = new ByteArrayOutputStream();
        XMLUtils.outputDOM(xmlDocument, os);
        return os.toString(CHARSET);
    }

    /**
     * 验证XML签名
     *
     * @param xmlMessage 带有签名的XML
     * @param publicKey 公钥
     *
     * @return 签名验证结果 boolean
     * @throws Exception the exception
     */
    public static boolean verifyXmlMessage(String xmlMessage, PublicKey publicKey) throws Exception {

        Document xmlDocument = getDocument(xmlMessage);
        NodeList signatureNodes = xmlDocument.getElementsByTagNameNS(Constants.SignatureSpecNS,
            SIGNATURE_TAG_NAME);
        if (signatureNodes == null || signatureNodes.getLength() != 1) {
            throw new Exception("Document element with tag name " + SIGNATURE_TAG_NAME
                                + " not fount");
        }
        Element signElement = (Element) signatureNodes.item(0);
        XMLSignature signature = new XMLSignature(signElement, "");
        return signature.checkSignatureValue(publicKey);
    }

    /**
     * 解析XML字符串
     *
     * @param xmlMessageSource
     * @return
     * @throws ParserConfigurationException
     * @throws SAXException
     * @throws IOException
     * @throws UnsupportedEncodingException
     */
    private static Document getDocument(String xmlMessageSource)
                                                                throws ParserConfigurationException,
                                                                SAXException, IOException,
                                                                UnsupportedEncodingException {

        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setNamespaceAware(true);
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document xmlDocument = builder.parse(new InputSource(new ByteArrayInputStream(
            xmlMessageSource.getBytes(CHARSET))));
        return xmlDocument;
    }

    /**
     * 对字符串进行签名
     *
     * @param source 待签名的数据
     * @param privateKey 私钥
     * @return Base64编码后的签名信息
     * @throws Exception
     */
    public static String sign(String source, PrivateKey privateKey) throws Exception {

        final Signature signatureChecker = Signature.getInstance(SIGN_ALGORITHM);
        signatureChecker.initSign(privateKey);
        signatureChecker.update(source.getBytes(CHARSET));
        return Base64.encodeBase64String(signatureChecker.sign());
    }

    /**
     * 对字符串进行验签
     *
     * @param source 待验签的数据
     * @param signature Base64编码后的签名信息
     * @param publicKey 公钥
     * @return
     * @throws Exception
     */
    public static boolean verify(String source, String signature, PublicKey publicKey)
                                                                                      throws Exception {
        final Signature signatureChecker = Signature.getInstance(SIGN_ALGORITHM);
        signatureChecker.initVerify(publicKey);
        signatureChecker.update(source.getBytes(CHARSET));
        return signatureChecker.verify(Base64.decodeBase64(signature));
    }
}

```
