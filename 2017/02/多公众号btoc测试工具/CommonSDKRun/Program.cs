using CommonSDK;
using CommonSDK.model;
using CommonSDK.util;
using log4net;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace CommonSDKRun
{
    class Program
    {
        private static readonly ILog Log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().ReflectedType);
        /// <summary>
        /// 渠道号
        /// </summary>
        //static readonly string partner_id = "200";
        static readonly string partner_id = "201";
        /// <summary>
        /// 签名Key
        /// </summary>
        static readonly string key = "Lydfaeadadd77Yijdd9jksadfaUhggkh";
        //开发联调
        static readonly string ltCreateOrderUrl = "http://ltsh.wowotuan.com/CommonScanPay/CreateOrder";
        //开发联调
        static readonly string ltQueryOrderUrl = "http://ltsh.wowotuan.com/CommonScanPay/QueryOrder";
 
        static void Main(string[] args)
        {
            log4net.Config.XmlConfigurator.ConfigureAndWatch(
                new FileInfo(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "log4net.config")));

            Console.WriteLine("请输入微信授权码：");
            string code = Console.ReadLine();
            Console.WriteLine("正在支付。。。。");

            CreateOrder createParam = new CreateOrder
            {
                auth_code = code.Trim(),
                //device_info = "test_device_id",
                device_info = "hlgxczs",
                partner_id = partner_id,
                nonce_str = Guid.NewGuid().ToString().Replace("-", ""),
                total_fee = "1",
                time_expire = "5",
                no_rebate_money = "0",
                spbill_create_ip = "127.0.0.1",
                operation_id = "0"
            };

            var createResponeXml = CommonSDK.CommonSDK.CreateOrder(createParam, key, ltCreateOrderUrl);
            Log.InfoFormat("{0}",createResponeXml);
            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine(".......................下单返回......................");
            Console.WriteLine(string.Format("下单返回{0}", createResponeXml));
            Console.WriteLine(".......................执行查询......................");



            WxPayData responseData = new WxPayData();
            responseData.FromXml(createResponeXml, key);


            object shop_id = string.Empty;      //窝窝门店ID
            object supplier_id = string.Empty;  //窝窝商户ID
            object order_id = string.Empty;     //窝窝流水号
          
            shop_id = responseData.GetValue("shop_id") ?? "";
            supplier_id = responseData.GetValue("supplier_id") ?? "";
            order_id = responseData.GetValue("order_id") ?? "";

            QueryOrder queryParam = new QueryOrder
            {
                nonce_str = Guid.NewGuid().ToString().Replace("-", ""),
                partner_id = partner_id,
                shop_id = shop_id.ToString(),
                supplier_id = supplier_id.ToString(),
                order_id = order_id.ToString()
            };
            
            var queryResponeXml = CommonSDK.CommonSDK.QueryOrder(queryParam, key, ltQueryOrderUrl);
            Log.InfoFormat("查询返回{0}", queryResponeXml);
            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine(".......................查询返回......................");
            Console.WriteLine(string.Format("{0}", queryResponeXml));
            Console.ReadKey();
        }
    }
}
