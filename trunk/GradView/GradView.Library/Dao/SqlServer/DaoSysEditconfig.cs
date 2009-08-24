
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
	///Title: SysEditconfig类
	///Description: SysEditconfig表SQLServer数据库操作实现代码
	///@author 刘巨
	///@version 1.0.0.0
	///@date 2009-8-24
	///@modify 
	///@date 
	/// </summary>
	partial class DaoSysEditconfig:IDataBaseOperate<SysEditconfig>
	{
		#region 数据库基本操作方法
		
		/// <summary>
		/// 在dbo.sys_editConfig中新增一条记录
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <returns>影响行数</returns>
		public int Insert(SysEditconfig model)
		{
			return Insert(model,null);
		}
		
		/// <summary>
		/// 在dbo.sys_editConfig中新增一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		public int Insert(SysEditconfig model,object trans)
		{
			string sql = "INSERT INTO sys_editConfig (fieldid,tableid,fieldName,fieldNameCh,isPK,regexTypeID,editTypeID,regrxText,keyTableID,isEdit,sort,minLength,maxLength,isIntType,pxh) VALUES (@fieldid,@tableid,@fieldName,@fieldNameCh,@isPK,@regexTypeID,@editTypeID,@regrxText,@keyTableID,@isEdit,@sort,@minLength,@maxLength,@isIntType,@pxh)";
			
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
		
		private SqlParameter[] GetParms(SysEditconfig model)
		{
			SqlParameter[] parms = {
				new SqlParameter("@fieldid", SqlDbType.VarChar, 40),			
				new SqlParameter("@tableid", SqlDbType.VarChar, 40),			
				new SqlParameter("@fieldName", SqlDbType.VarChar, 30),			
				new SqlParameter("@fieldNameCh", SqlDbType.VarChar, 30),			
				new SqlParameter("@isPK", SqlDbType.VarChar, 2),			
				new SqlParameter("@regexTypeID", SqlDbType.VarChar, 10),			
				new SqlParameter("@editTypeID", SqlDbType.VarChar, 10),			
				new SqlParameter("@regrxText", SqlDbType.VarChar, 100),			
				new SqlParameter("@keyTableID", SqlDbType.VarChar, 10),			
				new SqlParameter("@isEdit", SqlDbType.VarChar, 2),			
				new SqlParameter("@sort", SqlDbType.Int, 4),			
				new SqlParameter("@minLength", SqlDbType.Int, 4),			
				new SqlParameter("@maxLength", SqlDbType.Int, 4),			
				new SqlParameter("@isIntType", SqlDbType.VarChar, 2),			
				new SqlParameter("@pxh", SqlDbType.Int, 4)			
				};
				
			parms[0].Value = model.Fieldid;	
			parms[1].Value = model.Tableid;	
			if(model.Fieldname == null)
				parms[2].Value =  DBNull.Value;
			else
				parms[2].Value = model.Fieldname;
			if(model.Fieldnamech == null)
				parms[3].Value =  DBNull.Value;
			else
				parms[3].Value = model.Fieldnamech;
			if(model.Ispk == null)
				parms[4].Value =  DBNull.Value;
			else
				parms[4].Value = model.Ispk;
			parms[5].Value = model.Regextypeid;	
			if(model.Edittypeid == null)
				parms[6].Value =  DBNull.Value;
			else
				parms[6].Value = model.Edittypeid;
			if(model.Regrxtext == null)
				parms[7].Value =  DBNull.Value;
			else
				parms[7].Value = model.Regrxtext;
			parms[8].Value = model.Keytableid;	
			if(model.Isedit == null)
				parms[9].Value =  DBNull.Value;
			else
				parms[9].Value = model.Isedit;
			parms[10].Value = model.Sort;	
			parms[11].Value = model.Minlength;	
			parms[12].Value = model.Maxlength;	
			if(model.Isinttype == null)
				parms[13].Value =  DBNull.Value;
			else
				parms[13].Value = model.Isinttype;
			parms[14].Value = model.Pxh;	
			
			return parms;
		}
		
		/// <summary>
		/// 在dbo.sys_editConfig表中完整更新一条记录
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <returns>影响行数</returns>
		public int Update(SysEditconfig model)
		{
			return Update(model,null);
		}
		
		/// <summary>
		/// 在dbo.sys_editConfig表中完整更新一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		public int Update(SysEditconfig model,object trans)
		{
		    string sql= "UPDATE sys_editConfig SET tableid=@tableid, fieldName=@fieldName, fieldNameCh=@fieldNameCh, isPK=@isPK, regexTypeID=@regexTypeID, editTypeID=@editTypeID, regrxText=@regrxText, keyTableID=@keyTableID, isEdit=@isEdit, sort=@sort, minLength=@minLength, maxLength=@maxLength, isIntType=@isIntType, pxh=@pxh WHERE 1=1  AND fieldid=@fieldid";
				
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
		/// 根据指定的Sql更新dbo.sys_editConfig表中的一条记录
		/// </summary>
		/// <param name="sql">Update的Sql语句</param>
		/// <param name="parms">sql参数</param>
		/// <returns>返回数据库受影响的记录数</returns>
      	public int Update(string sql, object[] parms)
		{
			return Update(sql,parms,null);
		}
		
		/// <summary>
		/// 根据指定的Sql更新dbo.sys_editConfig表中的一条记录,支持数据库事务.
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
		/// 在dbo.sys_editConfig中删除一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>所影响的行数</returns>
		public int Delete(SysEditconfig model)
		{
			return Delete(model,null);
		}
		
		/// <summary>
		/// 在dbo.sys_editConfig中删除一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>所影响的行数</returns>
		public int Delete(SysEditconfig model,object trans)
		{
		    string sql ="DELETE FROM sys_editConfig  WHERE 1=1  AND fieldid=@fieldid";
			
		    SqlParameter[] parms = {						
							new SqlParameter("@fieldid",SqlDbType.VarChar,40)
		    };

			parms[0].Value = model.Fieldid;	
			
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
		/// 根据主键获取dbo.sys_editConfig中的一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>实体模型</returns>
		public SysEditconfig  GetModel(SysEditconfig model)
		{  
			string sql="SELECT * FROM sys_editConfig WHERE  fieldid=@fieldid ";
		   
		    SqlParameter[] parms = {						
							new SqlParameter("@fieldid",SqlDbType.VarChar,40)
		    };
		   
				parms[0].Value = model.Fieldid;	
			
			IDataReader dr=null;
			SysEditconfig modelReturn = null;
			
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
		/// 根据指定的SQL获取dbo.sys_editConfig中的一条记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>实体对象</returns>
      	public SysEditconfig  GetModel(string sql,object[] parms)
		{
			IDataReader dr =null;
			SqlParameter[] sqlParms =(SqlParameter[]) parms;
			SysEditconfig model = null;
			
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
		/// 在dbo.sys_editConfig中获取所有记录
		/// </summary>
		/// <returns>记录集</returns>
		public IList<SysEditconfig> GetList()
		{
		    string sql = "SELECT * FROM sys_editConfig  order by pxh asc ";
			
		    IDataReader dr = null;
			
		    IList<SysEditconfig> list = new List<SysEditconfig>();
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
		/// 根据指定的SQL在dbo.sys_editConfig中获取所有记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>记录集</returns>
		public IList<SysEditconfig> GetList(string sql,object[] parms)
		{
			SqlParameter[] sqlParms =(SqlParameter[]) parms;
		    IDataReader dr = null;
			
		    IList<SysEditconfig> list = new List<SysEditconfig>();
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
		/// 在dbo.sys_editConfig中查询某条记录是否存在
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>存在返加true,不存在返回false</returns>
		public bool Exists(SysEditconfig model)
		{
		    string sql = "SELECT COUNT(1) FROM sys_editConfig  WHERE 1=1  AND fieldid=@fieldid";
					   
		    SqlParameter[] parms = {						
							new SqlParameter("@fieldid",SqlDbType.VarChar,40)
		    };
		   
				parms[0].Value = model.Fieldid;	
			
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
        /// 装载dbo.sys_editConfig实体
        /// </summary>
        /// <param name="dr">记录集</param>
        /// <returns>返回对象</returns>
		private SysEditconfig LoadModel(IDataReader dr)
		{
			SysEditconfig model = new SysEditconfig();
				model.Fieldid	 = dr["fieldid"].ToString();
				model.Tableid	 = dr["tableid"].ToString();
				if (dr["fieldName"] != DBNull.Value)
					model.Fieldname	 = dr["fieldName"].ToString();	
				if (dr["fieldNameCh"] != DBNull.Value)
					model.Fieldnamech	 = dr["fieldNameCh"].ToString();	
				if (dr["isPK"] != DBNull.Value)
					model.Ispk	 = dr["isPK"].ToString();	
				model.Regextypeid	 = dr["regexTypeID"].ToString();
				if (dr["editTypeID"] != DBNull.Value)
					model.Edittypeid	 = dr["editTypeID"].ToString();	
				if (dr["regrxText"] != DBNull.Value)
					model.Regrxtext	 = dr["regrxText"].ToString();	
				model.Keytableid	 = dr["keyTableID"].ToString();
				if (dr["isEdit"] != DBNull.Value)
					model.Isedit	 = dr["isEdit"].ToString();	
				if (dr["sort"] != DBNull.Value)
					model.Sort	 = Convert.ToInt32(dr["sort"]);	
				if (dr["minLength"] != DBNull.Value)
					model.Minlength	 = Convert.ToInt32(dr["minLength"]);	
				if (dr["maxLength"] != DBNull.Value)
					model.Maxlength	 = Convert.ToInt32(dr["maxLength"]);	
				if (dr["isIntType"] != DBNull.Value)
					model.Isinttype	 = dr["isIntType"].ToString();	
				model.Pxh	 = Convert.ToInt32(dr["pxh"]);
				
				return model;
		}
		#endregion
	}
}
