using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThoughtWorks.QRCode.Codec;

namespace SH.Merchant.AppServer.UI.Web.Controllers
{
    public class CreateQCodeController : ControllerBase
    {
		private static log4net.ILog log = log4net.LogManager.GetLogger("CreateQCodeController");

		public ActionResult Create(long shopId,int cashierId, string cashierName)
        {
			try
			{
				Bitmap img = CreateImgCode(SH.Merchant.AppServer.Infrastructure.ConfigHelper.GetAppSetting("weixinUrl") + "?pid=8003&t=rcode&v=shop" + shopId.ToString() + "&cashierid=" + cashierId.ToString()+ "&cashierName="+HttpUtility.UrlEncode(cashierName), 5);
				return new ImageResult() { Image = ModifyQcode(img, cashierName) };
			}
			catch (Exception ex)
			{
				log.Error(string.Format("输出二维码出现错误：{0}，{1}，{2}",shopId,cashierId,cashierName),ex);
                return null;
			}
        }

        public Bitmap CreateImgCode(string codeNumber, int size)
        {
            //创建二维码生成类  
            QRCodeEncoder qrCodeEncoder = new QRCodeEncoder();
            //设置编码模式  
            qrCodeEncoder.QRCodeEncodeMode = QRCodeEncoder.ENCODE_MODE.BYTE;
            //设置编码测量度  
            qrCodeEncoder.QRCodeScale = size;
            //设置编码版本  
            qrCodeEncoder.QRCodeVersion = 0;
            //设置编码错误纠正  
            qrCodeEncoder.QRCodeErrorCorrect = QRCodeEncoder.ERROR_CORRECTION.M;
            //生成二维码图片  
            System.Drawing.Bitmap image = qrCodeEncoder.Encode(codeNumber);
            return image;
        }

        public Bitmap ModifyQcode(Bitmap qcode, string txt)
        {
            Bitmap image = new Bitmap(qcode.Width, qcode.Height + 50);
            Graphics graphics = Graphics.FromImage(image);
            try
            {
                Font font = new Font("宋体", 20);
				graphics.FillRegion(new SolidBrush(Color.White), new Region(new Rectangle(0, 0, qcode.Width, qcode.Height + 50)));
				graphics.DrawString(txt, font, new SolidBrush(Color.Black), 5, 5);
                graphics.DrawImage(qcode, 0, 50);
            }
            finally
            {
                graphics.Dispose();
            }
            return image;
        }
    }


    public class ImageResult : ActionResult
    {
        public ImageResult() { }
        public Bitmap Image { get; set; }
        public override void ExecuteResult(ControllerContext context)
        {
            if (Image == null)
            {
                throw new ArgumentNullException("Image");
            }
            context.HttpContext.Response.Clear();
            context.HttpContext.Response.ContentType = "image/png";
			MemoryStream stream = new MemoryStream();
			Image.Save(stream, ImageFormat.Png);
			stream.WriteTo(context.HttpContext.Response.OutputStream);			
			stream.Dispose();
			Image.Dispose();
		}
    }
}