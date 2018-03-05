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

* 其次WEB-INF目录必须在webapp目录下才能正确打成war包，结构图如下：
![webapp structure](images/webapp.jpg)

   * 必须的pom中build节点配置如下
```
<packaging>war</packaging>
<build>
       <finalName>dubbowrap</finalName>
       <resources>
           <resource>
               <directory>src/main/resources</directory>
               <filtering>true</filtering>
           </resource>
       </resources>
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
                           <outputDirectory>${project.build.directory}/${project.build.finalName}/WEB-INF/lib</outputDirectory>
                       </configuration>
                   </execution>
               </executions>
           </plugin>
           <plugin>
               <groupId>org.apache.maven.plugins</groupId>
               <artifactId>maven-war-plugin</artifactId>
               <version>2.4</version>
               <configuration>
                   <packagingExcludes>WEB-INF/lib/commons-logging-*.jar</packagingExcludes>
               </configuration>
           </plugin>
       </plugins>

   </build>
```
  * 该build/plugin/maven-war-plugin下的packagingExcludes节点害惨我了，折磨了一整天，如果不另外打包进来commons-loggin-1.2.jar之类的日志包进来，则resin直接报错丢失该类。此外spring系列引入组件中spring-webmvc/spring-web必须明确规定采用同一版本，否则，会出现奇奇怪怪的丢失类错误。
  * 还以就是dubbo pom中，的dubbo reference要记得version节点和check="false"节点配置别丢了，否则也会报错。
