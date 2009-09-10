using System;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    public class IPScanerHelper
    {
        private static IPScaner ipscaner;

        public static string GetAddress(string ip)
        {
            if (ipscaner == null)
            {
                ipscaner = new IPScaner();
                ipscaner.DataPath = AppDomain.CurrentDomain.BaseDirectory + "CoralWry.dat";
                Console.WriteLine(ipscaner.DataPath);
            }
            ipscaner.IP = ip;
            if (!string.IsNullOrEmpty(ipscaner.ErrMsg))
            {
                throw new Exception(ipscaner.ErrMsg);
            }
            return ipscaner.IPLocation();
        }
    }
}
