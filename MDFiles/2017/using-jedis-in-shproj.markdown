### mdfrontserver
> * 本工程中所有jedis的使用都是通过spring xml粘合在一起，所以，spring xml里创建了config,sentinelpool等bean。
> * 顺序为，先用RedisCacheFactory创建业务对应的RedisSentinelPool，然后创建具体操作类RedisSentinelCache,然后是业务层逻辑。
> * 建议详细梳理RedisCache中每个实现方法的具体经典应用场景。

#### RedisSentinelPool
> * 最应该常用的类，但需要事先部署支持sentinel的redis实例。
> * this.getResource的getCurrentHostMaster()很关键，提取当前有效的master
> * 唯一对外接口就是getResource，用于从池里提取返回可用的jedis。

```java
import java.util.Set;

import org.apache.commons.pool2.impl.GenericObjectPoolConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisSentinelPool;
import redis.clients.jedis.exceptions.JedisConnectionException;

public class RedisSentinelPool extends JedisSentinelPool{

	private static final Logger logger = LoggerFactory.getLogger("serviceLogger");

	public RedisSentinelPool(String masterName, Set<String> sentinels,
			GenericObjectPoolConfig poolConfig) {
		super(masterName, sentinels, poolConfig);
	}

	private HostAndPort currentJedis ;


	protected Jedis getWorkingResource()
	{
		Jedis j = null;
		// try to find a working resource,200居然hardcode了...
	    for (int i = 0; i < 200; i++)
	    {
			try {
				j = super.getResource();
				if (j.isConnected()) {
					return j;
				} else {
					j.close();
				}
			} catch (JedisConnectionException e) {
				logger.error("获取可工作redis客户端失败", e);
				if (j != null)
					j.close();
			}
		}

	    return null;
	}

	/**
	 *
	 * @param masterChange
	 * @return
	 */
	public Jedis getResource(IMasterChange masterChange){
		HostAndPort master = this.getCurrentHostMaster() ;
		Jedis jedis = getWorkingResource() ;
		if( currentJedis == null ){
			this.currentJedis = master ;
		}else{
			if( !currentJedis.equals(master) ){
				if( null != masterChange ){
					masterChange.callback(jedis) ;
				}
			}
		}
		return jedis;
	}
}
```

#### ReidsReadException
```java
public class RedisReadException extends Exception {

	private static final long serialVersionUID = -4843073622205492620L;

	public RedisReadException( String msg,Throwable e ){
		super(msg, e) ;
	}

	public RedisReadException( String msg ){
		super(msg) ;
	}

}
```
#### RedisNode
```java
public class RedisNode {

	private String nodeName ;

	private String host ;

	private Integer port ;


	public String getNodeName() {
		return nodeName;
	}

	public void setNodeName(String nodeName) {
		this.nodeName = nodeName;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public Integer getPort() {
		return port;
	}

	public void setPort(Integer port) {
		this.port = port;
	}

}
```
#### RedisCacheFactory
> * 用于创建RedisSentinelPool实例供RedisCache实现类使用

```java
public class RedisCacheFactory {

	private static Map<String,RedisSentinelPool> redisSentinelPoolMap = new HashMap<String,RedisSentinelPool>() ;

	private static Map<String,JedisPool> jedisPoolMap = new HashMap<String,JedisPool>() ;

	static {
		redisSentinelPoolMap = RedisConfig.getRedisSentinelPoolMap() ;
		if(RedisConfig.getRedisNodeList() != null){
			for( RedisNode node : RedisConfig.getRedisNodeList() ){
				String nodeName = node.getNodeName() ;
				String host = node.getHost() ;
				int port = node.getPort() ;
				JedisPoolConfig config = new JedisPoolConfig();
				config.setMaxTotal(RedisConfig.getMaxTotal());
				config.setMaxIdle(RedisConfig.getMaxIdle());
				config.setMaxWaitMillis(RedisConfig.getMaxWaitMillis());
				config.setTestOnBorrow(RedisConfig.getTestOnBorrow());
				config.setTestOnReturn(RedisConfig.getTestOnReturn());
				JedisPool jedisPool = new JedisPool(config,host,port,RedisConfig.getTimeout());
				jedisPoolMap.put(nodeName, jedisPool) ;
			}
		}
	}
	public RedisCacheFactory(){
	}

	public static RedisCache getPayCodeRedisCache(){
		String payCode = "payCode" ;
		RedisSentinelPool pool = redisSentinelPoolMap.get(payCode) ;
		return new RedisSentinelCache(pool) ;
	}

	public static RedisCache getPayCodeRedisCacheSentinel(){
		String payCode = "payCode" ;
		RedisSentinelPool pool = redisSentinelPoolMap.get(payCode) ;
		return new RedisSentinelCache(pool) ;
	}

	public static RedisCache getBlacklistRedisCache(){
		String blacklist = "blacklist" ;
		RedisSentinelPool pool = redisSentinelPoolMap.get(blacklist) ;
		return new RedisSentinelCache(pool) ;
	}


	public static RedisCache getSentinalRedisCache(String key){
		RedisSentinelPool redisSentinelPool = redisSentinelPoolMap.get(key);
		return new RedisSentinelCache( redisSentinelPool ) ;
	}
}
```

#### RedisConfig配置类
##### RedisConfig
```java
import java.util.List;
import java.util.Map;

/**
 * redis 配置读取类
 *
 */
public class RedisConfig {

	private static Integer maxTotal ;
	private static Integer maxIdle ;
	private static Long maxWaitMillis ;
	private static Boolean testOnBorrow ;
	private static Boolean testOnReturn ;
	private static Integer timeout ;

	private static List<RedisNode> redisNodeList ;
	private static Map<String,RedisSentinelPool> redisSentinelPoolMap ;

	public static Integer getMaxTotal() {
		return maxTotal;
	}

	public static void setMaxTotal(Integer maxTotal) {
		RedisConfig.maxTotal = maxTotal;
	}

	public static Integer getMaxIdle() {
		return maxIdle;
	}

	public static void setMaxIdle(Integer maxIdle) {
		RedisConfig.maxIdle = maxIdle;
	}

	public static Long getMaxWaitMillis() {
		return maxWaitMillis;
	}

	public static void setMaxWaitMillis(Long maxWaitMillis) {
		RedisConfig.maxWaitMillis = maxWaitMillis;
	}

	public static Boolean getTestOnBorrow() {
		return testOnBorrow;
	}

	public static void setTestOnBorrow(Boolean testOnBorrow) {
		RedisConfig.testOnBorrow = testOnBorrow;
	}

	public static Boolean getTestOnReturn() {
		return testOnReturn;
	}

	public static void setTestOnReturn(Boolean testOnReturn) {
		RedisConfig.testOnReturn = testOnReturn;
	}

	public static Integer getTimeout() {
		return timeout;
	}

	public static void setTimeout(Integer timeout) {
		RedisConfig.timeout = timeout;
	}

	public static List<RedisNode> getRedisNodeList() {
		return redisNodeList;
	}

	public static void setRedisNodeList(List<RedisNode> redisNodeList) {
		RedisConfig.redisNodeList = redisNodeList;
	}

	public static Map<String, RedisSentinelPool> getRedisSentinelPoolMap() {
		return redisSentinelPoolMap;
	}

	public static void setRedisSentinelPoolMap(
			Map<String, RedisSentinelPool> redisSentinelPoolMap) {
		RedisConfig.redisSentinelPoolMap = redisSentinelPoolMap;
	}

}
```
##### RedisConfig in Spring Xml
>  * 配置了jedis官方的jedisPoolConfig，通用于后续两个RedisSentinelPool配置。
>  * 配置了两个RedisSentinelPool配置，**<font color=green>特别注意redisSentinelPoolMap的配置，业务区分在此</font>**
```xml
<?xml version="1.0" encoding="UTF-8"?>

<beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:aop="http://www.springframework.org/schema/aop"
	xmlns:tx="http://www.springframework.org/schema/tx"
	xsi:schemaLocation="
			http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans-2.5.xsd
			http://www.springframework.org/schema/aop http://www.springframework.org/schema/aop/spring-aop-2.5.xsd
			http://www.springframework.org/schema/tx http://www.springframework.org/schema/tx/spring-tx-2.5.xsd"
			default-autowire="byName">
	<bean class="org.springframework.beans.factory.config.PropertyPlaceholderConfigurer">
		<property name="location" value="classpath:rediscache.properties" />
		<property name="ignoreUnresolvablePlaceholders" value="true" />
	</bean>

	<bean id="jedisPoolConfig" class="redis.clients.jedis.JedisPoolConfig">
		<property name="maxTotal" value="200" />
		<property name="maxIdle" value="100" />
		<property name="maxWaitMillis" value="5000" />
		<property name="testOnBorrow" value="true" />
	</bean>

	<bean id="redisSentinelPool1" class="com.wowo.mdfrontserver.domain.support.RedisSentinelPool">
		<constructor-arg index="0">
			<value>${sentinel-url-1-mastername}</value>
		</constructor-arg>
		<constructor-arg index="1">
			<set>
				<value>${sentinel-url-1-1}</value>
				<value>${sentinel-url-1-2}</value>
				<value>${sentinel-url-1-3}</value>
			</set>
		</constructor-arg>
		<constructor-arg index="2" ref="jedisPoolConfig" />
	</bean>
	<bean id="redisSentinelPool2" class="com.wowo.mdfrontserver.domain.support.RedisSentinelPool">
		<constructor-arg index="0">
			<value>${sentinel-url-2-mastername}</value>
		</constructor-arg>
		<constructor-arg index="1">
			<set>
				<value>${sentinel-url-2-1}</value>
				<value>${sentinel-url-2-2}</value>
				<value>${sentinel-url-2-3}</value>
			</set>
		</constructor-arg>
		<constructor-arg index="2" ref="jedisPoolConfig" />
	</bean>

	<bean class="com.QiXun.mdfrontserver.domain.support.RedisConfig">
		<property name="maxTotal" value="200"/>
		<property name="maxIdle" value="100"/>
		<property name="maxWaitMillis" value="5000"/>
		<property name="testOnBorrow" value="true"/>
		<property name="testOnReturn" value="true"/>
		<property name="timeout" value="2000"/>
		<!-- <property name="redisNodeList">
			<list>
				<bean class="com.QiXun.mdfrontserver.domain.support.RedisNode" >
					<property name="nodeName" value="payCode" />
					<property name="host" value="${REDIS_NODE_PAYCODE_HOST}" />
					<property name="port" value="${REDIS_NODE_PAYCODE_PORT}" />
				</bean>
				<bean class="com.QiXun.mdfrontserver.domain.support.RedisNode" >
					<property name="nodeName" value="orderPay" />
					<property name="host" value="${REDIS_NODE_ORDERPAY_HOST}" />
					<property name="port" value="${REDIS_NODE_ORDERPAY_PORT}" />
				</bean>
				<bean class="com.QiXun.mdfrontserver.domain.support.RedisNode" >
					<property name="nodeName" value="blacklist" />
					<property name="host" value="${REDIS_NODE_BLACKLIST_HOST}" />
					<property name="port" value="${REDIS_NODE_BLACKLIST_PORT}" />
				</bean>
			</list>
		</property> -->
		<property name="redisSentinelPoolMap">
			<map>
				<entry key="payCode" ><ref bean="redisSentinelPool1" /></entry>
				<entry key="orderPay" ><ref bean="redisSentinelPool1" /></entry>
				<entry key="blacklist" ><ref bean="redisSentinelPool2" /></entry>
			</map>
		</property>
	</bean>
</beans>

```
#### RedisCache接口
该接口定义了本工程如何操作redis的功能
##### RedisCache interface
```java
import java.util.List;
import java.util.Set;

import com.QiXun.mdfrontserver.model.exception.RedisReadException;

public interface RedisCache {

	/**
	 * 以步长为step旋转列表rotation
	 * @param rotationKey
	 * @param step
	 * @return
	 */
	public List<String> rotation( final String rotationKey ,final int step ) ;

	/**
	 * 如果key不存在，则设置值成功，返回true，如果存在，则返回false
	 * @param key
	 * @param value
	 * @return
	 */
	public boolean setnx(final String key ,final String value );

	/**
	 * 设置值
	 * @param key
	 * @param s （单位为秒）
	 * @param value
	 * @return
	 */
	public boolean setex( final String key,final int s , final String value ) ;

	/**
	 *
	 * @param key
	 * @param s  过期时间，单位：毫秒
	 * @param value
	 * @return
	 */
	public boolean setpx( final String key,final int s,final String value  );

	/**
	 * @param key
	 * @return
	 */
	public String get( final String key ) throws RedisReadException ;

	/**
	 * 使用pipeline进行自增操作，并返回
	 * @param key
	 * @param step
	 * @return
	 */
	public List<String> pipelineIncr( final String key,final int step ) ;

	/**
	 * 对key增加步长step
	 * @param key
	 * @param step
	 * @return
	 */
	public Long incrby( final String key , final int step ) ;

	/**
	 * @param key
	 * @param values
	 */
	public void pipelinePush( final String key ,final String[] values ) ;

	/**
	 * @param key
	 * @throws RedisReadException
	 */
	public Set<String> smembers( final String key ) throws RedisReadException ;

	public boolean set(String key, String value);

	/**
	 * 添加一个集合元素
	 * @param key
	 * @param value
	 * @return
	 */
	public long sadd(String key,String value) ;

	/**
	 * 获取key的有效时间
	 * @param key
	 * @return
	 */
	public Long ttl(String key);
}
```
##### 第一个实现版本RedisCacheImpl
```java
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.Pipeline;

import com.QiXun.mdfrontserver.domain.support.RedisCache;
import com.QiXun.mdfrontserver.model.exception.RedisReadException;

public class RedisCacheImpl implements RedisCache{

	private JedisPool jedisPool ;

	public RedisCacheImpl( JedisPool jedisPool ){
		this.jedisPool = jedisPool ;
	}

	/**
	 * 以步长为step旋转列表rotation
	 * @param rotationKey
	 * @param step
	 * @return
	 */
	@Override
	public List<String> rotation( final String rotationKey ,final int step ){
		List<String> result = new ArrayList<String>() ;
		Jedis jedis = null;
		Pipeline p = null;

		try {
			jedis = jedisPool.getResource();
			if (jedis == null)
				return result;
			p = jedis.pipelined();
			for( int i = 0 ; i<step ; i++ ){
				p.rpoplpush(rotationKey, rotationKey) ;
			}
			List<Object> resultList = p.syncAndReturnAll();
			if( resultList != null ){
				for( Object o : resultList ){
					result.add(o.toString()) ;
				}
			}
			return result ;
		} catch (Exception e) {
			if (p != null){
				p.discard();
				p = null ;
			}
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null ;
			}
		} finally {
			// 销毁管道占用的资源
			if (p != null)
				p.discard();

			if (jedis != null) {
				jedisPool.returnResource(jedis);
			}
		}
		return result ;
	}

	/**
	 * 如果key不存在，则设置值成功，返回true，如果存在，则返回false
	 * @param key
	 * @param value
	 * @return
	 */
	@Override
	public boolean setnx(final String key ,final String value ){
		Jedis jedis = null ;
		try{
			jedis = jedisPool.getResource() ;
			Long r = jedis.setnx(key, value) ;
			if( r != null && r == 1 ){//设置值成功
				return true ;
			}
		} catch(Exception e ){
			e.printStackTrace();
			if( jedis != null ){
				jedisPool.returnBrokenResource(jedis);
				jedis = null ;
			}
		} finally{
			jedisPool.returnResource(jedis);
		}
		return false ;
	}

	@Override
	public boolean setex( final String key,final int s , final String value ){
		Jedis jedis = null ;
		try{
			jedis = jedisPool.getResource() ;
			String r = jedis.setex(key, s, value) ;
			if( r != null && "ok".equalsIgnoreCase(r) ){//设置值成功
				return true ;
			}
		} catch(Exception e ){
			e.printStackTrace();
			if( jedis != null ){
				jedisPool.returnBrokenResource(jedis);
				jedis = null ;
			}
		} finally{
			jedisPool.returnResource(jedis);
		}
		return false ;
	}

	/**
	 *
	 * @param key
	 * @param s  过期时间，单位：毫秒
	 * @param value
	 * @return
	 */
	@Override
	public boolean setpx( final String key,final int s,final String value  ){
		Jedis jedis = null ;
		try{
			jedis = jedisPool.getResource() ;
			String r = jedis.psetex(key, s, value) ;
			if( r != null && "ok".equalsIgnoreCase(r)){//设置值成功
				return true ;
			}
		}catch(Exception e ){
			e.printStackTrace();
			if( jedis != null ){
				jedisPool.returnBrokenResource(jedis);
				jedis = null ;
			}
		} finally{
			jedisPool.returnResource(jedis);
		}
		return false ;
	}

	@Override
	public String get( final String key ) throws RedisReadException {
		Jedis jedis = null ;
		try{
			jedis = jedisPool.getResource() ;
			String r = jedis.get(key) ;
			return r ;
		}catch(Exception e ){
			e.printStackTrace();
			if( jedis != null ){
				jedisPool.returnBrokenResource(jedis);
				jedis = null ;
			}
			throw new RedisReadException("get key error,key:"+key,e) ;
		} finally{
			jedisPool.returnResource(jedis);
		}
	}

	@Override
	public List<String> pipelineIncr(String key, int step) {
		List<String> result = new ArrayList<String>() ;
		Jedis jedis = null;
		Pipeline p = null;

		try {
			jedis = jedisPool.getResource();
			if (jedis == null)
				return result;
			p = jedis.pipelined();
			for( int i = 0 ; i<step ; i++ ){
				p.incr(key) ;
			}
			List<Object> resultList = p.syncAndReturnAll();
			if( resultList != null ){
				for( Object o : resultList ){
					result.add(o.toString()) ;
				}
			}
			return result ;
		} catch (Exception e) {
			if (p != null){
				p.discard();
				p = null ;
			}
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null ;
			}
		} finally {
			// 销毁管道占用的资源
			if (p != null)
				p.discard();

			if (jedis != null) {
				jedisPool.returnResource(jedis);
			}
		}
		return result ;
	}

	@Override
	public synchronized void pipelinePush(String key, String[] values) {
		Jedis jedis = null;
		Pipeline p = null;

		try {
			jedis = jedisPool.getResource();
			if (jedis == null)
				return ;
			p = jedis.pipelined();
			p.lpush(key, values) ;
			p.syncAndReturnAll();
			return  ;
		} catch (Exception e) {
			e.printStackTrace();
			if (p != null){
				p.discard();
				p = null ;
			}
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null ;
			}
		} finally {
			// 销毁管道占用的资源
			if (p != null)
				p.discard();

			if (jedis != null) {
				jedisPool.returnResource(jedis);
			}
		}
		return ;
	}

	@Override
	public Long incrby(String key, int step) {
		Jedis jedis = null ;
		try{
			jedis = jedisPool.getResource() ;
			Long r = jedis.incrBy(key, step) ;
			return r ;
		}catch(Exception e ){
			e.printStackTrace();
			if( jedis != null ){
				jedisPool.returnBrokenResource(jedis);
				jedis = null ;
			}
			return null ;
		} finally{
			jedisPool.returnResource(jedis);
		}
	}

	@Override
	public Set<String> smembers(String key) throws RedisReadException {
		Jedis jedis = null ;
		try{
			jedis = jedisPool.getResource() ;
			Set<String> r = jedis.smembers(key);
			return r ;
		}catch(Exception e ){
			e.printStackTrace();
			if( jedis != null ){
				jedisPool.returnBrokenResource(jedis);
				jedis = null ;
			}
			throw new RedisReadException("get key error,key:"+key,e) ;
		} finally{
			jedisPool.returnResource(jedis);
		}

	}

	@Override
	public boolean set(String key, String value) {
		Jedis jedis = null ;
		try{
			jedis = jedisPool.getResource() ;
			String r = jedis.set(key, value) ;
			if( r != null && "ok".equalsIgnoreCase(r) ){//设置值成功
				return true ;
			}
		} catch(Exception e ){
			e.printStackTrace();
			if( jedis != null ){
				jedisPool.returnBrokenResource(jedis);
				jedis = null ;
			}
		} finally{
			jedisPool.returnResource(jedis);
		}
		return false ;
	}

	@Override
	public long sadd(String key, String value) {
		Jedis jedis = null ;
		try{
			jedis = jedisPool.getResource() ;
			Long r = jedis.sadd(key, value) ;
			return r;
		} catch(Exception e ){
			e.printStackTrace();
			if( jedis != null ){
				jedisPool.returnBrokenResource(jedis);
				jedis = null ;
			}
		} finally{
			jedisPool.returnResource(jedis);
		}
		return 0l;
	}

	@Override
	public Long ttl(String key) {
		Jedis jedis = null ;
		try{
			jedis = jedisPool.getResource() ;
			Long r = jedis.ttl(key) ;
			return r;
		} catch(Exception e ){
			e.printStackTrace();
			if( jedis != null ){
				jedisPool.returnBrokenResource(jedis);
				jedis = null ;
			}
		} finally{
			jedisPool.returnResource(jedis);
		}
		return 0l;
	}
}
```
##### 第二个实现版本RedisSentinelCache

```java
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.Pipeline;

import com.QiXun.mdfrontserver.domain.support.RedisCache;
import com.QiXun.mdfrontserver.domain.support.RedisSentinelPool;
import com.QiXun.mdfrontserver.model.exception.RedisReadException;

public class RedisSentinelCache implements RedisCache {

	//private static final Logger SERVICELOGGER = LoggerFactory.getLogger("serviceLogger");

	private RedisSentinelPool jedisPool;

	public RedisSentinelCache(RedisSentinelPool jedisPool) {
		this.jedisPool = jedisPool;
	}

	/**
	 * 以步长为step旋转列表rotation
	 *
	 * @param rotationKey
	 * @param step
	 * @return
	 */
	@Override
	public List<String> rotation(final String rotationKey, final int step) {
		List<String> result = new ArrayList<String>();
		Jedis jedis = null;
		Pipeline p = null;

		try {
			jedis = jedisPool.getResource(null);
			if (jedis == null) {
				return result;
			}
			p = jedis.pipelined();
			for (int i = 0; i < step; i++) {
				p.rpoplpush(rotationKey, rotationKey);
			}
			// SERVICELOGGER.info("rotation---,step is" + step);
			// SERVICELOGGER.info("rotation---,key is "+rotationKey);
			List<Object> resultList = p.syncAndReturnAll();
			//SERVICELOGGER.info("rotation---,resultList.size is" + resultList.size());
			if (resultList != null) {
				for (Object o : resultList) {
					result.add(o.toString());
				}
			}
			return result;
		} catch (Exception e) {
			// SERVICELOGGER.error("rotation---,exception", e);
			if (p != null) {
				p.discard();
				p = null;
			}
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null;
			}
		} finally {
			// 销毁管道占用的资源
			if (p != null)
				p.discard();

			if (jedis != null) {
				jedisPool.returnResource(jedis);
			}
		}
		return result;
	}

	/**
	 * 如果key不存在，则设置值成功，返回true，如果存在，则返回false
	 *
	 * @param key
	 * @param value
	 * @return
	 */
	@Override
	public boolean setnx(final String key, final String value) {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource(null);
			Long r = jedis.setnx(key, value);
			if (r != null && r == 1) {// 设置值成功
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null;
			}
		} finally {
			jedisPool.returnResource(jedis);
		}
		return false;
	}

	/**
	 *
	 * @param key
	 * @param s
	 *            过期时间，单位：毫秒
	 * @param value
	 * @return
	 */
	@Override
	public boolean setpx(final String key, final int s, final String value) {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource(null);
			String r = jedis.psetex(key, s, value);
			if (r != null && "ok".equalsIgnoreCase(r)) {// 设置值成功
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null;
			}
		} finally {
			jedisPool.returnResource(jedis);
		}
		return false;
	}

	@Override
	public String get(final String key) throws RedisReadException {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource(null);
			String r = jedis.get(key);
			return r;
		} catch (Exception e) {
			e.printStackTrace();
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null;
			}
			throw new RedisReadException("get key error,key:" + key, e);
		} finally {
			jedisPool.returnResource(jedis);
		}
	}

	@Override
	public boolean setex(String key, int s, String value) {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			String r = jedis.setex(key, s, value);
			if (r != null && "ok".equalsIgnoreCase(r)) {// 设置值成功
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null;
			}
		} finally {
			jedisPool.returnResource(jedis);
		}
		return false;
	}

	@Override
	public List<String> pipelineIncr(String key, int step) {
		List<String> result = new ArrayList<String>();
		Jedis jedis = null;
		Pipeline p = null;

		try {
			jedis = jedisPool.getResource();
			if (jedis == null)
				return result;
			p = jedis.pipelined();
			for (int i = 0; i < step; i++) {
				p.incr(key);
			}
			List<Object> resultList = p.syncAndReturnAll();
			if (resultList != null) {
				for (Object o : resultList) {
					result.add(o.toString());
				}
			}
			return result;
		} catch (Exception e) {
			if (p != null) {
				p.discard();
				p = null;
			}
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null;
			}
		} finally {
			// 销毁管道占用的资源
			if (p != null)
				p.discard();

			if (jedis != null) {
				jedisPool.returnResource(jedis);
			}
		}
		return result;
	}

	@Override
	public void pipelinePush(String key, String[] values) {
		Jedis jedis = null;
		Pipeline p = null;

		try {
			jedis = jedisPool.getResource();
			if (jedis == null)
				return;
			p = jedis.pipelined();
			p.lpush(key, values);
			p.syncAndReturnAll();
			return;
		} catch (Exception e) {
			if (p != null) {
				p.discard();
				p = null;
			}
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null;
			}
		} finally {
			// 销毁管道占用的资源
			if (p != null)
				p.discard();

			if (jedis != null) {
				jedisPool.returnResource(jedis);
			}
		}
		return;
	}

	@Override
	public Long incrby(String key, int step) {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			Long r = jedis.incrBy(key, step);
			return r;
		} catch (Exception e) {
			e.printStackTrace();
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null;
			}
			return null;
		} finally {
			jedisPool.returnResource(jedis);
		}
	}

	@Override
	public Set<String> smembers(String key) throws RedisReadException {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			Set<String> r = jedis.smembers(key);
			return r;
		} catch (Exception e) {
			e.printStackTrace();
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null;
			}
			throw new RedisReadException("get key error,key:" + key, e);
		} finally {
			jedisPool.returnResource(jedis);
		}
	}

	@Override
	public boolean set(String key, String value) {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			String r = jedis.set(key, value);
			if (r != null && "ok".equalsIgnoreCase(r)) {// 设置值成功
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null;
			}
		} finally {
			jedisPool.returnResource(jedis);
		}
		return false;
	}

	@Override
	public long sadd(String key, String value) {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			long r = jedis.sadd(key, value);
			return r;
		} catch (Exception e) {
			e.printStackTrace();
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null;
			}
		} finally {
			jedisPool.returnResource(jedis);
		}
		return 0;
	}

	@Override
	public Long ttl(String key) {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			long r = jedis.ttl(key);
			return r;
		} catch (Exception e) {
			e.printStackTrace();
			if (jedis != null) {
				jedisPool.returnBrokenResource(jedis);
				jedis = null;
			}
		} finally {
			jedisPool.returnResource(jedis);
		}
		return 0L;
	}
}
```
