
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
	///Title: Njxx类
	///Description: Njxx表SQLServer数据库操作实现代码
	///@author 刘巨
	///@version 1.0.0.0
	///@date 2009-8-24
	///@modify 
	///@date 
	/// </summary>
	partial class DaoNjxx:IDataBaseOperate<Njxx>
	{
		#region 数据库基本操作方法
		
		/// <summary>
		/// 在dbo.njxx中新增一条记录
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <returns>影响行数</returns>
		public int Insert(Njxx model)
		{
			return Insert(model,null);
		}
		
		/// <summary>
		/// 在dbo.njxx中新增一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		public int Insert(Njxx model,object trans)
		{
			string sql = "INSERT INTO njxx (njid,njmc,njzz,phx) VALUES (@njid,@njmc,@njzz,@phx)";
			
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
		
		private SqlParameter[] GetParms(Njxx model)
		{
			SqlParameter[] parms = {
				new SqlParameter("@njid", SqlDbType.VarChar, 40),			
				new SqlParameter("@njmc", SqlDbType.VarChar, 60),			
				new SqlParameter("@njzz", SqlDbType.VarChar, 30),			
				new SqlParameter("@phx", SqlDbType.Int, 4)			
				};
				
			parms[0].Value = model.Njid;	
			if(model.Njmc == null)
				parms[1].Value =  DBNull.Value;
			else
				parms[1].Value = model.Njmc;
			if(model.Njzz == null)
				parms[2].Value =  DBNull.Value;
			else
				parms[2].Value = model.Njzz;
			parms[3].Value = model.Phx;	
			
			return parms;
		}
		
		/// <summary>
		/// 在dbo.njxx表中完整更新一条记录
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <returns>影响行数</returns>
		public int Update(Njxx model)
		{
			return Update(model,null);
		}
		
		/// <summary>
		/// 在dbo.njxx表中完整更新一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		public int Update(Njxx model,object trans)
		{
		    string sql= "UPDATE njxx SET njmc=@njmc, njzz=@njzz, phx=@phx WHERE 1=1  AND njid=@njid";
				
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
		/// 根据指定的Sql更新dbo.njxx表中的一条记录
		/// </summary>
		/// <param name="sql">Update的Sql语句</param>
		/// <param name="parms">sql参数</param>
		/// <returns>返回数据库受影响的记录数</returns>
      	public int Update(string sql, object[] parms)
		{
			return Update(sql,parms,null);
		}
		
		/// <summary>
		/// 根据指定的Sql更新dbo.njxx表中的一条记录,支持数据库事务.
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
		/// 在dbo.njxx中删除一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>所影响的行数</returns>
		public int Delete(Njxx model)
		{
			return Delete(model,null);
		}
		
		/// <summary>
		/// 在dbo.njxx中删除一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>所影响的行数</returns>
		public int Delete(Njxx model,object trans)
		{
		    string sql ="DELETE FROM njxx  WHERE 1=1  AND njid=@njid";
			
		    SqlParameter[] parms = {						
							new SqlParameter("@njid",SqlDbType.VarChar,40)
		    };

			parms[0].Value = model.Njid;	
			
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
		/// 根据主键获取dbo.njxx中的一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>实体模型</returns>
		public Njxx  GetModel(Njxx model)
		{  
			string sql="SELECT * FROM njxx WHERE  njid=@njid ";
		   
		    SqlParameter[] parms = {						
							new SqlParameter("@njid",SqlDbType.VarChar,40)
		    };
		   
				parms[0].Value = model.Njid;	
			
			IDataReader dr=null;
			Njxx modelReturn = null;
			
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
		/// 根据指定的SQL获取dbo.njxx中的一条记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>实体对象</returns>
      	public Njxx  GetModel(string sql,object[] parms)
		{
			IDataReader dr =null;
			SqlParameter[] sqlParms =(SqlParameter[]) parms;
			Njxx model = null;
			
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
		/// 在dbo.njxx中获取所有记录
		/// </summary>
		/// <returns>记录集</returns>
		public IList<Njxx> GetList()
		{
		    string sql = "SELECT * FROM njxx ";
			
		    IDataReader dr = null;
			
		    IList<Njxx> list = new List<Njxx>();
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
		/// 根据指定的SQL在dbo.njxx中获取所有记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>记录集</returns>
		public IList<Njxx> GetList(string sql,object[] parms)
		{
			SqlParameter[] sqlParms =(SqlParameter[]) parms;
		    IDataReader dr = null;
			
		    IList<Njxx> list = new List<Njxx>();
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
		/// 在dbo.njxx中查询某条记录是否存在
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>存在返加true,不存在返回false</returns>
		public bool Exists(Njxx model)
		{
		    string sql = "SELECT COUNT(1) FROM njxx  WHERE 1=1  AND njid=@njid";
					   
		    SqlParameter[] parms = {						
							new SqlParameter("@njid",SqlDbType.VarChar,40)
		    };
		   
				parms[0].Value = model.Njid;	
			
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
        /// 装载dbo.njxx实体
        /// </summary>
        /// <param name="dr">记录集</param>
        /// <returns>返回对象</returns>
		private Njxx LoadModel(IDataReader dr)
		{
			Njxx model = new Njxx();
				model.Njid	 = dr["njid"].ToString();
				if (dr["njmc"] != DBNull.Value)
					model.Njmc	 = dr["njmc"].ToString();	
				if (dr["njzz"] != DBNull.Value)
					model.Njzz	 = dr["njzz"].ToString();	
				model.Phx	 = Convert.ToInt32(dr["phx"]);
				
				return model;
		}
		#endregion
	}
}
