## 概述

> * 本文档记录简版复刻交易模块项目。
> * 容器部分不再考虑resin,就专心搞tomcat+nignx的组合就好了，毕竟免费，可考虑后续做个resin/tomcat的压测对比。
### 版本设置

> * 在工程的根目录pom中的properties节点中进行统一管理。

```xml
  <properties>
       <org.spring.version>4.1.5.RELEASE</org.spring.version>
       <jedis.version>2.4.2</jedis.version>
       <javax.servlet.version>3.1.0</javax.servlet.version>
       <logback.version>1.1.2</logback.version>
       <war.filename>frontserver</war.filename>
   </properties>
```

### 搭建基于spring mvc之web-app框架

#### pom设置
##### spring mvc最小依赖

>  * 即一个是容其标准接口定义，一个是实现了该容器的spring-webmvc，这就完整凑齐了一个spring mvc所需的所有依赖组件
>  * 此后就是，创建好相应的WEB-INF目录并在该目录下**配置web.xml文件和相应的sevlet文件（一个url规则对应一个处理的servlet）**即可完成完整的搭建。
>  * 会自动将相应的spring web所需要的所有相关spring组件引入

```xml
           <dependency>
               <groupId>javax.servlet</groupId>
               <artifactId>javax.servlet-api</artifactId>
               <version>${javax.servlet.version}</version>
           </dependency>
           <dependency>
               <groupId>org.springframework</groupId>
               <artifactId>spring-webmvc</artifactId>
               <version>${org.spring.version}</version>
           </dependency>
```

##### log日志最小依赖

> * 自动会将依赖的slf4j-api,logback-core和commons-logging引入
> * 配置**logback.xml**必须放在工程的resources目录下即可，这样才默认打包到classes目录下被classpath找到。
> * logack.xml中的file万无一失请**使用绝对路径**。
>     * windows举例: d:/default/logs/default.log
>     * linux举例: /data/logs/default.log

```
      <dependency>
           <groupId>ch.qos.logback</groupId>
           <artifactId>logback-classic</artifactId>
           <version>${logback.version}</version>
       </dependency>
```

相应的logback.xml配置示例

> * [logback的配置和java应用示例文档](some-tool-in-javaproject.markdown),请查看logback部分即可。

#### web.xml配置

> * 本例中的qixunwebmvc的servlet分发器由org.springframework.web.servlet.DispatcherServlet负责。
> * <font color=blue>qixunwebmvc的servlet对应处理的url是/，代表处理所有的http访问</font>。

```xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xmlns="http://xmlns.jcp.org/xml/ns/javaee"
          xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee
                            http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd"
          version="3.1"
>
    <display-name>qixunpay.frontserver</display-name>

    <!--每个http路径都对应一个处理的servlet实例，在servlet-class里定义-->
    <servlet>
        <servlet-name>qixunwebmvc</servlet-name>
        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
        <load-on-startup>1</load-on-startup>
    </servlet>
    <servlet-mapping>
        <servlet-name>qixunwebmvc</servlet-name>
        <url-pattern>/</url-pattern>
    </servlet-mapping>
    <welcome-file-list>
        <welcome-file>index</welcome-file>
    </welcome-file-list>

</web-app>
```
##### qixunwebmvc-servlet.xml的servlet配置

> *  <font color=Teal>每个servlet节点对应一个somename-servlet.xml文件，其中**somename为servlet的name**</font>，本例中为qixunwebmvc。

```xml
<?xml version="1.0" encoding="utf-8" ?>
<beans xmlns="http://www.springframework.org/schema/beans"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xmlns:p="http://www.springframework.org/schema/p"
        xmlns:context="http://www.springframework.org/schema/context"
        xmlns:mvc="http://www.springframework.org/schema/mvc"
        xsi:schemaLocation="http://www.springframework.org/schema/beans
          http://www.springframework.org/schema/beans/spring-beans.xsd
          http://www.springframework.org/schema/context
          http://www.springframework.org/schema/context/spring-context.xsd
          http://www.springframework.org/schema/mvc
          http://www.springframework.org/schema/mvc/spring-mvc.xsd">
    <!--自动注册组件-->
    <mvc:annotation-driven/>
    <!--扫描通过注释配置的类,只负责扫描，注册由上面mvc:annotation-driven节点负责-->
    <context:component-scan base-package="com.qixunpay.frontserver.web.controller">
        <!--设置此节点，则只扫描@Controller注释的类-->
        <context:include-filter type="annotation" expression="org.springframework.stereotype.Controller"/>
    </context:component-scan>

</beans>
```

##### 对应的controller

>  * Model类里包含返回的业务数据
>  * return "go.jsp"代表将Model数据丢给go.jsp去处理
>  * @RequestMapping负责将url和具体处理类映射起来。

```java
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangdalin on 2017/5/27 9:37.
 */

@Controller
public class IndexController {

    @RequestMapping(value={"/"},method = {RequestMethod.HEAD})
    public String head(){

        return "go.jsp";
    }

    @RequestMapping(value={"/index","/"},method = {RequestMethod.GET})
    public String index(Model model) throws Exception{
        model.addAttribute("msg","无语的2017");
        return "go.jsp";
    }
}
```

##### go.jsp + model 组装返回页面

> * ${msg}变量就是model.addAttribute("msg","无语的2017")里设置的msg变量。

```jsp
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>let's Go</title>
</head>
<body>${msg}</body>
</html>
```
