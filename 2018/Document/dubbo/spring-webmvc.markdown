### 概述
* 比较详细记录一个简版web mvc网站开发的技术点。
### 处理流程
* 首先，都是遵循servlet容器标准
    * servlet都在WEB-INF/web.xml文件里进行配置
        * 每个路径url都可以匹配一个servlet
        * servlet必须搭配一个servlet-mapping节点，servlet-mapping指明了要处理的url匹配条件。
      ![how to set servlet](images/servlet-config.jpg)
        * 下面是web.xml的一个小模板
```xml
        <?xml version="1.0" encoding="UTF-8" ?>
        <web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee
                             http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd
                            " version="3.1">
              <servlet>
                  <servlet-name>simpledemo</servlet-name>
                  <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
                  <load-on-startup>1</load-on-startup>
              </servlet>
              <servlet-mapping>
                  <servlet-name>simpledemo</servlet-name>
                  <url-pattern>/</url-pattern>
              </servlet-mapping>
        </web-app>
```
   * web.xml中的另外三个不可缺少的标准配置:日志配置，配置文件配置和字符编码配置
```
<context-param>
        <param-name>logbackConfigLocation</param-name>
        <param-value>/WEB-INF/classes/logback.xml</param-value>
    </context-param>
    <listener>
        <listener-class>ch.qos.logback.ext.spring.web.LogbackConfigListener</listener-class>
    </listener>

    <context-param>
        <param-name>contextConfigLocation</param-name>
        <param-value>/WEB-INF/applicationContext.xml</param-value>
    </context-param>
    <listener>
        <listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>
    </listener>
    <listener>
        <listener-class>org.springframework.web.context.request.RequestContextListener</listener-class>
    </listener>

    <filter>
        <filter-name>UTF-8 Character Encoding</filter-name>
        <filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>
        <init-param>
            <param-name>encoding</param-name>
            <param-value>utf-8</param-value>
        </init-param>
    </filter>
    <filter-mapping>
        <filter-name>UTF-8 Character Encoding</filter-name>
        <url-pattern>/*</url-pattern>
    </filter-mapping>
```
