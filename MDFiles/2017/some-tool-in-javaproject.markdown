## json
> * 采用业界通用的jackjson库，各方面都优秀，不要用国内的fastJson，bug多且为了些许的快做了很多不标准的事。
> * 建议采用mdfrontserver的简版。
###  pom引用
> * 目前maven库采用2.2.2版
> * [Jackson官网地址(http://wiki.fasterxml.com/JacksonHome)](http://wiki.fasterxml.com/JacksonHome)
> * [GitHub源码地址](https://github.com/FasterXML)
```xml
       <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-core</artifactId>
            <version>${jackson-2-version}</version>
        </dependency>

        <!-- Just the annotations; use this dependency if you want to attach annotations
            to classes without connecting them to the code. -->
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-annotations</artifactId>
            <version>${jackson-2-version}</version>
        </dependency>

        <!-- databinding; ObjectMapper, JsonNode and related classes are here -->
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-databind</artifactId>
            <version>${jackson-2-version}</version>
        </dependency>

        <!-- smile (binary JSON). Other artifacts in this group do other formats. -->
        <dependency>
            <groupId>com.fasterxml.jackson.dataformat</groupId>
            <artifactId>jackson-dataformat-smile</artifactId>
            <version>${jackson-2-version}</version>
        </dependency>
        <!-- JAX-RS provider -->
        <dependency>
            <groupId>com.fasterxml.jackson.jaxrs</groupId>
            <artifactId>jackson-jaxrs-json-provider</artifactId>
            <version>${jackson-2-version}</version>
        </dependency>
        <!-- Support for JAX-B annotations as additional configuration -->
        <dependency>
            <groupId>com.fasterxml.jackson.module</groupId>
            <artifactId>jackson-module-jaxb-annotations</artifactId>
            <version>${jackson-2-version}</version>
        </dependency>
```
### mdfrontserver中的集成工具类

> * toJson方法不太用吧。

```java
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


public class JsonUtils {

	private static final Log logger = LogFactory.getLog(JsonUtils.class);
	private static final ObjectMapper objectMapper = new ObjectMapper();	//线程安全
	static{
		objectMapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
		objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
	}

	/**
	 * 将对象转换为json字符串
	 *
	 * @param object
	 * @return
	 */
	public static String convertObjectToString(Object object) {
		if (object == null) {
			throw new IllegalArgumentException(
					"invalid argument , object mast be not null!");
		}
		String res = null;
		try {
			res = objectMapper.writeValueAsString(object);
		} catch (Exception e) {
			logger.error(e.getMessage(), e.fillInStackTrace());
			throw new RuntimeException("object  conver json exception ");
		}
		return res;
	}

	/**
	 * 将对象转换为json字符串(格式化，存在性能问题)
	 * @param object
	 * @return
	 */
	public static String toJson(Object object) {
		if (object == null) {
			throw new IllegalArgumentException(
					"invalid argument , object mast be not null!");
		}
		String res = null;
		try {
			res = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(object);
		} catch (Exception e) {
			logger.error(e.getMessage(), e.fillInStackTrace());
			throw new RuntimeException("object  conver json exception ");
		}
		return res;
	}

	/**
	 * 将json字符串转换为 对象
	 *
	 * @param jsonData
	 * @return
	 */
	public static <T> T convertStringToObject(String jsonData,
			Class<T> classType) {
		if (jsonData == null || jsonData.trim().length() == 0) {
			throw new IllegalArgumentException("jsonData is empty");
		}
		if (classType == null) {
			throw new IllegalArgumentException("classType is empty");
		}
		T res = null;
		try {
			res = (T) objectMapper.readValue(jsonData, classType);
		} catch (Exception e) {
			logger.error(e.getMessage(), e.fillInStackTrace());
			throw new RuntimeException("json conver object exception ");
		}
		return res;
	}
}
```

### mdpaygate中的集成工具类

> *有大量的过滤敏感词的方法。

```java
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class JsonUtils {

	private static final Logger logger = LoggerFactory.getLogger(JsonUtils.class);
	private static final ObjectMapper objectMapper = new ObjectMapper();


	/**
	 * 将对象转换为json字符串
	 *
	 * @param object
	 * @return
	 */
	public static String convertObjectToString(Object object) {
		if (object == null) {
			throw new IllegalArgumentException(
					"invalid argument , object mast be not null!");
		}
		String res = null;
		try {
			res = objectMapper.writeValueAsString(object);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			throw new RuntimeException("object  conver json exception ");
		}
		return res;
	}
	/**
	 * 将字符串String jsonStr中的敏感词 (包含在String[] sensitiveWord数组中)屏蔽
	 * @param jsonStr 原始字符串
	 * @param sensitiveWord 敏感词数组
	 * @author hejinen
	 * @Date 2015-4-17
	 * @return
	 */
	public static String sensitiveWordOfString(String jsonStr,String[] sensitiveWord){
		//如果jsonStr或sensitiveWord为null，则直接返回
		if(jsonStr==null||sensitiveWord == null)
			return jsonStr;
		try {
			//否则，遍历敏感词，并依次处理
			for(int i=0;i<sensitiveWord.length;i++){
				//判断jsonStr中是否包含sensitiveWord[i]这个敏感词
				if(jsonStr.contains(sensitiveWord[i]))
					//处理敏感词
					jsonStr = ShieldSensitiveWord(jsonStr,sensitiveWord[i]);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}

		return jsonStr;
	}
	/**
	 * 使用递归，将字符串String jsonStr中的敏感词String sensitiveWord全部屏蔽
	 * @param jsonStr 原始字符串
	 * @param sensitiveWord 敏感词
	 * @author hejinen
	 * @Date 2015-4-17
	 * @return
	 */
	private static String ShieldSensitiveWord(String jsonStr,String sensitiveWord){
		try {
			//递归结束条件
			if(!jsonStr.contains(sensitiveWord))
				return jsonStr;

			//取得分割符，在日志中有两种分隔符 '&'或','
			String charStr = jsonStr.substring(jsonStr.indexOf(sensitiveWord)-1, jsonStr.indexOf(sensitiveWord));
			String[] strs1 = jsonStr.split(sensitiveWord,2);
			String[] strs2 = {};
			if(!"&".equals(charStr)){
				charStr = ",";
			}
			strs2 = strs1[1].split(charStr, 2);

			String sensitiveValue = "";
			/*
			 * 判断敏感词是否为邮箱，
			 * 是，则用replaceEMail()处理
			 * 否，则用replaceId()处理
			 */
			if(strs2[0].contains("@")||strs2[0].contains("%40"))
				sensitiveValue = JsonUtils.replaceEMail(strs2[0],4);
			else
				sensitiveValue = JsonUtils.replaceId(strs2[0],3,4);

			//递归处理敏感词，并重新拼接字符串
			jsonStr = strs1[0]+sensitiveWord+sensitiveValue+charStr+ShieldSensitiveWord(strs2[1],sensitiveWord);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return jsonStr;
	}
	/**
	 * 将Map<String,String[]> map转换为json字符串,并且屏蔽敏感词(包含在String[] sensitiveWord数组中)
	 * @param map
	 * @author hejinen
	 * @Date 2015-4-17
	 * @return
	 */
	public static String sensitiveWordOfMap(Map<String,String[]> map,String[] sensitiveWord){
		String res = null;
		try {
			if(map == null){
				return null;
			}
			//复制map
			Map<String,String> writeMap = getWriteMap(map);
			//如果sensitiveWord为null则抛出异常
			if (sensitiveWord != null) {
				//遍历敏感词，并依次处理
				for(int i=0;i<sensitiveWord.length;i++){
					if(writeMap.containsKey(sensitiveWord[i])){
						/*
						 * 判断敏感词是否为邮箱，
						 * 是，则用replaceEMail(String str)处理
						 * 否，则用replaceId(String str)处理
						 */
						if(writeMap.get(sensitiveWord[i]).contains("@"))
							writeMap.put(sensitiveWord[i],replaceEMail(writeMap.get(sensitiveWord[i]),3));
						else
							writeMap.put(sensitiveWord[i],replaceId(writeMap.get(sensitiveWord[i]),2,3));
					}

				}
			}
			res = objectMapper.writeValueAsString(writeMap);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return res;
	}
	/**
	 * 将Map map转换为json字符串,并且屏蔽敏感词(包含在String[] sensitiveWord数组中)
	 * @param map
	 * @author hejinen
	 * @Date 2015-4-17
	 * @return
	 */
	public static String sensitiveWordOfMap2(Map map,String[] sensitiveWord){
		String res = null;
		try {
			if(map == null){
				return null;
			}
			//复制map
			Map<String,String> writeMap = getWriteMap(map);
			//如果sensitiveWord为null则抛出异常
			if (sensitiveWord != null ) {
				//遍历敏感词，并依次处理
				for(int i=0;i<sensitiveWord.length;i++){
					if(writeMap.containsKey(sensitiveWord[i])){
						/*
						 * 判断敏感词是否为邮箱，
						 * 是，则用replaceEMail(String str)处理
						 * 否，则用replaceId(String str)处理
						 */
						if(writeMap.get(sensitiveWord[i]).contains("@"))
							writeMap.put(sensitiveWord[i],replaceEMail(writeMap.get(sensitiveWord[i]),3));
						else
							writeMap.put(sensitiveWord[i],replaceId(writeMap.get(sensitiveWord[i]),2,3));
					}
				}
			}
			res = objectMapper.writeValueAsString(writeMap);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return res;
	}
	/**
	 * 用*替换buyer_id,seller_id的中间部分，只留取前m位和后n位
	 * @param str
	 * @author hejinen
	 * @Date 2015-4-17
	 * @return
	 */
	private static String replaceId(String str,int m,int n){
		StringBuilder st = new StringBuilder();
		st.append(str.substring(0, m));
		st.append("*");
		st.append(str.substring(str.length() - n));
		return st.toString();
	}
	/**
	 * 用*替换buyer_email,seller_email的中间部分，只留取前m位和@符号后面的部分或者%40(@在浏览器中是这样显示的，有的日志直接打印)后面的部分
	 * @param str
	 * @author hejinen
	 * @Date 2015-4-17
	 * @return
	 */
	private static String replaceEMail(String str,int m){
		if(str==null||!(str.contains("@")||str.contains("%40")))
			return str;
		String charStr = "@";
		if(!str.contains("@"))
			charStr = "%40";

		String[] strs = str.split(charStr);
		if (strs[0].length() > m )
			return strs[0].substring(0, m)+"*"+charStr+strs[1];
		else
			return strs[0]+"*"+charStr+strs[1];
	}
	/**
	 * request.getParameterMap()取得的map是只读的，将它变为普通的map
	 * @param properties
	 * @author hejinen
	 * @Date 2015-4-17
	 * @return
	 */
	private static Map getWriteMap(Map properties) {
	    // 返回值Map
	    Map returnMap = new HashMap();
	    Iterator entries = properties.entrySet().iterator();
	    Map.Entry entry;
	    String name = "";
	    String value = "";
	    while (entries.hasNext()) {
	        entry = (Map.Entry) entries.next();
	        name = (String) entry.getKey();
	        Object valueObj = entry.getValue();
	        if(null == valueObj){
	            value = "";
	        }else if(valueObj instanceof String[]){
	            String[] values = (String[])valueObj;
	            for(int i=0;i<values.length;i++){
	                value = values[i] + ",";
	            }
	            value = value.substring(0, value.length()-1);
	        }else{
	            value = valueObj.toString();
	        }
	        returnMap.put(name, value);
	    }
	    return returnMap;
	}

	/**
	 * 将json字符串转换为 对象
	 *
	 * @param jsonData
	 * @return
	 */
	public static <T> T convertStringToObject(String jsonData,
			Class<T> classType) {
		if (jsonData == null || jsonData.trim().length() == 0) {
			throw new IllegalArgumentException("jsonData is empty");
		}
		if (classType == null) {
			throw new IllegalArgumentException("classType is empty");
		}
		T res = null;
		try {
			res = (T) objectMapper.readValue(jsonData, classType);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			throw new RuntimeException("json conver object exception ");
		}
		return res;
	}
	public static void main(String[] args) throws JsonGenerationException, JsonMappingException, IOException {
		String[] sensitiveWord = {"buyer_id","buyer_email","seller_id","seller_email","pay_user"};
		String str = "[{visitMethodIn:TradeService.tradePayNotify,params:[MOBILE_CLIENT_ALIPAY_SDK,{buyer_id=2088002184091500, trade_no=2014120547762250, body=购买-物流单-物流配送-支付宝, use_coupon=N, notify_time=2014-12-05 14:07:15, subject=购买-物流单-物流配送-支付宝, sign_type=RSA, is_total_fee_adjust=N, notify_type=trade_status_sync, out_trade_no=T111530000, trade_status=TRADE_SUCCESS, gmt_payment=2014-12-05 14:03:26, discount=0.00, sign=G7nGi0mZfkUHI8SATlR/YONFkPBeO65worKD/GzVAZRfdMe1ahg6uZXggg6nZE3KCl/2zNYO+G8BtUY3LBL4wGnHVZcIqGv4db6qrolIXDRrnMkDporppg/ETWleotPrpXxru4MQoqrshb/xi4kzWMk04NT3Ob86QXEUjBIEvDU=, gmt_create=2014-12-05 14:03:25, buyer_email=novelty-fish@163.com, price=1.00, total_fee=1.00, quantity=1, seller_id=2088411506548729, seller_email=55market@55tuan.com, notify_id=08148fce6796c0f86dca3c71efc6107b4s, payment_type=8},/alipayNotify.do?body=%E8%B4%AD%E4%B9%B0-%E7%89%A9%E6%B5%81%E5%8D%95-%E7%89%A9%E6%B5%81%E9%85%8D%E9%80%81-%E6%94%AF%E4%BB%98%E5%AE%9D&buyer_email=novelty-fish%40163.com&buyer_id=2088002184091500&discount=0.00&gmt_create=2014-12-05+14%3A03%3A25&gmt_payment=2014-12-05+14%3A03%3A26&is_total_fee_adjust=N&notify_id=08148fce6796c0f86dca3c71efc6107b4s&notify_time=2014-12-05+14%3A07%3A15&notify_type=trade_status_sync&out_trade_no=T111530000&payment_type=8&price=1.00&quantity=1&seller_email=55market%4055tuan.com&seller_id=2088411506548729&sign=G7nGi0mZfkUHI8SATlR%2FYONFkPBeO65worKD%2FGzVAZRfdMe1ahg6uZXggg6nZE3KCl%2F2zNYO%2BG8BtUY3LBL4wGnHVZcIqGv4db6qrolIXDRrnMkDporppg%2FETWleotPrpXxru4MQoqrshb%2Fxi4kzWMk04NT3Ob86QXEUjBIEvDU%3D&sign_type=RSA&subject=%E8%B4%AD%E4%B9%B0-%E7%89%A9%E6%B5%81%E5%8D%95-%E7%89%A9%E6%B5%81%E9%85%8D%E9%80%81-%E6%94%AF%E4%BB%98%E5%AE%9D&total_fee=1.00&trade_no=2014120547762250&trade_status=TRADE_SUCCESS&use_coupon=N,110.75.145.1,4]}]";
//		String str1 = "[notifyParam={"discount":["0.00"],"notify_time":["2015-01-26 21:14:39"],"price":["2.00"],"total_fee":["2.00"],"quantity":["1"],"out_trade_no":["T277160000"],"gmt_create":["2015-01-26 21:14:38"],"buyer_email":["novelty-fish@163.com"],"notify_id":["65ec357f0e46b5af0f5aadb4fe39ad8e4s"],"payment_type":["8"],"gmt_payment":["2015-01-26 21:14:39"],"seller_id":["2088411506548729"],"seller_email":["55market@55tuan.com"],"use_coupon":["N"],"body":["纯支付宝的服务单商品----纯支付宝的服务单商品"],"buyer_id":["2088002184091500"],"subject":["纯支付宝的服务单商品----纯支付宝的服务单商品"],"trade_status":["TRADE_SUCCESS"],"notify_type":["trade_status_sync"],"is_total_fee_adjust":["N"],"trade_no":["2015012645541850"],"sign_type":["RSA"],"sign":["hnMI4bOf9XTw/DI7azeqFsni6LBW+oTYmxG0PruTSkLkFrllvba7awn3D0NVjQtTJSaH3GkLyvGU3GMFIyhB10vYkYTmLy7Sd7OqifS/0sEBt3W44mvCvwmkRx9x3HbSjcegFNht7ba80uzxXGnbcUpUZiZMJq1ow8YcDqpzwIw="]}]";
		String str1 = "[{visitMethodIn:TradeService.tradePayNotify,params:[MOBILE_CLIENT_ALIPAY_SDK,{buyer_id=2088002184091500, trade_no=2015030300001000500045777302, body=既支持支付宝＋又支持到店付款的服务单测试商品--, use_coupon=N, notify_time=2015-03-03 16:07:22, subject=既支持支付宝＋又支持到店付款的服务单测试商品--, sign_type=RSA, is_total_fee_adjust=N, notify_type=trade_status_sync, out_trade_no=T514680000, trade_status=TRADE_SUCCESS, gmt_payment=2015-03-03 16:06:41, discount=0.00, sign=J7M4r+rtYDy2VnVFfgCHTv/q7HEY8/7mX+lPK0gx9N7IvkeYxevB4tocnvF1GIvryTmi5Ficm0wQBi4p4/n+SFGk5bEEyGd97XG4OYEhnB89QvUV2mYGmumBa/ZPUArHlDry38AjHCqgvrnDeQzQMOLSRXsU+5P3ULRAro5pf2I=, gmt_create=2015-03-03 16:06:41, buyer_email=novelty-fish@163.com, price=0.98, total_fee=0.98, quantity=1, seller_id=2088411506548729, seller_email=55market@55tuan.com, notify_id=6c5749d3b00daddaf0919bc3433f0d024s, payment_type=8},/alipayNotify.do?body=%E6%97%A2%E6%94%AF%E6%8C%81%E6%94%AF%E4%BB%98%E5%AE%9D%EF%BC%8B%E5%8F%88%E6%94%AF%E6%8C%81%E5%88%B0%E5%BA%97%E4%BB%98%E6%AC%BE%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E6%B5%8B%E8%AF%95%E5%95%86%E5%93%81--&buyer_email=novelty-fish%40163.com&buyer_id=2088002184091500&discount=0.00&gmt_create=2015-03-03+16%3A06%3A41&gmt_payment=2015-03-03+16%3A06%3A41&is_total_fee_adjust=N&notify_id=6c5749d3b00daddaf0919bc3433f0d024s&notify_time=2015-03-03+16%3A07%3A22&notify_type=trade_status_sync&out_trade_no=T514680000&payment_type=8&price=0.98&quantity=1&seller_email=55market%4055tuan.com&seller_id=2088411506548729&sign=J7M4r%2BrtYDy2VnVFfgCHTv%2Fq7HEY8%2F7mX%2BlPK0gx9N7IvkeYxevB4tocnvF1GIvryTmi5Ficm0wQBi4p4%2Fn%2BSFGk5bEEyGd97XG4OYEhnB89QvUV2mYGmumBa%2FZPUArHlDry38AjHCqgvrnDeQzQMOLSRXsU%2B5P3ULRAro5pf2I%3D&sign_type=RSA&subject=%E6%97%A2%E6%94%AF%E6%8C%81%E6%94%AF%E4%BB%98%E5%AE%9D%EF%BC%8B%E5%8F%88%E6%94%AF%E6%8C%81%E5%88%B0%E5%BA%97%E4%BB%98%E6%AC%BE%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E6%B5%8B%E8%AF%95%E5%95%86%E5%93%81--&total_fee=0.98&trade_no=2015030300001000500045777302&trade_status=TRADE_SUCCESS&use_coupon=N,110.75.145.1,4]}]";
		//		System.out.println(ShieldSensitiveWord(str1,"buyer_id"));
		String str2 = "[requestUrl [/alipayNotify.do?body=%E8%BF%99%E4%B8%AA%E6%98%AF%E8%AF%A6%E6%83%85%E3%80%8A%E9%99%86%E5%B0%8F%E5%87%A4%E4%BC%A0%E5%A5%87%E4%B9%8B%E5%86%B3%E6%88%98%E5%89%8D%E5%90%8E%E3%80%8B%E4%B8%AD%E7%9A%84%E5%AD%99%E7%A7%80%E9%9D%92%E3%80%82www.baidu.com&buyer_email=mumu19860120%40126.com&buyer_id=2088802538245870&discount=0.00&gmt_create=2015-02-06+14%3A09%3A43&gmt_payment=2015-02-06+14%3A09%3A44&is_total_fee_adjust=N&notify_id=cb297f3fb820e38d63c241f941e0bd726u&notify_time=2015-02-06+14%3A09%3A44&notify_type=trade_status_sync&out_trade_no=T461210000&payment_type=8&price=0.01&quantity=1&seller_email=55market%4055tuan.com&seller_id=2088411506548729&sign=IsCSpQRgyqwwSxcAonfaCuRfRFRi7N6nReyyiT1IXMWxVmKC06wTc%2BBTqho897B7sqVUp6s%2B5Jyg4c36lka9A3y2Zad8Xt4XUijAtUmQBkjH7zmDXa1kYmMvdctscbmw88ZmkEGwsPapVzXuuXHt7bAkqK50m4ULw2Kx89ygvEw%3D&sign_type=RSA&subject=%E8%BF%99%E4%B8%AA%E6%98%AF%E7%89%A9%E6%B5%81%E5%8D%95%EF%BC%81%EF%BC%81%EF%BC%81%EF%BC%81%EF%BC%81%EF%BC%81&total_fee=0.01&trade_no=2015020622833787&trade_status=TRADE_SUCCESS&use_coupon=N]]";
		String str3 = "[resin-port-7020-47] INFO  businessNotifyLogger - [payType=MOBILE_CLIENT_ALIPAY_SDK[remoteIp=110.75.145.1, service.tradePayNotify use 45 ms, insert to db queue success,tradeno:T277160000, isSuccess:true, useTime=93 ms, clientReqUrl=/alipayNotify.do?body=%E7%BA%AF%E6%94%AF%E4%BB%98%E5%AE%9D%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E5%95%86%E5%93%81----%E7%BA%AF%E6%94%AF%E4%BB%98%E5%AE%9D%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E5%95%86%E5%93%81&buyer_email=novelty-fish%40163.com&buyer_id=2088002184091500&discount=0.00&gmt_create=2015-01-26+21%3A14%3A38&gmt_payment=2015-01-26+21%3A14%3A39&is_total_fee_adjust=N&notify_id=65ec357f0e46b5af0f5aadb4fe39ad8e4s&notify_time=2015-01-26+21%3A14%3A39&notify_type=trade_status_sync&out_trade_no=T277160000&payment_type=8&price=2.00&quantity=1&seller_email=55market%4055tuan.com&seller_id=2088411506548729&sign=hnMI4bOf9XTw%2FDI7azeqFsni6LBW%2BoTYmxG0PruTSkLkFrllvba7awn3D0NVjQtTJSaH3GkLyvGU3GMFIyhB10vYkYTmLy7Sd7OqifS%2F0sEBt3W44mvCvwmkRx9x3HbSjcegFNht7ba80uzxXGnbcUpUZiZMJq1ow8YcDqpzwIw%3D&sign_type=RSA&subject=%E7%BA%AF%E6%94%AF%E4%BB%98%E5%AE%9D%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E5%95%86%E5%93%81----%E7%BA%AF%E6%94%AF%E4%BB%98%E5%AE%9D%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E5%95%86%E5%93%81&total_fee=2.00&trade_no=2015012645541850&trade_status=TRADE_SUCCESS&use_coupon=N, ,]]";
		String str4 = "[{visitMethodIn:TradeService.tradePayNotify,params:[MOBILE_CLIENT_ALIPAY_SDK,{buyer_id=2088002184091500, trade_no=2015030300001000500045777302, body=既支持支付宝＋又支持到店付款的服务单测试商品--, use_coupon=N, notify_time=2015-03-03 16:07:22, subject=既支持支付宝＋又支持到店付款的服务单测试商品--, sign_type=RSA, is_total_fee_adjust=N, notify_type=trade_status_sync, out_trade_no=T514680000, trade_status=TRADE_SUCCESS, gmt_payment=2015-03-03 16:06:41, discount=0.00, sign=J7M4r+rtYDy2VnVFfgCHTv/q7HEY8/7mX+lPK0gx9N7IvkeYxevB4tocnvF1GIvryTmi5Ficm0wQBi4p4/n+SFGk5bEEyGd97XG4OYEhnB89QvUV2mYGmumBa/ZPUArHlDry38AjHCqgvrnDeQzQMOLSRXsU+5P3ULRAro5pf2I=, gmt_create=2015-03-03 16:06:41, buyer_email=novelty-fish@163.com, price=0.98, total_fee=0.98, quantity=1, seller_id=2088411506548729, seller_email=55market@55tuan.com, notify_id=6c5749d3b00daddaf0919bc3433f0d024s, payment_type=8},/alipayNotify.do?body=%E6%97%A2%E6%94%AF%E6%8C%81%E6%94%AF%E4%BB%98%E5%AE%9D%EF%BC%8B%E5%8F%88%E6%94%AF%E6%8C%81%E5%88%B0%E5%BA%97%E4%BB%98%E6%AC%BE%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E6%B5%8B%E8%AF%95%E5%95%86%E5%93%81--&buyer_email=novelty-fish%40163.com&buyer_id=2088002184091500&discount=0.00&gmt_create=2015-03-03+16%3A06%3A41&gmt_payment=2015-03-03+16%3A06%3A41&is_total_fee_adjust=N&notify_id=6c5749d3b00daddaf0919bc3433f0d024s&notify_time=2015-03-03+16%3A07%3A22&notify_type=trade_status_sync&out_trade_no=T514680000&payment_type=8&price=0.98&quantity=1&seller_email=55market%4055tuan.com&seller_id=2088411506548729&sign=J7M4r%2BrtYDy2VnVFfgCHTv%2Fq7HEY8%2F7mX%2BlPK0gx9N7IvkeYxevB4tocnvF1GIvryTmi5Ficm0wQBi4p4%2Fn%2BSFGk5bEEyGd97XG4OYEhnB89QvUV2mYGmumBa%2FZPUArHlDry38AjHCqgvrnDeQzQMOLSRXsU%2B5P3ULRAro5pf2I%3D&sign_type=RSA&subject=%E6%97%A2%E6%94%AF%E6%8C%81%E6%94%AF%E4%BB%98%E5%AE%9D%EF%BC%8B%E5%8F%88%E6%94%AF%E6%8C%81%E5%88%B0%E5%BA%97%E4%BB%98%E6%AC%BE%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E6%B5%8B%E8%AF%95%E5%95%86%E5%93%81--&total_fee=0.98&trade_no=2015030300001000500045777302&trade_status=TRADE_SUCCESS&use_coupon=N,110.75.145.1,4]}][{visitMethodIn:TradeService.tradePayNotify,params:[MOBILE_CLIENT_ALIPAY_SDK,{buyer_id=2088002184091500, trade_no=2015030300001000500045777302, body=既支持支付宝＋又支持到店付款的服务单测试商品--, use_coupon=N, notify_time=2015-03-03 16:07:22, subject=既支持支付宝＋又支持到店付款的服务单测试商品--, sign_type=RSA, is_total_fee_adjust=N, notify_type=trade_status_sync, out_trade_no=T514680000, trade_status=TRADE_SUCCESS, gmt_payment=2015-03-03 16:06:41, discount=0.00, sign=J7M4r+rtYDy2VnVFfgCHTv/q7HEY8/7mX+lPK0gx9N7IvkeYxevB4tocnvF1GIvryTmi5Ficm0wQBi4p4/n+SFGk5bEEyGd97XG4OYEhnB89QvUV2mYGmumBa/ZPUArHlDry38AjHCqgvrnDeQzQMOLSRXsU+5P3ULRAro5pf2I=, gmt_create=2015-03-03 16:06:41, buyer_email=novelty-fish@163.com, price=0.98, total_fee=0.98, quantity=1, seller_id=2088411506548729, seller_email=55market@55tuan.com, notify_id=6c5749d3b00daddaf0919bc3433f0d024s, payment_type=8},/alipayNotify.do?body=%E6%97%A2%E6%94%AF%E6%8C%81%E6%94%AF%E4%BB%98%E5%AE%9D%EF%BC%8B%E5%8F%88%E6%94%AF%E6%8C%81%E5%88%B0%E5%BA%97%E4%BB%98%E6%AC%BE%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E6%B5%8B%E8%AF%95%E5%95%86%E5%93%81--&buyer_email=novelty-fish%40163.com&buyer_id=2088002184091500&discount=0.00&gmt_create=2015-03-03+16%3A06%3A41&gmt_payment=2015-03-03+16%3A06%3A41&is_total_fee_adjust=N&notify_id=6c5749d3b00daddaf0919bc3433f0d024s&notify_time=2015-03-03+16%3A07%3A22&notify_type=trade_status_sync&out_trade_no=T514680000&payment_type=8&price=0.98&quantity=1&seller_email=55market%4055tuan.com&seller_id=2088411506548729&sign=J7M4r%2BrtYDy2VnVFfgCHTv%2Fq7HEY8%2F7mX%2BlPK0gx9N7IvkeYxevB4tocnvF1GIvryTmi5Ficm0wQBi4p4%2Fn%2BSFGk5bEEyGd97XG4OYEhnB89QvUV2mYGmumBa%2FZPUArHlDry38AjHCqgvrnDeQzQMOLSRXsU%2B5P3ULRAro5pf2I%3D&sign_type=RSA&subject=%E6%97%A2%E6%94%AF%E6%8C%81%E6%94%AF%E4%BB%98%E5%AE%9D%EF%BC%8B%E5%8F%88%E6%94%AF%E6%8C%81%E5%88%B0%E5%BA%97%E4%BB%98%E6%AC%BE%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E6%B5%8B%E8%AF%95%E5%95%86%E5%93%81--&total_fee=0.98&trade_no=2015030300001000500045777302&trade_status=TRADE_SUCCESS&use_coupon=N,110.75.145.1,4]}][{visitMethodIn:TradeService.tradePayNotify,params:[MOBILE_CLIENT_ALIPAY_SDK,{buyer_id=2088002184091500, trade_no=2015030300001000500045777302, body=既支持支付宝＋又支持到店付款的服务单测试商品--, use_coupon=N, notify_time=2015-03-03 16:07:22, subject=既支持支付宝＋又支持到店付款的服务单测试商品--, sign_type=RSA, is_total_fee_adjust=N, notify_type=trade_status_sync, out_trade_no=T514680000, trade_status=TRADE_SUCCESS, gmt_payment=2015-03-03 16:06:41, discount=0.00, sign=J7M4r+rtYDy2VnVFfgCHTv/q7HEY8/7mX+lPK0gx9N7IvkeYxevB4tocnvF1GIvryTmi5Ficm0wQBi4p4/n+SFGk5bEEyGd97XG4OYEhnB89QvUV2mYGmumBa/ZPUArHlDry38AjHCqgvrnDeQzQMOLSRXsU+5P3ULRAro5pf2I=, gmt_create=2015-03-03 16:06:41, buyer_email=novelty-fish@163.com, price=0.98, total_fee=0.98, quantity=1, seller_id=2088411506548729, seller_email=55market@55tuan.com, notify_id=6c5749d3b00daddaf0919bc3433f0d024s, payment_type=8},/alipayNotify.do?body=%E6%97%A2%E6%94%AF%E6%8C%81%E6%94%AF%E4%BB%98%E5%AE%9D%EF%BC%8B%E5%8F%88%E6%94%AF%E6%8C%81%E5%88%B0%E5%BA%97%E4%BB%98%E6%AC%BE%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E6%B5%8B%E8%AF%95%E5%95%86%E5%93%81--&buyer_email=novelty-fish%40163.com&buyer_id=2088002184091500&discount=0.00&gmt_create=2015-03-03+16%3A06%3A41&gmt_payment=2015-03-03+16%3A06%3A41&is_total_fee_adjust=N&notify_id=6c5749d3b00daddaf0919bc3433f0d024s&notify_time=2015-03-03+16%3A07%3A22&notify_type=trade_status_sync&out_trade_no=T514680000&payment_type=8&price=0.98&quantity=1&seller_email=55market%4055tuan.com&seller_id=2088411506548729&sign=J7M4r%2BrtYDy2VnVFfgCHTv%2Fq7HEY8%2F7mX%2BlPK0gx9N7IvkeYxevB4tocnvF1GIvryTmi5Ficm0wQBi4p4%2Fn%2BSFGk5bEEyGd97XG4OYEhnB89QvUV2mYGmumBa%2FZPUArHlDry38AjHCqgvrnDeQzQMOLSRXsU%2B5P3ULRAro5pf2I%3D&sign_type=RSA&subject=%E6%97%A2%E6%94%AF%E6%8C%81%E6%94%AF%E4%BB%98%E5%AE%9D%EF%BC%8B%E5%8F%88%E6%94%AF%E6%8C%81%E5%88%B0%E5%BA%97%E4%BB%98%E6%AC%BE%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E6%B5%8B%E8%AF%95%E5%95%86%E5%93%81--&total_fee=0.98&trade_no=2015030300001000500045777302&trade_status=TRADE_SUCCESS&use_coupon=N,110.75.145.1,4]}][{visitMethodIn:TradeService.tradePayNotify,params:[MOBILE_CLIENT_ALIPAY_SDK,{buyer_id=2088002184091500, trade_no=2015030300001000500045777302, body=既支持支付宝＋又支持到店付款的服务单测试商品--, use_coupon=N, notify_time=2015-03-03 16:07:22, subject=既支持支付宝＋又支持到店付款的服务单测试商品--, sign_type=RSA, is_total_fee_adjust=N, notify_type=trade_status_sync, out_trade_no=T514680000, trade_status=TRADE_SUCCESS, gmt_payment=2015-03-03 16:06:41, discount=0.00, sign=J7M4r+rtYDy2VnVFfgCHTv/q7HEY8/7mX+lPK0gx9N7IvkeYxevB4tocnvF1GIvryTmi5Ficm0wQBi4p4/n+SFGk5bEEyGd97XG4OYEhnB89QvUV2mYGmumBa/ZPUArHlDry38AjHCqgvrnDeQzQMOLSRXsU+5P3ULRAro5pf2I=, gmt_create=2015-03-03 16:06:41, buyer_email=novelty-fish@163.com, price=0.98, total_fee=0.98, quantity=1, seller_id=2088411506548729, seller_email=55market@55tuan.com, notify_id=6c5749d3b00daddaf0919bc3433f0d024s, payment_type=8},/alipayNotify.do?body=%E6%97%A2%E6%94%AF%E6%8C%81%E6%94%AF%E4%BB%98%E5%AE%9D%EF%BC%8B%E5%8F%88%E6%94%AF%E6%8C%81%E5%88%B0%E5%BA%97%E4%BB%98%E6%AC%BE%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E6%B5%8B%E8%AF%95%E5%95%86%E5%93%81--&buyer_email=novelty-fish%40163.com&buyer_id=2088002184091500&discount=0.00&gmt_create=2015-03-03+16%3A06%3A41&gmt_payment=2015-03-03+16%3A06%3A41&is_total_fee_adjust=N&notify_id=6c5749d3b00daddaf0919bc3433f0d024s&notify_time=2015-03-03+16%3A07%3A22&notify_type=trade_status_sync&out_trade_no=T514680000&payment_type=8&price=0.98&quantity=1&seller_email=55market%4055tuan.com&seller_id=2088411506548729&sign=J7M4r%2BrtYDy2VnVFfgCHTv%2Fq7HEY8%2F7mX%2BlPK0gx9N7IvkeYxevB4tocnvF1GIvryTmi5Ficm0wQBi4p4%2Fn%2BSFGk5bEEyGd97XG4OYEhnB89QvUV2mYGmumBa%2FZPUArHlDry38AjHCqgvrnDeQzQMOLSRXsU%2B5P3ULRAro5pf2I%3D&sign_type=RSA&subject=%E6%97%A2%E6%94%AF%E6%8C%81%E6%94%AF%E4%BB%98%E5%AE%9D%EF%BC%8B%E5%8F%88%E6%94%AF%E6%8C%81%E5%88%B0%E5%BA%97%E4%BB%98%E6%AC%BE%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E6%B5%8B%E8%AF%95%E5%95%86%E5%93%81--&total_fee=0.98&trade_no=2015030300001000500045777302&trade_status=TRADE_SUCCESS&use_coupon=N,110.75.145.1,4]}][{visitMethodIn:TradeService.tradePayNotify,params:[MOBILE_CLIENT_ALIPAY_SDK,{buyer_id=2088002184091500, trade_no=2015030300001000500045777302, body=既支持支付宝＋又支持到店付款的服务单测试商品--, use_coupon=N, notify_time=2015-03-03 16:07:22, subject=既支持支付宝＋又支持到店付款的服务单测试商品--, sign_type=RSA, is_total_fee_adjust=N, notify_type=trade_status_sync, out_trade_no=T514680000, trade_status=TRADE_SUCCESS, gmt_payment=2015-03-03 16:06:41, discount=0.00, sign=J7M4r+rtYDy2VnVFfgCHTv/q7HEY8/7mX+lPK0gx9N7IvkeYxevB4tocnvF1GIvryTmi5Ficm0wQBi4p4/n+SFGk5bEEyGd97XG4OYEhnB89QvUV2mYGmumBa/ZPUArHlDry38AjHCqgvrnDeQzQMOLSRXsU+5P3ULRAro5pf2I=, gmt_create=2015-03-03 16:06:41, buyer_email=novelty-fish@163.com, price=0.98, total_fee=0.98, quantity=1, seller_id=2088411506548729, seller_email=55market@55tuan.com, notify_id=6c5749d3b00daddaf0919bc3433f0d024s, payment_type=8},/alipayNotify.do?body=%E6%97%A2%E6%94%AF%E6%8C%81%E6%94%AF%E4%BB%98%E5%AE%9D%EF%BC%8B%E5%8F%88%E6%94%AF%E6%8C%81%E5%88%B0%E5%BA%97%E4%BB%98%E6%AC%BE%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E6%B5%8B%E8%AF%95%E5%95%86%E5%93%81--&buyer_email=novelty-fish%40163.com&buyer_id=2088002184091500&discount=0.00&gmt_create=2015-03-03+16%3A06%3A41&gmt_payment=2015-03-03+16%3A06%3A41&is_total_fee_adjust=N&notify_id=6c5749d3b00daddaf0919bc3433f0d024s&notify_time=2015-03-03+16%3A07%3A22&notify_type=trade_status_sync&out_trade_no=T514680000&payment_type=8&price=0.98&quantity=1&seller_email=55market%4055tuan.com&seller_id=2088411506548729&sign=J7M4r%2BrtYDy2VnVFfgCHTv%2Fq7HEY8%2F7mX%2BlPK0gx9N7IvkeYxevB4tocnvF1GIvryTmi5Ficm0wQBi4p4%2Fn%2BSFGk5bEEyGd97XG4OYEhnB89QvUV2mYGmumBa%2FZPUArHlDry38AjHCqgvrnDeQzQMOLSRXsU%2B5P3ULRAro5pf2I%3D&sign_type=RSA&subject=%E6%97%A2%E6%94%AF%E6%8C%81%E6%94%AF%E4%BB%98%E5%AE%9D%EF%BC%8B%E5%8F%88%E6%94%AF%E6%8C%81%E5%88%B0%E5%BA%97%E4%BB%98%E6%AC%BE%E7%9A%84%E6%9C%8D%E5%8A%A1%E5%8D%95%E6%B5%8B%E8%AF%95%E5%95%86%E5%93%81--&total_fee=0.98&trade_no=2015030300001000500045777302&trade_status=TRADE_SUCCESS&use_coupon=N,110.75.145.1,4]}]";
//		Long start1 = System.currentTimeMillis();
//		for(int i=0;i<10000;i++){
//			sensitiveWordOfString(str4,sensitiveWord);
//		}
//		long end1 = System.currentTimeMillis();
//		System.out.println(end1 - start1);
		Map<String, String> requestParams = new HashMap<String, String>();
		requestParams.put("seller_id", "2088411506548729");
		requestParams.put("seller_email", "lu@shinehot.com.cn");
		requestParams.put("notify_id", "08148fce6796c0f86dca3c71efc6107b4s");
		requestParams.put("payment_type", "8");
		requestParams.put("sign", "G7nGi0mZfkUHI8SATlR/YONFkPBeO65worKD/GzVAZRfdMe1ahg6uZXggg6nZE3KCl/2zNYO+G8BtUY3LBL4wGnHVZcIqGv4db6qrolIXDRrnMkDporppg/ETWleotPrpXxru4MQoqrshb/xi4kzWMk04NT3Ob86QXEUjBIEvDU=");
		requestParams.put("gmt_create", "2014-12-05 14:03:25");
		requestParams.put("buyer_email", "novelty-fish@163.com");
		requestParams.put("price", "1.00");
		requestParams.put("total_fee", "1.00");
		requestParams.put("quantity", "1");
		requestParams.put("notify_type", "N");
		requestParams.put("out_trade_no", "T111530000");
		requestParams.put("trade_status", "TRADE_SUCCESS");
		requestParams.put("gmt_payment", "2014-12-05 14:03:26");
		requestParams.put("discount", "0.00");
		requestParams.put("buyer_id", "2088002184091500");
		requestParams.put("trade_no", "2014120547762250");
		requestParams.put("body", "购买-物流单-物流配送-支付宝");
		requestParams.put("use_coupon", "N");
		requestParams.put("notify_time", "2014-12-05 14:07:15");
		requestParams.put("subject", "购买-物流单-物流配送-支付宝");
		requestParams.put("sign_type", "RSA");
		requestParams.put("is_total_fee_adjust", "N");
		System.out.println("@@@@"+sensitiveWordOfMap2(requestParams,sensitiveWord));
		System.out.println(objectMapper.writeValueAsString(requestParams));
		System.out.println(sensitiveWordOfString(objectMapper.writeValueAsString(requestParams),sensitiveWord));

		for(int i=0;i<sensitiveWord.length;i++){
			if(requestParams.containsKey(sensitiveWord[i])){
				/*
				 * 判断敏感词是否为邮箱，
				 * 是，则用replaceEMail(String str)处理
				 * 否，则用replaceId(String str)处理
				 */
				if(requestParams.get(sensitiveWord[i]).contains("@"))
					requestParams.put(sensitiveWord[i],replaceEMail(requestParams.get(sensitiveWord[i]),3));
				else
					requestParams.put(sensitiveWord[i],replaceId(requestParams.get(sensitiveWord[i]),2,3));
			}
		}

		String res = null;
		try {
			res = objectMapper.writeValueAsString(requestParams);
		} catch (Exception e) {
			logger.error(e.getMessage(), e.fillInStackTrace());
			throw new RuntimeException("object  conver json exception ");
		}
		System.out.println(res);
		logger.info(null);
		//		QueueModel queue = new QueueModel();
//		queue.setId(1l);;
//		queue.setQueueStatusEnum(QueueStatusEnum.DELETED);
//		String jsonData = convertObjectToString(queue);
//		System.out.println(jsonData);
//		queue = convertStringToObject(jsonData, QueueModel.class);
//		System.out.println(queue);
	}
}
```
## log日志

> * [logback官方网址](https://logback.qos.ch/)
> * 采用效率更高的logback组件，框架采用静态编译的slf4j框架，不再使用log4j组件，而对于通用于很多框架中的common-logging框架(具体实现了JCL标准)建议采用桥接方式进行无缝过渡到slf4j+logback架构中来。
### slf4j与common-logging的区别
> * 二者都只是一个上层定义日志接口的框架需要底层具体实现其接口的组件，比如，log4j,logback,Simple Logger,java.util.logging...
> * common-logging是动态绑定方式，即程序运行中决定绑定哪个日志组件，而slf4j是静态绑定，在编译是就确定了要绑定使用哪个组件，对于动态绑定某些框架将无法使用，比如OSGI框架，而slf4j框架没这个问题。common-logging是apache下的开源框架得到更多框架的默认支持
### spring中使用log
> * [Logging dependencies in Spring](https://spring.io/blog/2009/12/04/logging-dependencies-in-spring/)
> * Spring默认强制使用Jakarta Commons Logging API框架(也就是**JCL**),亦即common-logging框架，其会运行时找到相应的实现日志功能的组件，如果找不到，则用java自带的java.util.logging(也就是俗称JUL的组件),为了保持兼容性，才一直还使用common-logging，实际上如果重新来过，一定会采用SLF4J+LOGBACK的搭配模式。

#### maven配置

> * 这里强烈推荐SLF4J + LOGBACK的搭配。

##### 移除对commons-logging框架的依赖

```xml
<dependencies>
   <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-context</artifactId>
      <version>3.1.2.RELEASE</version>
      <scope>runtime</scope>
      <exclusions>
         <exclusion>
            <groupId>commons-logging</groupId>
            <artifactId>commons-logging</artifactId>
         </exclusion>
      </exclusions>
   </dependency>
</dependencies>
```

##### 引入slf4j框架替代commons-logging来实现JCL

> * 关键是jcl-over-slf4j的桥接组件的引入，确保能无缝将JCL过渡到slf4j。
> * 这里采用log4j日志组件，但我们建议采用性能更优越的logback。

```
<dependencies>
   <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-context</artifactId>
      <version>3.1.2.RELEASE</version>
      <scope>runtime</scope>
      <exclusions>
         <exclusion>
           <groupId>commons-logging</groupId>
           <artifactId>commons-logging</artifactId>
         </exclusion>
      </exclusions>
   </dependency>
   <dependency>
      <groupId>org.slf4j</groupId>
      <artifactId>jcl-over-slf4j</artifactId>
      <version>1.7.0</version>
      <scope>runtime</scope>
   </dependency>
   <dependency>
      <groupId>org.slf4j</groupId>
      <artifactId>slf4j-api</artifactId>
      <version>1.7.0</version>
      <scope>runtime</scope>
   </dependency>
   <dependency>
     <groupId>org.slf4j</groupId>
     <artifactId>slf4j-log4j12</artifactId>
     <version>1.7.0</version>
     <scope>runtime</scope>
  </dependency>
  <dependency>
     <groupId>log4j</groupId>
     <artifactId>log4j</artifactId>
     <version>1.2.14</version>
     <scope>runtime</scope>
  </dependency>
</dependencies>
```
##### 直接使用logback

> * logback分为三个模块：logback-classic,logback-core,logback-access。
>     * logback-core是logback-classic,logback-access的上层封装应用。
>     * logback-core上有个姊妹项目logback-audit，可以提供触发日志事件。
> * logback-classic直接实现了slf4j的所有接口，且性能远超log4j，由于其实现了slf4j，可以在使用JUL,log4j的日志框架中无缝过渡。
> * logback-access确保与servlet容器完美集成，比如：Tomcat或者Jetty,也提供了Http-access的日志记录功能，即记录HTTP访问日志。
> * 比如 maven项目的web-app，很简单，在WEB-INF/lib目录下存放logback-classic.x.x.x.jar,logback-core.x.x.x.jar,slf4j-api.x.x.x.jar包
> * maven pom中只要引入一个依赖即可，其实，该依赖会自动导致引入logback-core/slf4j-api的jar包（**已实际验证过了**）如下：

```xml
<dependency>
    <groupId>ch.qos.logback</groupId>
    <artifactId>logback-classic</artifactId>
    <version>1.0.13</version>
</dependency>
```
#### maven的web-app下配置logback.xml
##### logback.xml项目中的放置位置
> * 一般放于src/main/resources和src/test/resources下，实际在classpath下能找到即可，logback组件会自动载入**该固定名称的文件**。

##### 交易项目目前的配置

> * 需要配置log.home变量，如:/data/application/logs/mdpaygate
> * 需要配置log.root.level变量，如：INFO

```xml
<?xml version="1.0" encoding="UTF-8"?>
<configuration>
	<!-- <property resource="app.properties" /> -->
 	<property name="pattern.category" value="%c{2}"/>
	<!-- default log -->
	<appender name="DEFAULT-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/default/common-default.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/default/common-default.log.%d{yyyyMMdd}</fileNamePattern>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} - [%m]%n</pattern>
		</encoder>
	</appender>
	<!-- error log -->
	<appender name="ERROR-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/error/common-error.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/error/common-error.log.%d{yyyyMMdd}</fileNamePattern>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} %L - [%m]%n</pattern>
		</encoder>
		<filter class="ch.qos.logback.classic.filter.ThresholdFilter">
    		<level>ERROR</level>
    	</filter>
	</appender>
	<!-- warn log -->
	<appender name="WARN-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/warn/common-warn.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/warn/common-warn.log.%d{yyyyMMdd}</fileNamePattern>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} %L - [%m]%n</pattern>
		</encoder>
		<filter class="ch.qos.logback.classic.filter.ThresholdFilter">
    		<level>WARN</level>
    	</filter>
	</appender>
	<!-- perf log -->
	<appender name="PERF-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/perf/common-perf.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/perf/common-perf.log.%d{yyyyMMdd}</fileNamePattern>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} - [%m]%n</pattern>
		</encoder>
	</appender>

	<!-- service log -->
	<appender name="SERVICE-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/service/common-service.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/service/common-service.log.%d{yyyyMMdd}</fileNamePattern>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} - [%m]%n</pattern>
		</encoder>
	</appender>
	<!-- dao log -->
	<appender name="DAO-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
    	<file>${log.home}/dao/common-dao.log</file>
    	<rollingPolicy class="ch.qos.logback.core.rolling.FixedWindowRollingPolicy">
	      <fileNamePattern>${log.home}/dao/common-dao.log.%d{yyyyMMdd}</fileNamePattern>
	    </rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} - [%m]%n</pattern>
		</encoder>
  	</appender>
	<!-- business log -->
	<appender name="BUSINESS-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/business/common-business.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/business/common-business.log.%d{yyyyMMdd}</fileNamePattern>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} - [%m]%n</pattern>
		</encoder>
	</appender>
	<appender name="VISIT-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/visit/common-visit.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/visit/common-visit.log.%d{yyyyMMdd}</fileNamePattern>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} - [%m]%n</pattern>
		</encoder>
	</appender>
	<!-- business order log -->
	<appender name="BUSINESS-ORDER-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/business/business-order.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/business/business-order.log.%d{yyyyMMdd}</fileNamePattern>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} - [%m]%n</pattern>
		</encoder>
	</appender>
	<!-- business task log -->
	<appender name="BUSINESS-TASK-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/business/business-task.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/business/business-task.log.%d{yyyyMMdd}</fileNamePattern>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} - [%m]%n</pattern>
		</encoder>
	</appender>
	<!-- business ALARM log -->
	<appender name="BUSINESS-ALARM-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/business/business-alarm.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/business/business-alarm.log.%d{yyyyMMdd}</fileNamePattern>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} - [%m]%n</pattern>
		</encoder>
	</appender>
	<!-- business notify log -->
	<appender name="BUSINESS-NOTIFY-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/business/business-notify.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/business/business-notify.log.%d{yyyyMMdd}</fileNamePattern>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} - [%m]%n</pattern>
		</encoder>
	</appender>
	<!-- QUEUE TASK APPENDER -->
	<appender name="QUEUE-TASK-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/queue/task.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/queue/task.log.%d{yyyyMMdd}</fileNamePattern>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} - [%m]%n</pattern>
		</encoder>
	</appender>
	<appender name="LOCKER-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/lock/locker.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/lock/locker.log.%d{yyyyMMdd}</fileNamePattern>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} - [%m]%n</pattern>
		</encoder>
	</appender>

	<appender name="TRACE-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/trace/tracing.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/trace/tracing.log.%d{yyyy-MM-dd-HH}.gz</fileNamePattern>
			<maxHistory>72</maxHistory>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%m%n</pattern>
		</encoder>
	</appender>

	<!-- dubbo log -->
	<appender name="DUBBO-MONITOR-APPENDER" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${log.home}/dubbo/dubbo-monitor.log</file>
		<rollingPolicy class="ch.qos.logback.core.rolling.TimeBasedRollingPolicy">
			<fileNamePattern>${log.home}/dubbo/dubbo-monitor.log.%d{yyyyMMdd}</fileNamePattern>
		</rollingPolicy>
		<encoder charset="UTF-8">
			<pattern>%d [%t] %-5p ${pattern.category} - [%m]%n</pattern>
		</encoder>
	</appender>

	<!-- project logger -->
	<logger name="businessLogger" additivity="false">
		<level value="${log.root.level}"/>
		<appender-ref ref="BUSINESS-APPENDER"/>
	</logger>
	<logger name="businessOrderLogger" additivity="false">
		<level value="${log.root.level}"/>
		<appender-ref ref="BUSINESS-ORDER-APPENDER"/>
	</logger>
	<logger name="businessTaskLogger" additivity="false">
		<level value="${log.root.level}"/>
		<appender-ref ref="BUSINESS-TASK-APPENDER"/>
	</logger>
	<logger name="businessAlarmLogger" additivity="false">
		<level value="${log.root.level}"/>
		<appender-ref ref="BUSINESS-ALARM-APPENDER"/>
	</logger>
	<logger name="businessNotifyLogger" additivity="false">
		<level value="${log.root.level}"/>
		<appender-ref ref="BUSINESS-NOTIFY-APPENDER"/>
	</logger>

	<logger name="visitLogger" additivity="false">
		<level value="${log.root.level}"/>
		<appender-ref ref="VISIT-APPENDER"/>
	</logger>

	<logger name="serviceLogger" additivity="false">
		<level value="${log.root.level}"/>
		<appender-ref ref="SERVICE-APPENDER"/>
	</logger>
	<!-- dlock redis -->
	<logger name="DLOCK.LOG" additivity="false">
		<level value="INFO"/>
		<appender-ref ref="LOCKER-APPENDER"/>
	</logger>

	<!-- mask logger -->
	<logger name="org.springframework" level="WARN" />
	<logger name="org.apache" level="WARN" />
	<logger name="httpclient" level="WARN" />
	<logger name="org.mybatis" level="WARN" />
	<!-- mybatis print sql log, need set debug -->
	<logger name="tuan" level="WARN" />
	<logger name="com.tuan.notifyserver" level="WARN" />
	<logger name="com.alibaba.dubbo" level="WARN" />
	<!-- Invoke Chanin log -->
	<logger name="com.tuan.core.common.aop.util.InterceptorChainSupport" level="WARN" />
	<!-- perf log -->
	<logger name="com.tuan.core.common.aop.pref.PerformanceMonitorInterceptor" additivity="false">
		<level value="INFO"/>
		<appender-ref ref="PERF-APPENDER"/>
	</logger>
	<!-- queue task  -->
	<logger name="com.wowo.mdpaygate.service.task" additivity="false">
		<level value="INFO"/>
		<appender-ref ref="QUEUE-TASK-APPENDER"/>
	</logger>
	<logger name="org.apache.ibatis" additivity="true">
		<level value="WARN"/>
		<appender-ref ref="DAO-APPENDER"/>
		<appender-ref ref="ERROR-APPENDER"/>
	</logger>
	<logger name="com.mchange" additivity="true">
		<level value="WARN"/>
		<appender-ref ref="DAO-APPENDER"/>
		<appender-ref ref="ERROR-APPENDER"/>
	</logger>
	<logger name="com.ibatis" additivity="false">
		<level value="WARN"/>
		<appender-ref ref="DAO-APPENDER"/>
		<appender-ref ref="ERROR-APPENDER"/>
	</logger>
	<logger name="java.sql" additivity="false">
		<level value="WARN"/>
		<appender-ref ref="DAO-APPENDER"/>
		<appender-ref ref="ERROR-APPENDER"/>
	</logger>
	<logger name="com.wowotrace.trace" additivity="false">
		<level value="INFO"/>
		<appender-ref ref="TRACE-APPENDER"/>
	</logger>
	<!-- dubbo log -->
	<logger name="com.alibaba.dubbo" additivity="false">
		<level value="INFO"/>
		<appender-ref ref="DUBBO-MONITOR-APPENDER"/>
	</logger>

	<!-- mask logger end -->
	<root level="${log.root.level}">
		<appender-ref ref="DEFAULT-APPENDER"></appender-ref>
		<appender-ref ref="ERROR-APPENDER"></appender-ref>
		<appender-ref ref="WARN-APPENDER"></appender-ref>
	</root>

</configuration>
```
##### java里使用

```java
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

private static final Logger logger = LoggerFactory.getLogger(LogUtil.class);

logger.info(message);

```
