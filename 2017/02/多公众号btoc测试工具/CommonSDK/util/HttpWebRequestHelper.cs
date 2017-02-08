using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Net.Security;
using System.Security.Authentication;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using log4net;
using System.Diagnostics;

namespace CommonSDK.util
{
    public class HttpWebRequestHelper
    {
        private static readonly ILog Log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().ReflectedType);
        /// <summary>
        /// GET
        /// </summary>
        /// <param name="url"></param>
        /// <param name="charset"></param>
        /// <returns></returns>
        public static string GetUrlData(string url, string charset = "utf-8")
        {
            if (string.IsNullOrWhiteSpace(url)) return null;

            var uri = new Uri(url);
            var request = WebRequest.Create(uri);
            request.Method = "GET";
            request.Timeout = 50000;

            var encoding = Encoding.GetEncoding(charset);
            using (var stream = request.GetResponse().GetResponseStream())
            {
                if (null == stream) return string.Empty;
                using (var reader = new StreamReader(stream, encoding))
                {
                    return reader.ReadToEnd();
                }
            }
        }

        //Post 提交
        public static string PostUrlData(string url, string data, string charset = "utf-8")
        {
            var request = (HttpWebRequest)WebRequest.Create(url);
            request.Method = "POST";
            request.Accept = "text/html";
            request.ContentType = "application/x-www-form-urlencoded;charset=" + charset;

            if (!string.IsNullOrWhiteSpace(data))
            {
                //byte[] byteData = Encoding.UTF8.GetBytes(data);
                byte[] byteData = Encoding.GetEncoding(charset).GetBytes(data);
                request.ContentLength = byteData.Length;
                using (var stream = request.GetRequestStream())
                {
                    stream.Write(byteData, 0, byteData.Length);
                }
            }
            var response = (HttpWebResponse)request.GetResponse();

            var encoding = Encoding.GetEncoding(charset);
            using (var stream = response.GetResponseStream())
            {
                if (stream == null) return string.Empty;
                using (var sr = new StreamReader(stream, encoding))
                {
                    return sr.ReadToEnd();
                }
            }
        }

        #region 微信专用

        public static bool CheckValidationResult(object sender, X509Certificate certificate, X509Chain chain, SslPolicyErrors errors)
        {
            //直接确认，否则打不开    
            return true;
        }

        //public static string Post(string xml, string url, bool isUseCert, int timeout)
        //{
        //    System.GC.Collect();//垃圾回收，回收没有正常关闭的http连接

        //    string result = "";//返回结果

        //    HttpWebRequest request = null;
        //    HttpWebResponse response = null;
        //    Stream reqStream = null;

        //    try
        //    {
        //        //设置最大连接数
        //        ServicePointManager.DefaultConnectionLimit = 200;
        //        //设置https验证方式
        //        if (url.StartsWith("https", StringComparison.OrdinalIgnoreCase))
        //        {
        //            ServicePointManager.ServerCertificateValidationCallback =
        //                    new RemoteCertificateValidationCallback(CheckValidationResult);
        //        }

        //        /***************************************************************
        //        * 下面设置HttpWebRequest的相关属性
        //        * ************************************************************/
        //        request = (HttpWebRequest)WebRequest.Create(url);

        //        request.Method = "POST";
        //        request.Timeout = timeout * 1000;

        //        //设置代理服务器
        //        //WebProxy proxy = new WebProxy();                          //定义一个网关对象
        //        //proxy.Address = new Uri(WxPayConfig.PROXY_URL);              //网关服务器端口:端口
        //        //request.Proxy = proxy;

        //        //设置POST的数据类型和长度
        //        request.ContentType = "text/xml";
        //        byte[] data = System.Text.Encoding.UTF8.GetBytes(xml);
        //        request.ContentLength = data.Length;

        //        //是否使用证书
        //        if (isUseCert)
        //        {
        //            string path = HttpContext.Current.Request.PhysicalApplicationPath;
        //            X509Certificate2 cert = new X509Certificate2(path + WxPayConfig.SSLCERT_PATH, WxPayConfig.SSLCERT_PASSWORD);
        //            request.ClientCertificates.Add(cert);
        //            //Log.Debug("WxPayApi", "PostXml used cert");
        //        }

        //        //往服务器写入数据
        //        reqStream = request.GetRequestStream();
        //        reqStream.Write(data, 0, data.Length);
        //        reqStream.Close();

        //        //获取服务端返回
        //        response = (HttpWebResponse)request.GetResponse();

        //        //获取服务端返回数据
        //        StreamReader sr = new StreamReader(response.GetResponseStream(), Encoding.UTF8);
        //        result = sr.ReadToEnd().Trim();
        //        sr.Close();
        //    }
        //    catch (System.Threading.ThreadAbortException e)
        //    {
        //        Log.Error("HttpWebRequestHelper,Thread - caught ThreadAbortException - resetting.");
        //        Log.ErrorFormat("Exception message: {0}", e.Message);
        //        System.Threading.Thread.ResetAbort();
        //    }
        //    catch (WebException e)
        //    {
        //        Log.ErrorFormat("HttpWebRequestHelper:{0}", e.ToString());
        //        if (e.Status == WebExceptionStatus.ProtocolError)
        //        {
        //            Log.Error("HttpWebRequestHelper,StatusCode : " + ((HttpWebResponse)e.Response).StatusCode);
        //            Log.Error("HttpWebRequestHelper,StatusDescription : " + ((HttpWebResponse)e.Response).StatusDescription);
        //        }
        //        throw new Exception(e.ToString());
        //    }
        //    catch (Exception e)
        //    {
        //        Log.ErrorFormat("HttpWebRequestHelper:{0}", e.ToString());
        //        throw new Exception(e.ToString());
        //    }
        //    finally
        //    {
        //        //关闭连接和流
        //        if (response != null)
        //        {
        //            response.Close();
        //        }
        //        if (request != null)
        //        {
        //            request.Abort();
        //        }
        //    }
        //    return result;
        //}

        /// <summary>
        /// 处理http GET请求，返回数据
        /// </summary>
        /// <param name="url">请求的url地址</param>
        /// <returns>http GET成功后返回的数据，失败抛WebException异常</returns>
        public static string Get(string url)
        {
            System.GC.Collect();
            string result = "";

            HttpWebRequest request = null;
            HttpWebResponse response = null;

            //请求url以获取数据
            try
            {
                //设置最大连接数
                ServicePointManager.DefaultConnectionLimit = 200;
                //设置https验证方式
                if (url.StartsWith("https", StringComparison.OrdinalIgnoreCase))
                {
                    ServicePointManager.ServerCertificateValidationCallback =
                            new RemoteCertificateValidationCallback(CheckValidationResult);
                }

                /***************************************************************
                * 下面设置HttpWebRequest的相关属性
                * ************************************************************/
                request = (HttpWebRequest)WebRequest.Create(url);

                request.Method = "GET";

                //设置代理
                //WebProxy proxy = new WebProxy();
                //proxy.Address = new Uri(WxPayConfig.PROXY_URL);
                //request.Proxy = proxy;

                //获取服务器返回
                response = (HttpWebResponse)request.GetResponse();

                //获取HTTP返回数据
                StreamReader sr = new StreamReader(response.GetResponseStream(), Encoding.UTF8);
                result = sr.ReadToEnd().Trim();
                sr.Close();
            }
            catch (System.Threading.ThreadAbortException e)
            {
                Log.Error("HttpWebRequestHelper,Thread - caught ThreadAbortException - resetting.");
                Log.ErrorFormat("Exception message: {0}", e.Message);
                System.Threading.Thread.ResetAbort();
            }
            catch (WebException e)
            {
                Log.ErrorFormat("HttpWebRequestHelper:{0}", e.ToString());
                if (e.Status == WebExceptionStatus.ProtocolError)
                {
                    Log.Error("HttpWebRequestHelper,StatusCode : " + ((HttpWebResponse)e.Response).StatusCode);
                    Log.Error("HttpWebRequestHelper,StatusDescription : " + ((HttpWebResponse)e.Response).StatusDescription);
                }
                throw new Exception(e.ToString());
            }
            catch (Exception e)
            {
                Log.Error("HttpWebRequestHelper" + e.ToString());
                throw new Exception(e.ToString());
            }
            finally
            {
                //关闭连接和流
                if (response != null)
                {
                    response.Close();
                }
                if (request != null)
                {
                    request.Abort();
                }
            }
            return result;
        }
        #endregion

        #region 调用web接口方法
        public static string SendPostInfo(string gateway, string requestData, int time)
        {
            string strResult = string.Empty;
            Stopwatch sw = new Stopwatch();
            try
            {
                sw.Start();
                Encoding code = Encoding.UTF8;
                byte[] bytesRequestData = code.GetBytes(requestData);
                //设置HttpWebRequest基本信息
                HttpWebRequest myReq = (HttpWebRequest)HttpWebRequest.Create(gateway);
                myReq.Method = "post";
                //myReq.ContentType = "APPLICATION/JSON;charset=UTF-8";
                myReq.ContentType = "application/x-www-form-urlencoded";
                //填充POST数据
                myReq.ContentLength = bytesRequestData.Length;
                myReq.Timeout = time;
                myReq.ReadWriteTimeout = time;
                myReq.ServicePoint.ConnectionLimit = 1000;
                myReq.KeepAlive = false;
                using (Stream reqStream = myReq.GetRequestStream())
                {
                    reqStream.Write(bytesRequestData, 0, bytesRequestData.Length);
                }

                using (WebResponse wr = myReq.GetResponse())
                {
                    //在这里对接收到的页面内容进行处理
                    Stream myStream = wr.GetResponseStream();
                    StreamReader sr = new StreamReader(myStream, code);
                    strResult = sr.ReadToEnd();
                }
                sw.Stop();
            }
            catch (WebException webex)
            {
                Log.Error(webex);
            }
            catch (Exception ex)
            {
                Log.Error(ex);
            }
            Log.Debug("发送数据:" + gateway + "?" + requestData + ",返回信息:" + strResult);
            Log.Debug("调用接口运行时间:" + sw.ElapsedMilliseconds.ToString() + "毫秒");
            return strResult;
        }
        #endregion

        #region 调用java接口
        public static string SendPostJavaInfo(string gateway, string requestData, int time)
        {
            string strResult = string.Empty;
            Stopwatch sw = new Stopwatch();
            try
            {
                sw.Start();
                Encoding code = Encoding.UTF8;
                byte[] bytesRequestData = code.GetBytes(requestData);
                //设置HttpWebRequest基本信息
                HttpWebRequest myReq = (HttpWebRequest)HttpWebRequest.Create(gateway);
                myReq.Method = "post";
                myReq.ContentType = "APPLICATION/JSON;charset=UTF-8";
                //myReq.ContentType = "application/x-www-form-urlencoded";
                //填充POST数据
                myReq.ContentLength = bytesRequestData.Length;
                myReq.Timeout = time;

                //myReq.Timeout = timeout;
                myReq.ReadWriteTimeout = time;
                myReq.ServicePoint.ConnectionLimit = 1000;
                myReq.KeepAlive = false;

                using (Stream reqStream = myReq.GetRequestStream())
                {
                    reqStream.Write(bytesRequestData, 0, bytesRequestData.Length);
                }

                using (WebResponse wr = myReq.GetResponse())
                {
                    //在这里对接收到的页面内容进行处理
                    Stream myStream = wr.GetResponseStream();
                    StreamReader sr = new StreamReader(myStream, code);
                    strResult = sr.ReadToEnd();
                }
                sw.Stop();
            }
            catch (WebException webex)
            {
                Log.Error(webex);
            }
            catch (Exception ex)
            {
                Log.Error(ex);
            }
            Log.Debug("发送数据:" + gateway + "?" + requestData + ",返回信息:" + strResult);
            Log.Debug("调用接口运行时间:" + sw.ElapsedMilliseconds.ToString() + "毫秒");
            return strResult;
        }
        #endregion

        #region json转换
        /// <summary>
        /// 将Json数据转为对象
        /// </summary>
        /// <typeparam name="T">目标对象</typeparam>
        /// <param name="jsonText">json数据字符串</param>
        /// <returns></returns>
        //public static T FromJson<T>(string jsonText)
        //{

        //    var result = ServiceStack.Text.JsonSerializer.DeserializeFromString<T>(jsonText);
        //    //var result = WowoJSON.ToObject<T>(jsonText);
        //    return result;
        //}
        #endregion
    }
}
