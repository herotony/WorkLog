using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CommonSDK.model
{
    public class QueryOrder
    {
        /// <summary>
        /// 窝窝门店id
        /// </summary>
        public string shop_id { get; set; }
        /// <summary>
        /// 渠道号
        /// </summary>
        public string partner_id { get; set; }
        /// <summary>
        /// 窝窝商户id
        /// </summary>
        public string supplier_id { get; set; }
        
        /// <summary>
        /// 窝窝订单号
        /// </summary>
        public string order_id { get; set; }
        /// <summary>
        /// 随机字符串
        /// </summary>
        public string nonce_str { get; set; }
    }
}
