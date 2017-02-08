using CommonSDK.model;
using CommonSDK.util;
using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CommonSDK
{
    public class CommonSDK
    {
        private static readonly ILog Log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().ReflectedType);
        public static string CreateOrder(CreateOrder param, string key, string url)
        {
            WxPayData responseData = new WxPayData();

            if (param == null)
            {
                responseData.SetValue("result_code", "FAIL");
                responseData.SetValue("return_msg", "CreateOrder请求参数为空");
                return responseData.ToXml();
            }
            if (string.IsNullOrEmpty(key))
            {
                responseData.SetValue("result_code", "FAIL");
                responseData.SetValue("return_msg", "Key请求参数为空");
                return responseData.ToXml();
            }

            if (string.IsNullOrEmpty(url))
            {
                responseData.SetValue("result_code", "FAIL");
                responseData.SetValue("return_msg", "url请求参数为空");
                return responseData.ToXml();
            }

            try
            {
                WxPayData requestParam = new WxPayData();

                if (string.IsNullOrEmpty(param.auth_code))
                {
                    responseData.SetValue("result_code", "FAIL");
                    responseData.SetValue("return_msg", "auth_code请求参数为空");
                    return responseData.ToXml();
                }
                requestParam.SetValue("auth_code", param.auth_code);
                if (!string.IsNullOrEmpty(param.supplier_id))
                    requestParam.SetValue("supplier_id", param.supplier_id);
                if (!string.IsNullOrEmpty(param.shop_id))
                    requestParam.SetValue("shop_id", param.shop_id);
                if (!string.IsNullOrEmpty(param.device_info))
                    requestParam.SetValue("device_info", param.device_info);
                if (!string.IsNullOrEmpty(param.operation_id))
                    requestParam.SetValue("operation_id", param.operation_id);

                requestParam.SetValue("nonce_str", param.nonce_str);
                requestParam.SetValue("no_rebate_money", param.no_rebate_money);

                requestParam.SetValue("partner_id", param.partner_id);
                requestParam.SetValue("spbill_create_ip", param.spbill_create_ip);
                requestParam.SetValue("time_expire", param.time_expire);
                requestParam.SetValue("total_fee", param.total_fee);

                requestParam.SetValue("sign", requestParam.MakeSign(key));
                string paramXml = requestParam.ToXml();
                var responeResult = HttpWebRequestHelper.PostUrlData(url, paramXml);
                Log.Info(string.Format("responeResult:{0}", responeResult));
                return responeResult;
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("CreateOrder异常:{0}", ex.Message);
                responseData.SetValue("result_code", "FAIL");
                responseData.SetValue("return_msg", "未知异常");
                return responseData.ToXml();
            }
        }

        public static string QueryOrder(QueryOrder param, string key, string url)
        {
            WxPayData responseData = new WxPayData();

            if (param == null)
            {
                responseData.SetValue("result_code", "FAIL");
                responseData.SetValue("return_msg", "CreateOrder请求参数为空");
                return responseData.ToXml();
            }
            if (string.IsNullOrEmpty(key))
            {
                responseData.SetValue("result_code", "FAIL");
                responseData.SetValue("return_msg", "Key请求参数为空");
                return responseData.ToXml();
            }

            if (string.IsNullOrEmpty(url))
            {
                responseData.SetValue("result_code", "FAIL");
                responseData.SetValue("return_msg", "url请求参数为空");
                return responseData.ToXml();
            }

            try
            {
                WxPayData requestParam = new WxPayData();

                if (string.IsNullOrEmpty(param.order_id))
                {
                    responseData.SetValue("result_code", "FAIL");
                    responseData.SetValue("return_msg", "order_id请求参数为空");
                    return responseData.ToXml();
                }
                requestParam.SetValue("order_id", param.order_id);

                if (!string.IsNullOrEmpty(param.supplier_id))
                    requestParam.SetValue("supplier_id", param.supplier_id);
                if (!string.IsNullOrEmpty(param.shop_id))
                    requestParam.SetValue("shop_id", param.shop_id);

                requestParam.SetValue("nonce_str", param.nonce_str);
                requestParam.SetValue("partner_id", param.partner_id);
                requestParam.SetValue("sign", requestParam.MakeSign(key));
                string paramXml = requestParam.ToXml();
                var responeResult = HttpWebRequestHelper.PostUrlData(url, paramXml);
                Log.Info(string.Format("responeResult:{0}", responeResult));
                return responeResult;
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("QueryOrder异常:{0}", ex.Message);
                responseData.SetValue("result_code", "FAIL");
                responseData.SetValue("return_msg", "未知异常");
                return responseData.ToXml();
            }
        }
    }
}
