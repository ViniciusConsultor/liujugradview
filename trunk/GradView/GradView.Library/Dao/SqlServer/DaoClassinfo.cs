
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
	///Title: Classinfo类
	///Description: Classinfo表SQLServer数据库操作实现代码
	///@author LiuJu
	///@version 1.0.0.0
	///@date 2009-8-28
	///@modify 
	///@date 
	/// </summary>
	partial class DaoClassinfo:IDataBaseOperate<Classinfo>
	{
		#region 数据库基本操作方法
		
		/// <summary>
		/// 在dbo.ClassInfo中新增一条记录
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <returns>影响行数</returns>
		public int Insert(Classinfo model)
		{
			return Insert(model,null);
		}
		
		/// <summary>
		/// 在dbo.ClassInfo中新增一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		public int Insert(Classinfo model,object trans)
		{
			string sql = "INSERT INTO ClassInfo (bjid,bjmc,bjpy) VALUES (@bjid,@bjmc,@bjpy)";
			
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
		
		private SqlParameter[] GetParms(Classinfo model)
		{
			SqlParameter[] parms = {
				new SqlParameter("@bjid", SqlDbType.VarChar, 40),			
				new SqlParameter("@bjmc", SqlDbType.VarChar, 30),			
				new SqlParameter("@bjpy", SqlDbType.VarChar, 100),			
				new SqlParameter("@ipxh", SqlDbType.Int, 4)			
				};
				
			parms[0].Value = model.Bjid;	
			if(model.Bjmc == null)
				parms[1].Value =  DBNull.Value;
			else
				parms[1].Value = model.Bjmc;
			if(model.Bjpy == null)
				parms[2].Value =  DBNull.Value;
			else
				parms[2].Value = model.Bjpy;
			parms[3].Value = model.Ipxh;	
			
			return parms;
		}
		
		/// <summary>
		/// 在dbo.ClassInfo表中完整更新一条记录
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <returns>影响行数</returns>
		public int Update(Classinfo model)
		{
			return Update(model,null);
		}
		
		/// <summary>
		/// 在dbo.ClassInfo表中完整更新一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		public int Update(Classinfo model,object trans)
		{
		    string sql= "UPDATE ClassInfo SET bjmc=@bjmc, bjpy=@bjpy WHERE 1=1  AND bjid=@bjid";
				
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
		/// 根据指定的Sql更新dbo.ClassInfo表中的一条记录
		/// </summary>
		/// <param name="sql">Update的Sql语句</param>
		/// <param name="parms">sql参数</param>
		/// <returns>返回数据库受影响的记录数</returns>
      	public int Update(string sql, object[] parms)
		{
			return Update(sql,parms,null);
		}
		
		/// <summary>
		/// 根据指定的Sql更新dbo.ClassInfo表中的一条记录,支持数据库事务.
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
		/// 在dbo.ClassInfo中删除一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>所影响的行数</returns>
		public int Delete(Classinfo model)
		{
			return Delete(model,null);
		}
		
		/// <summary>
		/// 在dbo.ClassInfo中删除一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>所影响的行数</returns>
		public int Delete(Classinfo model,object trans)
		{
		    string sql ="DELETE FROM ClassInfo  WHERE 1=1  AND bjid=@bjid";
			
		    SqlParameter[] parms = {						
							new SqlParameter("@bjid",SqlDbType.VarChar,40)
		    };

			parms[0].Value = model.Bjid;	
			
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
		/// 根据主键获取dbo.ClassInfo中的一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>实体模型</returns>
		public Classinfo  GetModel(Classinfo model)
		{  
			string sql="SELECT * FROM ClassInfo WHERE  bjid=@bjid ";
		   
		    SqlParameter[] parms = {						
							new SqlParameter("@bjid",SqlDbType.VarChar,40)
		    };
		   
				parms[0].Value = model.Bjid;	
			
			IDataReader dr=null;
			Classinfo modelReturn = null;
			
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
		/// 根据指定的SQL获取dbo.ClassInfo中的一条记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>实体对象</returns>
      	public Classinfo  GetModel(string sql,object[] parms)
		{
			IDataReader dr =null;
			SqlParameter[] sqlParms =(SqlParameter[]) parms;
			Classinfo model = null;
			
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
		/// 在dbo.ClassInfo中获取所有记录
		/// </summary>
		/// <returns>记录集</returns>
		public IList<Classinfo> GetList()
		{
		    string sql = "SELECT * FROM ClassInfo  order by ipxh asc ";
			
		    IDataReader dr = null;
			
		    IList<Classinfo> list = new List<Classinfo>();
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
		/// 根据指定的SQL在dbo.ClassInfo中获取所有记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>记录集</returns>
		public IList<Classinfo> GetList(string sql,object[] parms)
		{
			SqlParameter[] sqlParms =(SqlParameter[]) parms;
		    IDataReader dr = null;
			
		    IList<Classinfo> list = new List<Classinfo>();
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
		/// 在dbo.ClassInfo中查询某条记录是否存在
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>存在返加true,不存在返回false</returns>
		public bool Exists(Classinfo model)
		{
		    string sql = "SELECT COUNT(1) FROM ClassInfo  WHERE 1=1  AND bjid=@bjid";
					   
		    SqlParameter[] parms = {						
							new SqlParameter("@bjid",SqlDbType.VarChar,40)
		    };
		   
				parms[0].Value = model.Bjid;	
			
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
        /// 装载dbo.ClassInfo实体
        /// </summary>
        /// <param name="dr">记录集</param>
        /// <returns>返回对象</returns>
		private Classinfo LoadModel(IDataReader dr)
		{
			Classinfo model = new Classinfo();
				model.Bjid	 = dr["bjid"].ToString();
				if (dr["bjmc"] != DBNull.Value)
					model.Bjmc	 = dr["bjmc"].ToString();	
				if (dr["bjpy"] != DBNull.Value)
					model.Bjpy	 = dr["bjpy"].ToString();	
				model.Ipxh	 = Convert.ToInt32(dr["ipxh"]);
				
				return model;
		}
		#endregion
	}
}
