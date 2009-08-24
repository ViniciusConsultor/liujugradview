
using System;
using System.Text;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;

using gv.Data;
using GradView.Library.Utility;

///========================================================================
/// Project: 控件显示测试	
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha(研制开发)
///========================================================================

namespace gv.Data.SqlServer
{

	/// <summary>
	///Title: SysTable类
	///Description: SysTable表SQLServer数据库操作实现代码
	///@author 刘巨
	///@version 1.0.0.0
	///@date 2009-8-24
	///@modify 
	///@date 
	/// </summary>
	partial class DaoSysTable:IDataBaseOperate<SysTable>
	{
		#region 数据库基本操作方法
		
		/// <summary>
		/// 在dbo.sys_table中新增一条记录
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <returns>影响行数</returns>
		public int Insert(SysTable model)
		{
			return Insert(model,null);
		}
		
		/// <summary>
		/// 在dbo.sys_table中新增一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		public int Insert(SysTable model,object trans)
		{
			string sql = "INSERT INTO sys_table (tableid,tableName,tableNameCh,tableStyle,isDel,isEdit,isPage,isAllSelect,isCustomColumn,CustomColumnName) VALUES (@tableid,@tableName,@tableNameCh,@tableStyle,@isDel,@isEdit,@isPage,@isAllSelect,@isCustomColumn,@CustomColumnName)";
			
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
		
		private SqlParameter[] GetParms(SysTable model)
		{
			SqlParameter[] parms = {
				new SqlParameter("@tableid", SqlDbType.VarChar, 40),			
				new SqlParameter("@tableName", SqlDbType.VarChar, 30),			
				new SqlParameter("@tableNameCh", SqlDbType.VarChar, 30),			
				new SqlParameter("@tableStyle", SqlDbType.VarChar, 100),			
				new SqlParameter("@isDel", SqlDbType.VarChar, 10),			
				new SqlParameter("@isEdit", SqlDbType.VarChar, 10),			
				new SqlParameter("@isPage", SqlDbType.VarChar, 10),			
				new SqlParameter("@isAllSelect", SqlDbType.VarChar, 10),			
				new SqlParameter("@isCustomColumn", SqlDbType.VarChar, 10),			
				new SqlParameter("@CustomColumnName", SqlDbType.VarChar, 30),			
				new SqlParameter("@ipxh", SqlDbType.Int, 4)			
				};
				
			parms[0].Value = model.Tableid;	
			if(model.Tablename == null)
				parms[1].Value =  DBNull.Value;
			else
				parms[1].Value = model.Tablename;
			if(model.Tablenamech == null)
				parms[2].Value =  DBNull.Value;
			else
				parms[2].Value = model.Tablenamech;
			if(model.Tablestyle == null)
				parms[3].Value =  DBNull.Value;
			else
				parms[3].Value = model.Tablestyle;
			if(model.Isdel == null)
				parms[4].Value =  DBNull.Value;
			else
				parms[4].Value = model.Isdel;
			if(model.Isedit == null)
				parms[5].Value =  DBNull.Value;
			else
				parms[5].Value = model.Isedit;
			if(model.Ispage == null)
				parms[6].Value =  DBNull.Value;
			else
				parms[6].Value = model.Ispage;
			if(model.Isallselect == null)
				parms[7].Value =  DBNull.Value;
			else
				parms[7].Value = model.Isallselect;
			if(model.Iscustomcolumn == null)
				parms[8].Value =  DBNull.Value;
			else
				parms[8].Value = model.Iscustomcolumn;
			if(model.Customcolumnname == null)
				parms[9].Value =  DBNull.Value;
			else
				parms[9].Value = model.Customcolumnname;
			parms[10].Value = model.Ipxh;	
			
			return parms;
		}
		
		/// <summary>
		/// 在dbo.sys_table表中完整更新一条记录
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <returns>影响行数</returns>
		public int Update(SysTable model)
		{
			return Update(model,null);
		}
		
		/// <summary>
		/// 在dbo.sys_table表中完整更新一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		public int Update(SysTable model,object trans)
		{
		    string sql= "UPDATE sys_table SET tableName=@tableName, tableNameCh=@tableNameCh, tableStyle=@tableStyle, isDel=@isDel, isEdit=@isEdit, isPage=@isPage, isAllSelect=@isAllSelect, isCustomColumn=@isCustomColumn, CustomColumnName=@CustomColumnName WHERE 1=1  AND tableid=@tableid";
				
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
		/// 根据指定的Sql更新dbo.sys_table表中的一条记录
		/// </summary>
		/// <param name="sql">Update的Sql语句</param>
		/// <param name="parms">sql参数</param>
		/// <returns>返回数据库受影响的记录数</returns>
      	public int Update(string sql, object[] parms)
		{
			return Update(sql,parms,null);
		}
		
		/// <summary>
		/// 根据指定的Sql更新dbo.sys_table表中的一条记录,支持数据库事务.
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
		/// 在dbo.sys_table中删除一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>所影响的行数</returns>
		public int Delete(SysTable model)
		{
			return Delete(model,null);
		}
		
		/// <summary>
		/// 在dbo.sys_table中删除一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>所影响的行数</returns>
		public int Delete(SysTable model,object trans)
		{
		    string sql ="DELETE FROM sys_table  WHERE 1=1  AND tableid=@tableid";
			
		    SqlParameter[] parms = {						
							new SqlParameter("@tableid",SqlDbType.VarChar,40)
		    };

			parms[0].Value = model.Tableid;	
			
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
		/// 根据主键获取dbo.sys_table中的一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>实体模型</returns>
		public SysTable  GetModel(SysTable model)
		{  
			string sql="SELECT * FROM sys_table WHERE  tableid=@tableid ";
		   
		    SqlParameter[] parms = {						
							new SqlParameter("@tableid",SqlDbType.VarChar,40)
		    };
		   
				parms[0].Value = model.Tableid;	
			
			IDataReader dr=null;
			SysTable modelReturn = null;
			
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
		/// 根据指定的SQL获取dbo.sys_table中的一条记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>实体对象</returns>
      	public SysTable  GetModel(string sql,object[] parms)
		{
			IDataReader dr =null;
			SqlParameter[] sqlParms =(SqlParameter[]) parms;
			SysTable model = null;
			
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
		/// 在dbo.sys_table中获取所有记录
		/// </summary>
		/// <returns>记录集</returns>
		public IList<SysTable> GetList()
		{
		    string sql = "SELECT * FROM sys_table  order by ipxh asc ";
			
		    IDataReader dr = null;
			
		    IList<SysTable> list = new List<SysTable>();
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
		/// 根据指定的SQL在dbo.sys_table中获取所有记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>记录集</returns>
		public IList<SysTable> GetList(string sql,object[] parms)
		{
			SqlParameter[] sqlParms =(SqlParameter[]) parms;
		    IDataReader dr = null;
			
		    IList<SysTable> list = new List<SysTable>();
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
		/// 在dbo.sys_table中查询某条记录是否存在
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>存在返加true,不存在返回false</returns>
		public bool Exists(SysTable model)
		{
		    string sql = "SELECT COUNT(1) FROM sys_table  WHERE 1=1  AND tableid=@tableid";
					   
		    SqlParameter[] parms = {						
							new SqlParameter("@tableid",SqlDbType.VarChar,40)
		    };
		   
				parms[0].Value = model.Tableid;	
			
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
        /// 装载dbo.sys_table实体
        /// </summary>
        /// <param name="dr">记录集</param>
        /// <returns>返回对象</returns>
		private SysTable LoadModel(IDataReader dr)
		{
			SysTable model = new SysTable();
				model.Tableid	 = dr["tableid"].ToString();
				if (dr["tableName"] != DBNull.Value)
					model.Tablename	 = dr["tableName"].ToString();	
				if (dr["tableNameCh"] != DBNull.Value)
					model.Tablenamech	 = dr["tableNameCh"].ToString();	
				if (dr["tableStyle"] != DBNull.Value)
					model.Tablestyle	 = dr["tableStyle"].ToString();	
				if (dr["isDel"] != DBNull.Value)
					model.Isdel	 = dr["isDel"].ToString();	
				if (dr["isEdit"] != DBNull.Value)
					model.Isedit	 = dr["isEdit"].ToString();	
				if (dr["isPage"] != DBNull.Value)
					model.Ispage	 = dr["isPage"].ToString();	
				if (dr["isAllSelect"] != DBNull.Value)
					model.Isallselect	 = dr["isAllSelect"].ToString();	
				if (dr["isCustomColumn"] != DBNull.Value)
					model.Iscustomcolumn	 = dr["isCustomColumn"].ToString();	
				if (dr["CustomColumnName"] != DBNull.Value)
					model.Customcolumnname	 = dr["CustomColumnName"].ToString();	
				model.Ipxh	 = Convert.ToInt32(dr["ipxh"]);
				
				return model;
		}
		#endregion
	}
}
