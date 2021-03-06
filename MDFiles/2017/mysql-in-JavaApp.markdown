#### 关于jndi

>使用JNDI是为了数据库资源的管理，在**容器**中配置一个数据库连接池，使用JNDI来管理这样容器中运行多个服务的时候，每个服务只需添加一个jndi的名称就可以连接到数据库了

 如果不使用jndi的方式，直接在项目中配置数据库连接池，那么每个项目需要配置一次，如果更改数据库地址时，每个项目的数据库连接方式都要更改，比较麻烦,使用jndi的话，直接更改一下jndi里面的数据库连接池的配置就可以了，方便一些。

#### c3p0连接池

 * 这是一个得到广泛应用的**JDBC with jndi config**连接池管理工具，较详细的文档地址请点击 [c3p0文档](http://www.mchange.com/projects/c3p0/)
 * 源码已经放到了github上维护，请点击[c3p0源码](https://github.com/swaldman/c3p0)
 * 官方的引用很简单，将lib/<font color=blue>c3p0-0.9.5.2.jar</font>和lib/<font color=blue>mchange-commons-0.2.11.jar</font>放到项目classpath可找到地址即可。

#### c3p0引入pom文件设置

 * [c3p0 pom设置](https://gist.github.com/herotony/3e8f37fa11b2e17c615a5f6309eb8e15/#file-pom-xml)

#### c3p0应用举例

 * 直接代码中实例化[(gist拷贝地址)](https://gist.github.com/herotony/3e8f37fa11b2e17c615a5f6309eb8e15/#file-c3p0-pool-java)

    ```java
    ComboPooledDataSource cpds = new ComboPooledDataSource();
    cpds.setDriverClass( "com.mysql.jdbc.Driver" ); //loads the jdbc driver
    cpds.setJdbcUrl( "jdbc:mysql://10.8.210.34:3306/mdorder?useUnicode=true&amp;characterEncoding=utf-8&amp;zeroDateTimeBehavior=convertToNull" );
    cpds.setUser("deployment");
    cpds.setPassword("123456");

    // the settings below are optional -- c3p0 can work with defaults
    cpds.setMinPoolSize(5);
    cpds.setAcquireIncrement(5);
    cpds.setMaxPoolSize(20);

    ```

 * 在spring的框架中配置[(gist拷贝地址)](https://gist.github.com/herotony/3e8f37fa11b2e17c615a5f6309eb8e15/#file-c3p0-in-spring-xml-xml)

    ```xml

    <bean id="writeDataSource" class="com.mchange.v2.c3p0.ComboPooledDataSource">
        <property name="driverClass">
            <value>com.mysql.jdbc.Driver</value>
        </property>
        <property name="jdbcUrl">
            <value>jdbc:mysql://10.8.210.34:3306/mdorder?useUnicode=true&amp;characterEncoding=utf-8&amp;zeroDateTimeBehavior=convertToNull</value>
        </property>
        <property name="user">
            <value>deployment</value>
        </property>
        <property name="password">
            <value>123456</value>
        </property>
      </bean>

    ```

  本文关于**c3p0的部分**暂时停止，项目中对c3p0的应用仅限于测试单元和notifyserver项目，产品线上则采用了mysql自带的connection pool。

#### 关于主站ServiceTemplate模块

> 这部分是主站业务数据库层面的统一处理模板，比较合理，但不够灵活，比如，只能有一个从库。

##### ServiceTemplate接口定义

```java
    public interface ServiceTemplate {

    	/**
    	 * 在事务中执行（主库）
    	 * @param action
    	 * @return
    	 */
    	public <T> CallResult<T> exeInTransaction(TemplateAction<T> action);

    	/**
    	 * 在主库执行
    	 * @param action
    	 * @return
    	 */
    	public <T> CallResult<T> exeOnMaster(TemplateAction<T> action);

    	/**
    	 * 在从库执行
    	 * @param action
    	 * @return
    	 */
    	public <T> CallResult<T> exeOnSlave(TemplateAction<T> action);

    }

```

##### ServiceTemplateImpl实现类

* 一个是通过DataSourceContextHolder.setSourceType来设定主从库。
* 一个是通过setTransactionTemplate来传入控制事务处理的模板实例。
* 待续...

```java

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

import com.qixun.core.common.datasource.DataSourceContextHolder;
import com.qixun.core.common.datasource.msloadbalancer.MSDataSourceType;

/**
 * 服务模板实现
 */

public class ServiceTemplateImpl implements ServiceTemplate {

	private static final Log logger = LogFactory.getLog(ServiceTemplateImpl.class);
	//spring的事务模板
	protected TransactionTemplate transactionTemplate;

	@Override
	@SuppressWarnings("unchecked")
	public <T> CallResult<T> exeInTransaction(final TemplateAction<T> action) {
		try{
			//主库
			DataSourceContextHolder.setDataSourceType(MSDataSourceType.MASTER);
			//参数校验
			CallResult<T> callResult = action.checkParam();
			if(callResult==null){
				logger.warn("exeInTransaction: Null result while checkParam");
				return CallResult.failure("Null result while checkParam!");
			}
			if(!callResult.isSuccess()){
				return callResult;
			}
			//业务校验
			callResult = action.checkBiz();
			if(callResult==null){
				logger.warn("exeInTransaction: Null result while checkBiz");
				return CallResult.failure("Null result while checkBiz!");
			}
			if(!callResult.isSuccess()){
				return callResult;
			}
			//在事务中执行
			callResult = (CallResult<T>)this.transactionTemplate.execute(new TransactionCallback(){
				@Override
				public Object doInTransaction(TransactionStatus status) {
					CallResult<T> callResult = action.doAction();
					if(callResult==null){
						logger.warn("exeInTransaction: Null result while doAction");
						callResult = CallResult.failure("Null result while doAction!");
					}
					if(!callResult.isSuccess()){
						status.setRollbackOnly();	//明确设置回滚
					}
					return callResult;
				}
			});
			//执行成功后的扫尾工作
			if(callResult.isSuccess()){
				action.finishUp(callResult);
			}
			return callResult;
		}catch(Exception e){
			logger.error("Error while exeInTransaction!", e);
			return CallResult.failure("Error while exeInTransaction! msg="+e.getMessage());
		}
	}

	@Override
	public <T> CallResult<T> exeOnMaster(TemplateAction<T> action) {
		try{
			//主库
			DataSourceContextHolder.setDataSourceType(MSDataSourceType.MASTER);
			//参数校验
			CallResult<T> callResult = action.checkParam();
			if(callResult==null){
				logger.warn("exeOnMaster: Null result while checkParam");
				return CallResult.failure("Null result while checkParam!");
			}
			if(!callResult.isSuccess()){
				return callResult;
			}
			//执行
			callResult = action.doAction();
			if(callResult==null){
				logger.warn("exeOnMaster: Null result while doAction");
				return CallResult.failure("Null result while doAction!");
			}
			if(!callResult.isSuccess()){
				return callResult;
			}
			//执行成功后的扫尾工作
			if(callResult.isSuccess()){
				action.finishUp(callResult);
			}
			return callResult;
		}catch(Exception e){
			logger.error("Error while exeOnMaster!", e);
			return CallResult.failure("Error while exeOnMaster! msg="+e.getMessage());
		}
	}

	@Override
	public <T> CallResult<T> exeOnSlave(TemplateAction<T> action) {
		try{
			//从库
			DataSourceContextHolder.setDataSourceType(MSDataSourceType.SALVE_1);
			//参数校验
			CallResult<T> callResult = action.checkParam();
			if(callResult==null){
				logger.warn("exeOnSlave: Null result while checkParam");
				return CallResult.failure("Null result while checkParam!");
			}
			if(!callResult.isSuccess()){
				return callResult;
			}
			//执行
			callResult = action.doAction();
			if(callResult==null){
				logger.warn("exeOnSlave: Null result while doAction");
				return CallResult.failure("Null result while doAction!");
			}
			if(!callResult.isSuccess()){
				return callResult;
			}
			//执行成功后的扫尾工作
			if(callResult.isSuccess()){
				action.finishUp(callResult);
			}
			return callResult;
		}catch(Exception e){
			logger.error("Error while exeOnSlave!", e);
			return CallResult.failure("Error while exeOnSlave! msg="+e.getMessage());
		}
	}

	public void setTransactionTemplate(TransactionTemplate transactionTemplate) {
		this.transactionTemplate = transactionTemplate;
	}

}
```

##### BaseDO

```java
  public abstract class QiXunBaseDO implements Serializable {

      /**
       * @return
       *
       * @see java.lang.Object#toString()
       */
      public String toString() {
          try {
              return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
          } catch (Exception e) {
              // NOTICE: 这样做的目的是"避免由于toString()的异常导致系统异常终止"
              // 因为:大部分情况下，toString()用在日志输出等调试场景,难免有时会触发异常
              return super.toString();
          }
      }
  }
```

##### CallResult

```java
  import com.tuan.core.common.lang.QiXunBaseDO;

  /**
   * 结果对象
   * （既作为“服务模板返回的结果对象”，也可以作为“接口返回给调用方的最终结果对象”）

   */

  public class CallResult<T> extends QiXunBaseDO{
  	private static final long serialVersionUID = -4361282531440085439L;
  	public static final int CODE_FAILURE = -1;
  	public static final int CODE_SUCCESS = 1;

  	private final boolean success;//操作是否成功
  	private final int code;	//错误码
  	private final String msg;	//消息
  	private final T resultObject;	//业务对象

  	private String stringValue;	//toString的懒加载缓存（无需强制voletile）

  	public CallResult(boolean isSuccess, int code, String msg, T resultObject){
  		this.success = isSuccess;
  		this.code = code;
  		this.msg = msg;
  		this.resultObject = resultObject;
  	}

  	/* ----------------------------- 常用的工具方法 ------------------------------- */

  	/**
  	 * 成功
  	 * @return
  	 */
  	public static <T> CallResult<T> success(){
  		return new CallResult<T>(true,CODE_SUCCESS,"default success",null);
  	}

  	/**
  	 * 成功，指定业务业务对象
  	 * @param resultObject
  	 * @return
  	 */
  	public static <T> CallResult<T> success(T resultObject){
  		return new CallResult<T>(true,CODE_SUCCESS,"default success",resultObject);
  	}

  	/**
  	 * 成功，指定结果码、结果消息，业务对象
  	 * @param code
  	 * @param msg
  	 * @param resultObject
  	 * @return
  	 */
  	public static <T> CallResult<T> success(int code, String msg, T resultObject){
  		return new CallResult<T>(true,code,msg,resultObject);
  	}

  	/**
  	 * 失败
  	 * @return
  	 */
  	public static <T> CallResult<T> failure(){
  		return new CallResult<T>(false,CODE_FAILURE,"default failure",null);
  	}

  	/**
  	 * 失败，指定消息
  	 * @return
  	 */
  	public static <T> CallResult<T> failure(String msg){
  		return new CallResult<T>(false,CODE_FAILURE,msg,null);
  	}

  	/**
  	 * 失败，指定结果码和消息
  	 * @author WangChao
  	 * @param code
  	 * @param msg
  	 * @return
  	 */
  	public static <T> CallResult<T> failure(int code, String msg){
  		return new CallResult<T>(false,code,msg,null);
  	}

  	@Override
  	public String toString(){
  		String result = stringValue;
  		if(result != null){
  			return result;
  		}
  		result = new StringBuilder()
  			.append('{')
  			.append("\"success\":").append(success).append(',')
  			.append("\"code\":").append(code).append(',')
  			.append("\"msg\":\"").append(msg).append("\",")
  			.append("\"resultObject\":").append(resultObject)
  			.append('}')
  			.toString();
  		stringValue = result;
  		return result;
  	}

  	/* -----------------------------getters&setters------------------------------- */

  	/**
  	 * 判断是否拿到了结果数据
  	 * @author WangChao
  	 * @return
  	 */
  	public boolean hasData(){
  		return resultObject!=null;
  	}

  	public boolean isSuccess() {
  		return success;
  	}

  	public int getCode() {
  		return code;
  	}

  	public String getMsg() {
  		return msg;
  	}

  	public T getResultObject() {
  		return resultObject;
  	}
  }
```
##### TemplateAction

```java
  /**
   * 模板动作接口
   */
  public interface TemplateAction<T> {

  	/**
  	 * 参数校验
  	 * @return
  	 */
  	public CallResult<T> checkParam();

  	/**
  	 * 业务校验
  	 * @return
  	 */
  	public CallResult<T> checkBiz();

  	/**
  	 * 执行动作
  	 * @return
  	 */
  	public CallResult<T> doAction();

  	/**
  	 * 扫尾工作
  	 * @param callResult
  	 */
  	public void finishUp(CallResult<T> callResult);

  }
```
##### MultipleRoutingDataSource

* 请参考ServiceTemplateImpl类中DataSourceContextHolder的使用场景来加深理解。

```java
  import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

  /**
   * 类说明,采用spring的jdbc框架来选择数据源
   * 关键点是：DataSourceContextHolder类的使用！
   */
  public class MultipleRoutingDataSource extends AbstractRoutingDataSource {


  	protected Object determineCurrentLookupKey() {

  		return DataSourceContextHolder.getDataSourceType();
  	}


  }
```
##### About MyBatis

* 这里讨论如何将myBatis集成到该框架内以达成需要支持数据库的业务需求。
* Spring中的bean xml配置部分
    * 数据源部分
      ```xml
      <bean id="writeDataSource" class="org.springframework.jndi.JndiObjectFactoryBean">
          <property name="jndiName">
              <value>${dataSource.jndi.master}</value>
          </property>
      </bean>
      <bean id="readDataSource" class="org.springframework.jndi.JndiObjectFactoryBean">
          <property name="jndiName">
              <value>${dataSource.jndi.slave_1}</value>
          </property>
      </bean>

      <bean id="dataSource" class="com.QiXun.core.common.datasource.MultipleRoutingDataSource">
          <property name="targetDataSources">
              <map>
                  <entry key="master" value-ref="writeDataSource"/>
                  <entry key="slave_1" value-ref="readDataSource"/>
              </map>
          </property>
      </bean>
      ```
    * 容器里的jndi配置，这是java标准做法，如下举例的是mysql在resin.xml里的配置示例

    ```xml

    <tuan-password:MysqlPassword xmlns:tuan-password="urn:java:com.tuan.resin" xmlns:ee="urn:java:ee">
    <ee:Named>mysqlPasswordGener</ee:Named>
    </tuan-password:MysqlPassword>
      <database>
          <jndi-name>java:comp/env/jdbc/master</jndi-name>
          <driver type="com.mysql.jdbc.Driver">
              <url>jdbc:mysql://shdb-user.mysql.rds.aliyuncs.com:3306/mdpay?useUnicode=true&amp;characterEncoding=gbk&amp;zeroDateTimeBehavior=convertToNull</url>
              <user>mdpayer</user>
              <password>${mysqlPasswordGener.findPassword("d40d19a0c4aa041a8bc3b5a35a967aafb15ac72231377dc70423a4f532")}</password>
          </driver>
          <prepared-statement-cache-size>8</prepared-statement-cache-size>
          <max-connections>30</max-connections>
          <max-idle-time>30s</max-idle-time>
          <connection-wait-time>30000</connection-wait-time>
          <transaction-timeout>30000</transaction-timeout>
          <ping>true</ping>
          <ping-table>dual</ping-table>
          <ping-interval>1s</ping-interval>
      </database>

    ```

    * 业务查询语句部分

      ```xml
      <configuration>
          <settings>
              <setting name="cacheEnabled" value="true"/>
              <setting name="lazyLoadingEnabled" value="false"/>
              <setting name="defaultStatementTimeout" value="30"/>
          </settings>

          <mappers>
              <mapper resource="mybatis/sqlmap/mdpaygate-refund-mapper.xml"/>
              <mapper resource="mybatis/sqlmap/mdpaygate-refund-log-mapper.xml"/>
              <mapper resource="mybatis/sqlmap/mdpaygate-trade-pay-mapper.xml"/>
              <mapper resource="mybatis/sqlmap/mdpaygate-trade-pay-info-mapper.xml"/>
              <mapper resource="mybatis/sqlmap/mdpaygate-trade-pay-log-mapper.xml"/>
              <mapper resource="mybatis/sqlmap/mdpaygate-queue-mapper.xml"/>
              <mapper resource="mybatis/sqlmap/mdpaygate-queue-info-mapper.xml"/>
              <mapper resource="mybatis/sqlmap/mdpaygate-queue-bak-mapper.xml"/>
              <mapper resource="mybatis/sqlmap/mdpaygate-order-info-mapper.xml"/>
              <mapper resource="mybatis/sqlmap/mdpaygate-paygate-conf-mapper.xml"/>
          </mappers>
      </configuration>
      ```
        * 具体某个mapper配置，涉及具体业务，上面的是整个业务配置入口，关键是<font color=blue>settings节点</font>配置是适用于所有mapper映射的业务

        ```xml
        <?xml version="1.0" encoding="UTF-8"?>
        <!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        								"http://mybatis.org/dtd/mybatis-3-mapper.dtd">
        <mapper namespace="honor" >
          <resultMap id="QueueInfoDO" type="com.wowo.mdpaygate.dao.data.QueueInfoDO" >
        	<result column="queue_id" property="queueID" jdbcType="BIGINT" />
        	<result column="json_data" property="jsonData" jdbcType="LONGVARCHAR" />
          </resultMap>

          <insert id="createQueueInfo" parameterType="com.wowo.mdpaygate.dao.data.QueueInfoDO">
             insert into md_pay_queue_info
              	(`queue_id`,`json_data`)
              		values
               (#{queueID,jdbcType=BIGINT},#{jsonData,jdbcType=LONGVARCHAR})
          </insert>

          <sql id="selQueueInfo">
        	select
        	  `queue_id`,
        	  `json_data`
        	from md_pay_queue_info
          </sql>

          <select id="getQueueInfoById" resultMap="QueueInfoDO" parameterType="long" >
            <include refid="selQueueInfo"/>
           <![CDATA[
                where queue_id = #{queueID,jdbcType=BIGINT}
            ]]>
          </select>
          <select id="findQueueInfoListByIds" resultMap="QueueInfoDO" parameterType="String" >
            <include refid="selQueueInfo"/>
               where queue_id in
               <foreach item="item" index="index" collection="list"
              		open="(" separator="," close=")">
                	#{item}
          	   </foreach>
          </select>
          <delete id="deleteQueueInfo" parameterType="java.util.List">
        	 delete from md_pay_queue_info where queue_id in
        	<foreach item="item" index="index" collection="list" open="(" separator="," close=")">
        		#{item}
        	</foreach>
        	</delete>
        </mapper>

        ```

    * 整合数据源和业务查询两部分

      ```xml
      <bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
              <property name="dataSource" ref="dataSource"/>
              <property name="configLocation" value="classpath:mybatis/mdpaygate-root.xml"/>
      </bean>
      ```
* Java代码示例部分,上面是在Spring框架中的配置，分为两部分，一部分是如何连接数据源，另一部分才是业务模块。
    * 业务逻辑层应用，具体业务类必须<font color=green>extends SqlSessionDaoSupport</font>才能利用<font color=blue>getSqlSession()</font>提取到数据源进行相应的insert,update,delete等操作，对应了myBatis的mapper xml配置中的insert,select等节点，<font color=GoldenRod>一般是dao层（所谓dao包下）定义各个表对应的类，比如下面的就是orderinfo表对应的OrderInfoDAOImpl类下的各种操作</font>。

    ```java

      public class OrderInfoDAOImpl extends SqlSessionDaoSupport implements OrderInfoDAO {
      @Override
      public List<OrderInfoDO> queryNoPayOrder() {
          return getSqlSession().selectList("queryNoPayOrder");
      }

      @Override
      public List<OrderInfoDO> queryNoPayOrderByAutoBudan() {
          return getSqlSession().selectList("queryNoPayOrderByAutoBudan");
      }

      @Override
      public boolean updateOrderInfoByBudan(String orderId) {
          Map<String, Object> param = new HashMap<String, Object>();
          param.put("order_id", orderId);
          return getSqlSession().update("updateOrderInfoByBudan", param) == 1;
      }

      @Override
      public boolean addOrUpdateRemedyOrderInfo(OrderInfoDO orderInfoDO){

          Map<String,Object> param = new HashMap<>();

          param.put("order_id",orderInfoDO.getOrderId());
          param.put("add_time",orderInfoDO.getAddTime());
          param.put("last_remedy_time",System.currentTimeMillis());

          return getSqlSession().insert("addOrUpdateRemedyOrderInfo",param) >0;
      }

      @Override
      public OrderInfoDO queryOrderInfoByOrderId(String orderId){

          Map<String,Object> param = new HashMap<>();
          param.put("order_id",orderId);

          return getSqlSession().selectOne("queryOrderInfoByOrderId",param);
      }
    }

    ```

    * 数据源的选择，则在ServiceTemplateImpl中的某个方法中以<font color=Teal>DataSourceContextHolder.setDataSourceType(MSDataSourceType.MASTER)</font>的形式来指定,但你选择了**exeInTransaction,exeOnMaster,exeOnSlave**的方法时，已经确定了要使用的是主库还是从库了，这完全来源于前面数据源xml配置中datasource的bean配置，该配置设定了支持的数据源有master,slave_1，该datasource类(MultipleRoutingDataSource)继承自<font color=Teal>spring jdbc架构的AbstractRoutingDataSource类</font>，只是重写了<font color=Teal>determineCurrentLookupKey方法</font>，在该方法里用了自定义的静态类DataSourceContextHolder来设定选择数据源。

    ```java

    @Override
  	public CallResult<?> backQueue(final int consumerStatus, final int consumerStartTime, final int consumerEndTime,
  			final Map<String, Object> otherParams) throws TuanRuntimeException
  	{
  		return serviceTemplate.exeInTransaction(new TemplateAction<Integer>()
  		{
  			@Override
  			public CallResult<Integer> doAction()
  			{
  				// 查询数据/
  				List<QueueDomain> queueDomainList = queueDomainRepository.findQueueByParams(consumerStatus,
  						consumerStartTime, consumerEndTime, otherParams);
  				if (queueDomainList == null || queueDomainList.size() == 0) { return CallResult
  						.failure(BACKUP_QUEUE_DB_NO_DATA, "findQueueByParams find no data"); }
  				// 保存备份数据
  				queueDomainRepository.batchStoreQueueBackDomains(queueDomainList);
  				// 删除备份数据
  				queueDomainRepository.batchDeleteDomains(queueDomainList);
  				return CallResult.success(BACKUP_QUEUE_SUCCESS);
  			}

  			@Override
  			public CallResult<Integer> checkParam()
  			{
  				if (consumerStatus < 0) { return CallResult.failure(BACKUP_QUEUE_PARAM_INVALID, "consumerStatus<0"); }
  				return CallResult.success();
  			}

  			@Override
  			public CallResult<Integer> checkBiz()
  			{
  				return CallResult.success();
  			}

  			@Override
  			public void finishUp(CallResult<Integer> callResult)
  			{
  			}
  		});

  	}

    ```
