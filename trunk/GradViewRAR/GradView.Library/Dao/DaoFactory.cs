
using System;
using System.Collections.Generic;
using System.Text;
using System.Reflection;

using GradView.Library.Utility;

///========================================================================
/// Project: GradView	
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)
///========================================================================

namespace  GradView.Library.Data
{
   
	/// <summary>
	///Title: 数据访问工厂类
	///Description: 通用数据访问工厂代码
	///@author LiuJu
	///@version 1.0.0.0
	///@date 2009-8-29
	///@modify 
	///@date 
	/// </summary>
    public class DaoFactory
    {

        private static readonly string path = "GradView.Library";

        private static readonly string dbType = WebConfigHelper.GetAppSetting("DataBaseType");

        /// <summary>
        /// 创建数据访问实体
        /// </summary>
        /// <param name="className">类名</param>
        /// <returns></returns>
        public static object CreateInstance(string className)
        {
            return Assembly.Load(path).CreateInstance(string.Format("{0}.Data.{1}.{2}", path, dbType, className));
        }
    }
}