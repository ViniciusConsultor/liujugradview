using System;
using System.Collections.Specialized;
using System.Text;
using System.Text.RegularExpressions;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    ///<summary>
    ///Title: StringHelper类
    ///Description:字符串操作工具类
    ///@author 万灵杰
    ///@version 1.0.0.0
    ///@date 2009年7月30日
    ///@modify 
    ///@date 
    /// </summary>
    public class StringHelper
    {
        public static string GetDateTime()
        {
            return DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        }

        public static string GetStrongString(string str)
        {
            return str.Replace("'", "''");
        }

        public static string GetSubString(string stringToSub, int length)
        {
            Regex regex = new Regex("[一-龥]+", RegexOptions.Compiled);
            char[] chArray = stringToSub.ToCharArray();
            StringBuilder builder = new StringBuilder();
            int num = 0;
            for (int i = 0; i < chArray.Length; i++)
            {
                if (regex.IsMatch(chArray[i].ToString()))
                {
                    num += 2;
                }
                else
                {
                    num++;
                }
                if (num > length)
                {
                    break;
                }
                builder.Append(chArray[i]);
            }
            if (builder.ToString() != stringToSub)
            {
                builder.Append("...");
            }
            return builder.ToString();
        }

        public static string[] GetUnique(string[] strArr)
        {
            NameValueCollection values = new NameValueCollection();
            foreach (string str in strArr)
            {
                if (!string.IsNullOrEmpty(str))
                {
                    values[str] = "";
                }
            }
            return values.AllKeys;
        }

        public static string HtmlDecode(string str)
        {
            str = str.Replace("&gt;", ">");
            str = str.Replace("&lt;", "<");
            str = str.Replace("&nbsp;", ' '.ToString());
            str = str.Replace("&quot;", '"'.ToString());
            str = str.Replace("&#39;", '\''.ToString());
            str = str.Replace("<br/> ", "\r\n");
            return str;
        }

        public static string HTMLEncode(string str)
        {
            str = str.Replace(">", "&gt;");
            str = str.Replace("<", "&lt;");
            str = str.Replace(' '.ToString(), "&nbsp;");
            str = str.Replace('"'.ToString(), "&quot;");
            str = str.Replace('\''.ToString(), "&#39;");
            str = str.Replace('\r'.ToString(), "");
            str = str.Replace('\n'.ToString(), "<br/> ");
            return str;
        }

        public static string[] Split(string content, int length)
        {
            int num2 = (int)Math.Ceiling(((double)StringLength(content)) / ((double)length));
            string[] strArray = new string[num2];
            for (int i = 0; i < num2; i++)
            {
                strArray[i] = GetSubString(content, length);
                int startIndex = strArray[i].EndsWith("...") ? (strArray[i].Length - 3) : strArray[i].Length;
                content = content.Substring(startIndex, content.Length - startIndex);
            }
            return strArray;
        }

        public static int StringLength(string str)
        {
            return Encoding.Default.GetBytes(str).Length;
        }
    }
}
