using System;
using System.Globalization;
using System.Text;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    ///<summary>
    ///Title: ChineseCalendar类
    ///Description: 中文日期工具类
    ///@author 万灵杰
    ///@version 1.0.0.0
    ///@date 2009年7月30日
    ///@modify 
    ///@date 
    /// </summary>
    public class ChineseCalendar
    {
        private static readonly string[] Animals = new string[] { "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪" };
        private static readonly string[] arrCnNames = new string[] { "日", "一", "二", "三", "四", "五", "六" };
        private static ChineseLunisolarCalendar calendar = new ChineseLunisolarCalendar();
        private const string CelestialStem = "甲乙丙丁戊己庚辛壬癸";
        private static readonly string[] ChineseDayName = new string[] { 
            "初一", "初二", "初三", "初四", "初五", "初六", "初七", "初八", "初九", "初十", "十一", "十二", "十三", "十四", "十五", "十六", 
            "十七", "十八", "十九", "二十", "廿一", "廿二", "廿三", "廿四", "廿五", "廿六", "廿七", "廿八", "廿九", "三十"
         };
        private static readonly string[] ChineseMonthName = new string[] { "正", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十一", "十二" };
        private static string ChineseNumber = "〇一二三四五六七八九";
        private const string TerrestrialBranch = "子丑寅卯辰巳午未申酉戌亥";

        public static string Now
        {
            get
            {
                return GetChineseCalendar(DateTime.Now);
            }
        }

        public static string GetAnimals(DateTime time)
        {
            return Animals[(calendar.GetYear(time) - 4) % 12];
        }

        public static string GetChineseCalendar(DateTime time)
        {
            return string.Format("{0}年{1}月{2}", GetStemBranch(time), GetMonth(time), GetDay(time));
        }

        public static string GetDay(DateTime time)
        {
            return ChineseDayName[calendar.GetDayOfMonth(time) - 1];
        }

        public static string GetMonth(DateTime time)
        {
            int month = calendar.GetMonth(time);
            int year = calendar.GetYear(time);
            int num3 = 0;
            for (int i = 3; i <= month; i++)
            {
                if (calendar.IsLeapMonth(year, i))
                {
                    num3 = i;
                    break;
                }
            }
            if (num3 > 0)
            {
                month--;
            }
            return (((num3 == (month + 1)) ? "闰" : "") + ChineseMonthName[month - 1]);
        }

        public static string GetStemBranch(DateTime time)
        {
            int sexagenaryYear = calendar.GetSexagenaryYear(time);
            int startIndex = (sexagenaryYear % 12) - 1;
            if (startIndex > 11)
            {
                startIndex = 0;
            }
            if (startIndex < 0)
            {
                startIndex = 11;
            }
            int num3 = (sexagenaryYear % 10) - 1;
            if (num3 > 9)
            {
                num3 = 0;
            }
            if (num3 < 0)
            {
                num3 = 9;
            }
            return ("甲乙丙丁戊己庚辛壬癸".Substring(num3, 1) + "子丑寅卯辰巳午未申酉戌亥".Substring(startIndex, 1));
        }

        public static string GetWeekDayName(DateTime time)
        {
            return ("星期" + arrCnNames[(int)time.DayOfWeek]);
        }

        public static string GetYear(DateTime time)
        {
            StringBuilder builder = new StringBuilder();
            int year = calendar.GetYear(time);
            do
            {
                int num2 = year % 10;
                builder.Insert(0, ChineseNumber[num2]);
                year /= 10;
            }
            while (year > 0);
            return builder.ToString();
        }
    }
}
