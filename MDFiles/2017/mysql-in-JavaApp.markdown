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
