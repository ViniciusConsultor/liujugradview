
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
	///Title: SysFieldconfig类
	///Description: SysFieldconfig表SQLServer数据库操作实现代码
	///@author LiuJu
	///@version 1.0.0.0
	///@date 2009-8-25
	///@modify 
	///@date 
	/// </summary>
	partial class DaoSysFieldconfig:IDataBaseOperate<SysFieldconfig>
	{
		#region 数据库基本操作方法
		
		/// <summary>
		/// 在dbo.sys_FieldConfig中新增一条记录
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <returns>影响行数</returns>
		public int Insert(SysFieldconfig model)
		{
			return Insert(model,null);
		}
		
		/// <summary>
		/// 在dbo.sys_FieldConfig中新增一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		public int Insert(SysFieldconfig model,object trans)
		{
			string sql = "INSERT INTO sys_FieldConfig (xsid,tableid,fieleName,fieldNameCh,ShowMaxLength,ShowSort,isPK,isShow,isSelect,isIntType,isFK,FKTableName,FKTablePK,FKTableField,regexTypeID,editTypeID,regrxText,keyTableID,isEdit,EditSort,EditMinLength,EditMaxLength,isMust) VALUES (@xsid,@tableid,@fieleName,@fieldNameCh,@ShowMaxLength,@ShowSort,@isPK,@isShow,@isSelect,@isIntType,@isFK,@FKTableName,@FKTablePK,@FKTableField,@regexTypeID,@editTypeID,@regrxText,@keyTableID,@isEdit,@EditSort,@EditMinLength,@EditMaxLength,@isMust)";
			
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
		
		private SqlParameter[] GetParms(SysFieldconfig model)
		{
			SqlParameter[] parms = {
				new SqlParameter("@xsid", SqlDbType.VarChar, 40),			
				new SqlParameter("@tableid", SqlDbType.VarChar, 40),			
				new SqlParameter("@fieleName", SqlDbType.VarChar, 30),			
				new SqlParameter("@fieldNameCh", SqlDbType.VarChar, 30),			
				new SqlParameter("@ShowMaxLength", SqlDbType.Int, 4),			
				new SqlParameter("@ShowSort", SqlDbType.Int, 4),			
				new SqlParameter("@isPK", SqlDbType.VarChar, 2),			
				new SqlParameter("@isShow", SqlDbType.VarChar, 2),			
				new SqlParameter("@isSelect", SqlDbType.VarChar, 2),			
				new SqlParameter("@isIntType", SqlDbType.VarChar, 2),			
				new SqlParameter("@isFK", SqlDbType.VarChar, 2),			
				new SqlParameter("@FKTableName", SqlDbType.VarChar, 30),			
				new SqlParameter("@FKTablePK", SqlDbType.VarChar, 30),			
				new SqlParameter("@FKTableField", SqlDbType.VarChar, 30),			
				new SqlParameter("@regexTypeID", SqlDbType.VarChar, 10),			
				new SqlParameter("@editTypeID", SqlDbType.VarChar, 10),			
				new SqlParameter("@regrxText", SqlDbType.VarChar, 100),			
				new SqlParameter("@keyTableID", SqlDbType.VarChar, 40),			
				new SqlParameter("@isEdit", SqlDbType.VarChar, 2),			
				new SqlParameter("@EditSort", SqlDbType.Int, 4),			
				new SqlParameter("@EditMinLength", SqlDbType.Int, 4),			
				new SqlParameter("@EditMaxLength", SqlDbType.Int, 4),			
				new SqlParameter("@isMust", SqlDbType.VarChar, 10),			
				new SqlParameter("@ipxh", SqlDbType.Int, 4)			
				};
				
			parms[0].Value = model.Xsid;	
			parms[1].Value = model.Tableid;	
			if(model.Fielename == null)
				parms[2].Value =  DBNull.Value;
			else
				parms[2].Value = model.Fielename;
			if(model.Fieldnamech == null)
				parms[3].Value =  DBNull.Value;
			else
				parms[3].Value = model.Fieldnamech;
			parms[4].Value = model.Showmaxlength;	
			parms[5].Value = model.Showsort;	
			if(model.Ispk == null)
				parms[6].Value =  DBNull.Value;
			else
				parms[6].Value = model.Ispk;
			if(model.Isshow == null)
				parms[7].Value =  DBNull.Value;
			else
				parms[7].Value = model.Isshow;
			if(model.Isselect == null)
				parms[8].Value =  DBNull.Value;
			else
				parms[8].Value = model.Isselect;
			if(model.Isinttype == null)
				parms[9].Value =  DBNull.Value;
			else
				parms[9].Value = model.Isinttype;
			if(model.Isfk == null)
				parms[10].Value =  DBNull.Value;
			else
				parms[10].Value = model.Isfk;
			if(model.Fktablename == null)
				parms[11].Value =  DBNull.Value;
			else
				parms[11].Value = model.Fktablename;
			if(model.Fktablepk == null)
				parms[12].Value =  DBNull.Value;
			else
				parms[12].Value = model.Fktablepk;
			if(model.Fktablefield == null)
				parms[13].Value =  DBNull.Value;
			else
				parms[13].Value = model.Fktablefield;
			parms[14].Value = model.Regextypeid;	
			if(model.Edittypeid == null)
				parms[15].Value =  DBNull.Value;
			else
				parms[15].Value = model.Edittypeid;
			if(model.Regrxtext == null)
				parms[16].Value =  DBNull.Value;
			else
				parms[16].Value = model.Regrxtext;
			parms[17].Value = model.Keytableid;	
			if(model.Isedit == null)
				parms[18].Value =  DBNull.Value;
			else
				parms[18].Value = model.Isedit;
			parms[19].Value = model.Editsort;	
			parms[20].Value = model.Editminlength;	
			parms[21].Value = model.Editmaxlength;	
			if(model.Ismust == null)
				parms[22].Value =  DBNull.Value;
			else
				parms[22].Value = model.Ismust;
			parms[23].Value = model.Ipxh;	
			
			return parms;
		}
		
		/// <summary>
		/// 在dbo.sys_FieldConfig表中完整更新一条记录
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <returns>影响行数</returns>
		public int Update(SysFieldconfig model)
		{
			return Update(model,null);
		}
		
		/// <summary>
		/// 在dbo.sys_FieldConfig表中完整更新一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		public int Update(SysFieldconfig model,object trans)
		{
		    string sql= "UPDATE sys_FieldConfig SET tableid=@tableid, fieleName=@fieleName, fieldNameCh=@fieldNameCh, ShowMaxLength=@ShowMaxLength, ShowSort=@ShowSort, isPK=@isPK, isShow=@isShow, isSelect=@isSelect, isIntType=@isIntType, isFK=@isFK, FKTableName=@FKTableName, FKTablePK=@FKTablePK, FKTableField=@FKTableField, regexTypeID=@regexTypeID, editTypeID=@editTypeID, regrxText=@regrxText, keyTableID=@keyTableID, isEdit=@isEdit, EditSort=@EditSort, EditMinLength=@EditMinLength, EditMaxLength=@EditMaxLength, isMust=@isMust WHERE 1=1  AND xsid=@xsid";
				
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
		/// 根据指定的Sql更新dbo.sys_FieldConfig表中的一条记录
		/// </summary>
		/// <param name="sql">Update的Sql语句</param>
		/// <param name="parms">sql参数</param>
		/// <returns>返回数据库受影响的记录数</returns>
      	public int Update(string sql, object[] parms)
		{
			return Update(sql,parms,null);
		}
		
		/// <summary>
		/// 根据指定的Sql更新dbo.sys_FieldConfig表中的一条记录,支持数据库事务.
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
		/// 在dbo.sys_FieldConfig中删除一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>所影响的行数</returns>
		public int Delete(SysFieldconfig model)
		{
			return Delete(model,null);
		}
		
		/// <summary>
		/// 在dbo.sys_FieldConfig中删除一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>所影响的行数</returns>
		public int Delete(SysFieldconfig model,object trans)
		{
		    string sql ="DELETE FROM sys_FieldConfig  WHERE 1=1  AND xsid=@xsid";
			
		    SqlParameter[] parms = {						
							new SqlParameter("@xsid",SqlDbType.VarChar,40)
		    };

			parms[0].Value = model.Xsid;	
			
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
		/// 根据主键获取dbo.sys_FieldConfig中的一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>实体模型</returns>
		public SysFieldconfig  GetModel(SysFieldconfig model)
		{  
			string sql="SELECT * FROM sys_FieldConfig WHERE  xsid=@xsid ";
		   
		    SqlParameter[] parms = {						
							new SqlParameter("@xsid",SqlDbType.VarChar,40)
		    };
		   
				parms[0].Value = model.Xsid;	
			
			IDataReader dr=null;
			SysFieldconfig modelReturn = null;
			
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
		/// 根据指定的SQL获取dbo.sys_FieldConfig中的一条记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>实体对象</returns>
      	public SysFieldconfig  GetModel(string sql,object[] parms)
		{
			IDataReader dr =null;
			SqlParameter[] sqlParms =(SqlParameter[]) parms;
			SysFieldconfig model = null;
			
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
		/// 在dbo.sys_FieldConfig中获取所有记录
		/// </summary>
		/// <returns>记录集</returns>
		public IList<SysFieldconfig> GetList()
		{
		    string sql = "SELECT * FROM sys_FieldConfig  order by ipxh asc ";
			
		    IDataReader dr = null;
			
		    IList<SysFieldconfig> list = new List<SysFieldconfig>();
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
		/// 根据指定的SQL在dbo.sys_FieldConfig中获取所有记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>记录集</returns>
		public IList<SysFieldconfig> GetList(string sql,object[] parms)
		{
			SqlParameter[] sqlParms =(SqlParameter[]) parms;
		    IDataReader dr = null;
			
		    IList<SysFieldconfig> list = new List<SysFieldconfig>();
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
		/// 在dbo.sys_FieldConfig中查询某条记录是否存在
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>存在返加true,不存在返回false</returns>
		public bool Exists(SysFieldconfig model)
		{
		    string sql = "SELECT COUNT(1) FROM sys_FieldConfig  WHERE 1=1  AND xsid=@xsid";
					   
		    SqlParameter[] parms = {						
							new SqlParameter("@xsid",SqlDbType.VarChar,40)
		    };
		   
				parms[0].Value = model.Xsid;	
			
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
        /// 装载dbo.sys_FieldConfig实体
        /// </summary>
        /// <param name="dr">记录集</param>
        /// <returns>返回对象</returns>
		private SysFieldconfig LoadModel(IDataReader dr)
		{
			SysFieldconfig model = new SysFieldconfig();
				model.Xsid	 = dr["xsid"].ToString();
				model.Tableid	 = dr["tableid"].ToString();
				if (dr["fieleName"] != DBNull.Value)
					model.Fielename	 = dr["fieleName"].ToString();	
				if (dr["fieldNameCh"] != DBNull.Value)
					model.Fieldnamech	 = dr["fieldNameCh"].ToString();	
				if (dr["ShowMaxLength"] != DBNull.Value)
					model.Showmaxlength	 = Convert.ToInt32(dr["ShowMaxLength"]);	
				if (dr["ShowSort"] != DBNull.Value)
					model.Showsort	 = Convert.ToInt32(dr["ShowSort"]);	
				if (dr["isPK"] != DBNull.Value)
					model.Ispk	 = dr["isPK"].ToString();	
				if (dr["isShow"] != DBNull.Value)
					model.Isshow	 = dr["isShow"].ToString();	
				if (dr["isSelect"] != DBNull.Value)
					model.Isselect	 = dr["isSelect"].ToString();	
				if (dr["isIntType"] != DBNull.Value)
					model.Isinttype	 = dr["isIntType"].ToString();	
				if (dr["isFK"] != DBNull.Value)
					model.Isfk	 = dr["isFK"].ToString();	
				if (dr["FKTableName"] != DBNull.Value)
					model.Fktablename	 = dr["FKTableName"].ToString();	
				if (dr["FKTablePK"] != DBNull.Value)
					model.Fktablepk	 = dr["FKTablePK"].ToString();	
				if (dr["FKTableField"] != DBNull.Value)
					model.Fktablefield	 = dr["FKTableField"].ToString();	
				model.Regextypeid	 = dr["regexTypeID"].ToString();
				if (dr["editTypeID"] != DBNull.Value)
					model.Edittypeid	 = dr["editTypeID"].ToString();	
				if (dr["regrxText"] != DBNull.Value)
					model.Regrxtext	 = dr["regrxText"].ToString();	
				model.Keytableid	 = dr["keyTableID"].ToString();
				if (dr["isEdit"] != DBNull.Value)
					model.Isedit	 = dr["isEdit"].ToString();	
				if (dr["EditSort"] != DBNull.Value)
					model.Editsort	 = Convert.ToInt32(dr["EditSort"]);	
				if (dr["EditMinLength"] != DBNull.Value)
					model.Editminlength	 = Convert.ToInt32(dr["EditMinLength"]);	
				if (dr["EditMaxLength"] != DBNull.Value)
					model.Editmaxlength	 = Convert.ToInt32(dr["EditMaxLength"]);	
				if (dr["isMust"] != DBNull.Value)
					model.Ismust	 = dr["isMust"].ToString();	
				model.Ipxh	 = Convert.ToInt32(dr["ipxh"]);
				
				return model;
		}
		#endregion
	}
}
