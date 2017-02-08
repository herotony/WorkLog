using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CommonSDK.model
{
    public class CreateOrder
    {
        /// <summary>
        /// 设备信息
        /// </summary>
        public string device_info { get; set; }

        /// <summary>
        /// 渠道号
        /// </summary>
        public string partner_id { get; set; }

        /// <summary>
        /// 随机字符串
        /// </summary>
        public string nonce_str { get; set; }
        /// <summary>
        /// 总金额
        /// </summary>
        public string total_fee { get; set; }
        /// <summary>
        /// IP
        /// </summary>
        public string spbill_create_ip { get; set; }
        /// <summary>
        /// 授权码
        /// </summary>
        public string auth_code { get; set; }

        /// <summary>
        /// 交易失效时间
        /// </summary>
        public string time_expire { get; set; }
        /// <summary>
        /// 不返现金额
        /// </summary>
        public string no_rebate_money { get; set; }
        /// <summary>
        /// 操作账号
        /// </summary>
        public string operation_id { get; set; }
        /// <summary>
        /// 窝窝商户id
        /// </summary>
        public string supplier_id { get; set; }
        /// <summary>
        /// 窝窝门店id
        /// </summary>
        public string shop_id { get; set; }
    }
}
