﻿
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.ComponentModel;

using GradView.Library.Data;
using GradView.Library.Utility;

///========================================================================
/// Project: GradView	
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Data
{	
	/// <summary>
	///Title: KeyEdittype类
	///Description: KeyEdittype业务逻辑操作类
	///@author LiuJu
	///@version 1.0.0.0
	///@date 2009-8-29
	///@modify 
	///@date 
	/// </summary>
	[DataObject(true)]
	public partial class BizKeyEdittype
	{
		private static IDataBaseOperate< KeyEdittype> baseOperate =(IDataBaseOperate< KeyEdittype>) DaoFactory.CreateInstance("DaoKeyEdittype");
		
		#region BaseOperation
		
		/// <summary>
		/// 在dbo.key_editType中增加一条记录
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <returns>影响行数</returns>
		[DataObjectMethod(DataObjectMethodType.Insert)]
		public static int Insert(KeyEdittype model)
		{
			if(model != null)
				return baseOperate.Insert(model);
			else
				throw new ApplicationException("在dbo.key_editType中增加一条记录时,传递的参数model为Null！");
		}
		
		/// <summary>
		/// 在dbo.key_editType中新增一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		[DataObjectMethod(DataObjectMethodType.Insert)]
		public static int Insert(KeyEdittype model,object trans)
		{
			if(model != null && trans !=null)
				return baseOperate.Insert(model,trans);
			else
			 	throw new ApplicationException("在dbo.key_editType中增加一条记录时,传递的参数model,trans有错误！");;
		}
		
		/// <summary>
		/// 在dbo.key_editType中删除一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>所影响的行数</returns>
		[DataObjectMethod(DataObjectMethodType.Delete)]
		public static int Delete(KeyEdittype model)
		{
			if(model != null)
				return baseOperate.Delete(model);	
			else
				throw new ApplicationException("在dbo.key_editType中删除一条记录时,传递的参数model为Null！");;
		}
		
		/// <summary>
		/// 在dbo.key_editType中删除一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>所影响的行数</returns>
		[DataObjectMethod(DataObjectMethodType.Delete)]
		public static int Delete(KeyEdittype model,object trans)
		{
			if(model != null && trans !=null )
				return baseOperate.Delete(model,trans);	
			else
				throw new ApplicationException("在dbo.key_editType中删除一条记录时,传递的参数model,trans有错误！");
		}
		
		
		/// <summary>
		/// 在dbo.key_editType中完整更新一条记录
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <returns>影响行数</returns>
		[DataObjectMethod(DataObjectMethodType.Update)]
		public static int  Update(KeyEdittype model)
		{
			if(model != null)
				return baseOperate.Update(model);
			else
				 throw new ApplicationException("在dbo.key_editType中更新一条记录时,传递的参数model为Null！");
		}
		
		/// <summary>
		/// 在dbo.key_editType中完整更新一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		[DataObjectMethod(DataObjectMethodType.Update)]
		public static int Update(KeyEdittype model,object trans)
		{
			if(model != null && trans !=null)
				return baseOperate.Update(model,trans);
			else
			   throw new ApplicationException("在dbo.key_editType中更新一条记录时,传递的参数model,trans有错误！");
		}
		
		
		/// <summary>
		/// 根据指定的Sql更新dbo.key_editType表中的一条记录
		/// </summary>
		/// <param name="sql">Update的Sql语句</param>
		/// <param name="parms">sql参数</param>
		/// <returns>返回数据库受影响的记录数</returns>
		[DataObjectMethod(DataObjectMethodType.Update)]
      	public static int Update(string sql, object[] parms)
		{
			if(sql != null && parms !=null)
				return baseOperate.Update(sql,parms);
			else
			   throw new ApplicationException("根据指定的Sql在dbo.key_editType中更新一条记录时,传递的参数sql,parms有错误！");
		}


		/// <summary>
		/// 根据指定的Sql更新dbo.key_editType表中的一条记录,支持数据库事务.
		/// </summary>
		/// <param name="sql">Update的Sql语句</param>
		/// <param name="parms">sql参数</param>
		/// <param name="trans">事务参数</param>
		/// <returns>返回数据库受影响的记录数</returns>
		[DataObjectMethod(DataObjectMethodType.Update)]
      	public static int Update(string sql, object[] parms, object trans)
		{
			if(sql != null && parms !=null && trans !=null)
				return baseOperate.Update(sql,parms,trans);
			else
			   throw new ApplicationException("根据指定的Sql在dbo.key_editType中更新一条记录时,传递的参数sql,parms,trans有错误！");
		}
		
			
		
		
		/// <summary>
		/// 根据主键获取dbo.key_editType中的一条记录
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		[DataObjectMethod(DataObjectMethodType.Select)]
		public  static KeyEdittype GetModel(KeyEdittype model)
		{
			if(model != null )
				return baseOperate.GetModel(model);	
			else
				throw new ApplicationException("根据主键获取dbo.key_editType中的一条记录时,传递的参数model为Null！");
					
		}
		
		// <summary>
		/// 根据指定的SQL获取dbo.key_editType中的一条记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>实体对象</returns>
		[DataObjectMethod(DataObjectMethodType.Select)]
      	public static KeyEdittype  GetModel(string sql,object[] parms)
		{
			if(!string.IsNullOrEmpty(sql))
				return baseOperate.GetModel(sql,parms);	
			else
				throw new ApplicationException("根据指定的SQL获取dbo.key_editType中的一条记录时,传递的参数sql为Null！");
		}
		
		
		/// <summary>
		/// 在dbo.key_editType中获取所有记录
		/// </summary>
		/// <returns></returns>
		[DataObjectMethod(DataObjectMethodType.Select)]
		public static IList<KeyEdittype> GetList()
		{
			return baseOperate.GetList();
		}
		
		/// <summary>
		/// 根据指定的SQL在dbo.key_editType中获取所有记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>记录集</returns>
		[DataObjectMethod(DataObjectMethodType.Select)]
		public static IList<KeyEdittype> GetList(string sql,object[] parms)
		{
			if(!string.IsNullOrEmpty(sql))
				return baseOperate.GetList(sql,parms);	
			else
				throw new ApplicationException("根据指定的SQL在dbo.key_editType中获取所有记录时,传递的参数sql为Null！");
		}	
		
		/// <summary>
		/// 在dbo.key_editType中查询某条记录是否存在
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>存在返加true,不存在返回false</returns>
		[DataObjectMethod(DataObjectMethodType.Select)]
		public static bool Exists(KeyEdittype model)
		{
			if(model != null )
				return baseOperate.Exists(model);	
			else
				throw new ApplicationException("在dbo.key_editType中查询某条记录是否存在时,传递的参数model为Null！");
					
		}
		
		#endregion
	}
}
