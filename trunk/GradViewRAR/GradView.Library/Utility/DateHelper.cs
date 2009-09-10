using System;
using System.Collections.Generic;
using System.Text;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    ///<summary>
    ///Title: DateHelper类
    ///Description: 日期工具类
    ///@author 万灵杰
    ///@version 1.0.0.0
    ///@date 2009年7月30日
    ///@modify 
    ///@date 
    /// </summary>
    public class DateHelper
    {
        private static readonly string[] arrCnNames = new string[] { "<font color='red'>日</font>", "一", "二", "三", "四", "五", "<font color='red'>六</font>" };

        public static string CnWeekDayName()
        {
            return ("星期" + arrCnNames[(int)DateTime.Now.DayOfWeek]);
        }

        public static string GetDateShortStr(string dateStr)
        {
            if (dateStr.Substring(11) == "00:00:00")
            {
                return dateStr.Substring(0, 9);
            }
            return dateStr;
        }

        public static string GetDateTime()
        {
            return DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        }

        public static string GetSysShortDate()
        {
            return DateTime.Today.ToString("yyyy-MM-dd");
        }
    }
}
