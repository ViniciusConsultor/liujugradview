
using System;
using System.Text;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;

using GradView.Library.Data;
using GradView.Library.Utility;

///========================================================================
/// Project: GradView	
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha(研制开发)
///========================================================================

namespace GradView.Library.Data.SqlServer
{

	/// <summary>
	///Title: SysKeys类
	///Description: SysKeys表SQLServer数据库操作实现代码
	///@author LiuJu
	///@version 1.0.0.0
	///@date 2009-8-28
	///@modify 
	///@date 
	/// </summary>
	partial class DaoSysKeys:IDataBaseOperate<SysKeys>
	{
		#region 数据库基本操作方法
		
		/// <summary>
		/// 在dbo.sys_keys中新增一条记录
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <returns>影响行数</returns>
		public int Insert(SysKeys model)
		{
			return Insert(model,null);
		}
		
		/// <summary>
		/// 在dbo.sys_keys中新增一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		public int Insert(SysKeys model,object trans)
		{
			string sql = "INSERT INTO sys_keys (keyTableID,keyTableName,keyTableNameCh,keyTableSelect,sort) VALUES (@keyTableID,@keyTableName,@keyTableNameCh,@keyTableSelect,@sort)";
			
			SqlParameter[] parms= GetParms(model);

			try
			{
				if(trans == null)
					return SqlHelper.ExecuteNonQuery(sql, parms);
				else
					return SqlHelper.ExecuteNonQuery((SqlTransaction)trans, CommandType.Text, sql, parms);
					
			}
			catch(Exception ex)
			{
				throw ex;
			}
		}
		
		private SqlParameter[] GetParms(SysKeys model)
		{
			SqlParameter[] parms = {
				new SqlParameter("@keyTableID", SqlDbType.VarChar, 40),			
				new SqlParameter("@keyTableName", SqlDbType.VarChar, 30),			
				new SqlParameter("@keyTableNameCh", SqlDbType.VarChar, 30),			
				new SqlParameter("@keyTableSelect", SqlDbType.VarChar, 200),			
				new SqlParameter("@sort", SqlDbType.Int, 4)			
				};
				
			parms[0].Value = model.Keytableid;	
			if(model.Keytablename == null)
				parms[1].Value =  DBNull.Value;
			else
				parms[1].Value = model.Keytablename;
			if(model.Keytablenamech == null)
				parms[2].Value =  DBNull.Value;
			else
				parms[2].Value = model.Keytablenamech;
			if(model.Keytableselect == null)
				parms[3].Value =  DBNull.Value;
			else
				parms[3].Value = model.Keytableselect;
			parms[4].Value = model.Sort;	
			
			return parms;
		}
		
		/// <summary>
		/// 在dbo.sys_keys表中完整更新一条记录
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <returns>影响行数</returns>
		public int Update(SysKeys model)
		{
			return Update(model,null);
		}
		
		/// <summary>
		/// 在dbo.sys_keys表中完整更新一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		public int Update(SysKeys model,object trans)
		{
		    string sql= "UPDATE sys_keys SET keyTableName=@keyTableName, keyTableNameCh=@keyTableNameCh, keyTableSelect=@keyTableSelect, sort=@sort WHERE 1=1  AND keyTableID=@keyTableID";
				
			SqlParameter[] parms = GetParms(model);
			
			try
			{
				if(trans == null)
					return SqlHelper.ExecuteNonQuery(sql, parms);
				else
					return SqlHelper.ExecuteNonQuery((SqlTransaction)trans, CommandType.Text, sql, parms);
					
			}
			catch(Exception ex)
			{
				throw ex;
			}	
		}
		
		/// <summary>
		/// 根据指定的Sql更新dbo.sys_keys表中的一条记录
		/// </summary>
		/// <param name="sql">Update的Sql语句</param>
		/// <param name="parms">sql参数</param>
		/// <returns>返回数据库受影响的记录数</returns>
      	public int Update(string sql, object[] parms)
		{
			return Update(sql,parms,null);
		}
		
		/// <summary>
		/// 根据指定的Sql更新dbo.sys_keys表中的一条记录,支持数据库事务.
		/// </summary>
		/// <param name="sql">Update的Sql语句</param>
		/// <param name="parms">sql参数</param>
		/// <param name="trans">事务参数</param>
		/// <returns>返回数据库受影响的记录数</returns>
      	public int Update(string sql, object[] parms,object trans)
		{
			try
			{
				if(trans == null)
					return SqlHelper.ExecuteNonQuery(sql, (SqlParameter[])parms);
				else
					return SqlHelper.ExecuteNonQuery((SqlTransaction)trans, CommandType.Text, sql, (SqlParameter[])parms);
					
			}
			catch(Exception ex)
			{
				throw ex;
			}		
		}
		
		/// <summary>
		/// 在dbo.sys_keys中删除一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>所影响的行数</returns>
		public int Delete(SysKeys model)
		{
			return Delete(model,null);
		}
		
		/// <summary>
		/// 在dbo.sys_keys中删除一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>所影响的行数</returns>
		public int Delete(SysKeys model,object trans)
		{
		    string sql ="DELETE FROM sys_keys  WHERE 1=1  AND keyTableID=@keyTableID";
			
		    SqlParameter[] parms = {						
							new SqlParameter("@keyTableID",SqlDbType.VarChar,40)
		    };

			parms[0].Value = model.Keytableid;	
			
			try
			{				
				if(trans == null)
					return SqlHelper.ExecuteNonQuery(sql, parms);
				else
					return SqlHelper.ExecuteNonQuery((SqlTransaction)trans, CommandType.Text, sql, parms);
					
			}
			catch(Exception ex)
			{
				throw ex;
			}		
		}
		
		/// <summary>
        /// 根据指定的Sql和存储过程语句执行数据增删改
        /// </summary>
        /// <param name="cmdType"></param>
        /// <param name="cmdText"></param>
        /// <param name="commandParameters"></param>
        /// <returns></returns>
        public int ExecuteNonQuery(CommandType cmdType, string cmdText, params object[] commandParameters) 
        {
            throw new NotImplementedException("本方法未实现，请自行根据实际功能要求实现此方法！");
        }
		
        /// <summary>
        /// 根据指定的Sql、存储过程语句和数据库连接执行数据增删改
        /// </summary>
        /// <param name="connection"></param>
        /// <param name="cmdType"></param>
        /// <param name="cmdText"></param>
        /// <param name="commandParameters"></param>
        /// <returns></returns>
        public int ExecuteNonQuery(object connection, CommandType cmdType, string cmdText, params object[] commandParameters)
        {
            throw new NotImplementedException("本方法未实现，请自行根据实际功能要求实现此方法！");
        }
		
        /// <summary>
        /// 根据指定的Sql和存储过程语句读取记录集
        /// </summary>
        /// <param name="cmdType"></param>
        /// <param name="cmdText"></param>
        /// <param name="commandParameters"></param>
        /// <returns></returns>
        public DataSet ExecuteDataSet(CommandType cmdType, string cmdText, params object[] commandParameters)
        {
            throw new NotImplementedException("本方法未实现，请自行根据实际功能要求实现此方法！");
        }
		
        /// <summary>
        /// 根据指定的Sql和存储过程语句读取一条记录
        /// </summary>
        /// <param name="cmdType"></param>
        /// <param name="cmdText"></param>
        /// <param name="commandParameters"></param>
        /// <returns></returns>
        public DbDataReader ExecuteReader(CommandType cmdType, string cmdText, params object[] commandParameters)
        {
            throw new NotImplementedException("本方法未实现，请自行根据实际功能要求实现此方法！");
        }
		
		/// <summary>
		/// 根据主键获取dbo.sys_keys中的一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>实体模型</returns>
		public SysKeys  GetModel(SysKeys model)
		{  
			string sql="SELECT * FROM sys_keys WHERE  keyTableID=@keyTableID ";
		   
		    SqlParameter[] parms = {						
							new SqlParameter("@keyTableID",SqlDbType.VarChar,40)
		    };
		   
				parms[0].Value = model.Keytableid;	
			
			IDataReader dr=null;
			SysKeys modelReturn = null;
			
			try
			{
				dr = SqlHelper.ExecuteReader(sql, parms);
			
				if (dr.Read())
				{		
					modelReturn = LoadModel(dr);
				}
			}
			catch(Exception ex)
			{
				throw ex;
			}
			finally
			{
		    	if(dr!=null)
					dr.Close();
		    }
			
			return modelReturn;
		}
		
		/// <summary>
		/// 根据指定的SQL获取dbo.sys_keys中的一条记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>实体对象</returns>
      	public SysKeys  GetModel(string sql,object[] parms)
		{
			IDataReader dr =null;
			SqlParameter[] sqlParms =(SqlParameter[]) parms;
			SysKeys model = null;
			
			try
			{
				dr = SqlHelper.ExecuteReader(sql, sqlParms);
			
				if (dr.Read())
				{		
					model = LoadModel(dr);
				}
			}
			catch(Exception ex)
			{
				throw ex;
			}
			finally
			{
		    	if(dr!=null)
					dr.Close();
		    }
			
			return model;
			
		}
		
		/// <summary>
		/// 在dbo.sys_keys中获取所有记录
		/// </summary>
		/// <returns>记录集</returns>
		public IList<SysKeys> GetList()
		{
		    string sql = "SELECT * FROM sys_keys ";
			
		    IDataReader dr = null;
			
		    IList<SysKeys> list = new List<SysKeys>();
			try
			{
				dr = SqlHelper.ExecuteReader(sql, null);
				while (dr.Read())
				{
					list.Add(LoadModel(dr));
				}
			}
			catch(Exception ex)
			{
				throw ex;
			}
			finally
			{
		    	if(dr!=null)
					dr.Close();
		    }
			
		    return list;
		}
		
		/// <summary>
		/// 根据指定的SQL在dbo.sys_keys中获取所有记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>记录集</returns>
		public IList<SysKeys> GetList(string sql,object[] parms)
		{
			SqlParameter[] sqlParms =(SqlParameter[]) parms;
		    IDataReader dr = null;
			
		    IList<SysKeys> list = new List<SysKeys>();
			try
			{
				dr = SqlHelper.ExecuteReader(sql, sqlParms);
				while (dr.Read())
				{
					list.Add(LoadModel(dr));
				}
			}
			catch(Exception ex)
			{
				throw ex;
			}
			finally
			{
		    	if(dr!=null)
					dr.Close();
		    }
			
		    return list;
		}
		
		/// <summary>
		/// 在dbo.sys_keys中查询某条记录是否存在
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>存在返加true,不存在返回false</returns>
		public bool Exists(SysKeys model)
		{
		    string sql = "SELECT COUNT(1) FROM sys_keys  WHERE 1=1  AND keyTableID=@keyTableID";
					   
		    SqlParameter[] parms = {						
							new SqlParameter("@keyTableID",SqlDbType.VarChar,40)
		    };
		   
				parms[0].Value = model.Keytableid;	
			
			try
			{
		    	Object obj = SqlHelper.ExecuteScalar(sql, parms);
		    	return (Convert.ToInt32(obj) > 0);
			}
			catch(Exception ex)
			{
				throw ex;
			}
		}
		
        /// <summary>
        /// 装载dbo.sys_keys实体
        /// </summary>
        /// <param name="dr">记录集</param>
        /// <returns>返回对象</returns>
		private SysKeys LoadModel(IDataReader dr)
		{
			SysKeys model = new SysKeys();
				model.Keytableid	 = dr["keyTableID"].ToString();
				if (dr["keyTableName"] != DBNull.Value)
					model.Keytablename	 = dr["keyTableName"].ToString();	
				if (dr["keyTableNameCh"] != DBNull.Value)
					model.Keytablenamech	 = dr["keyTableNameCh"].ToString();	
				if (dr["keyTableSelect"] != DBNull.Value)
					model.Keytableselect	 = dr["keyTableSelect"].ToString();	
				if (dr["sort"] != DBNull.Value)
					model.Sort	 = Convert.ToInt32(dr["sort"]);	
				
				return model;
		}
		#endregion
	}
}
