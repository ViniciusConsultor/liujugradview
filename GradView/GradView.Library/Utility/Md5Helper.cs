using System.Web.Security;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{

    ///<summary>
    ///Title: Md5Helper类
    ///Description: MD5数据加密类
    ///@author 甘宇
    ///@version 1.0.0.0
    ///@date 2009年8月20日
    ///@modify 
    ///@date 
    /// </summary>
    public class Md5Helper
    {
        /// <summary>
        /// MD5加密
        /// </summary>
        /// <param name="str">输入字符串</param>
        /// <param name="code">加密位数16，32</param>
        /// <returns></returns>
        public string Md5(string str, int code)
        {
            if (str != null)
            {
                switch (code)
                {
                    case 16:
                        return FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5").ToLower().Substring(8, 16);
                    default:
                        return FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5").ToLower();
                }
            }
            return "";
        }

        /// <summary>
        /// MD5多次加密
        /// </summary>
        /// <param name="str">输入字符串</param>
        /// <param name="code">加密位数16，32</param>
        /// <returns>string</returns>
        public string Md5Three(string str, int code)
        {
            if (str != null)
            {
                str = Md5(str, code);
                str = Md5(str, code);
                str = Md5(str, code);
                return str;
            }
            return "";
        }
    }
}
