
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
	///Title: Users类
	///Description: Users表SQLServer数据库操作实现代码
	///@author 刘巨
	///@version 1.0.0.0
	///@date 2009-8-24
	///@modify 
	///@date 
	/// </summary>
	partial class DaoUsers:IDataBaseOperate<Users>
	{
		#region 数据库基本操作方法
		
		/// <summary>
		/// 在dbo.users中新增一条记录
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <returns>影响行数</returns>
		public int Insert(Users model)
		{
			return Insert(model,null);
		}
		
		/// <summary>
		/// 在dbo.users中新增一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被插入数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		public int Insert(Users model,object trans)
		{
			string sql = "INSERT INTO users (xsid,njid,bjid,xh,mm,xm,sfz,csrq,dh,qq,yx,dz,zp,xb,xl) VALUES (@xsid,@njid,@bjid,@xh,@mm,@xm,@sfz,@csrq,@dh,@qq,@yx,@dz,@zp,@xb,@xl)";
			
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
		
		private SqlParameter[] GetParms(Users model)
		{
			SqlParameter[] parms = {
				new SqlParameter("@xsid", SqlDbType.VarChar, 40),			
				new SqlParameter("@njid", SqlDbType.VarChar, 40),			
				new SqlParameter("@bjid", SqlDbType.VarChar, 40),			
				new SqlParameter("@xh", SqlDbType.VarChar, 10),			
				new SqlParameter("@mm", SqlDbType.VarChar, 16),			
				new SqlParameter("@xm", SqlDbType.VarChar, 30),			
				new SqlParameter("@sfz", SqlDbType.VarChar, 20),			
				new SqlParameter("@csrq", SqlDbType.VarChar, 20),			
				new SqlParameter("@dh", SqlDbType.VarChar, 30),			
				new SqlParameter("@qq", SqlDbType.VarChar, 12),			
				new SqlParameter("@yx", SqlDbType.VarChar, 30),			
				new SqlParameter("@dz", SqlDbType.VarChar, 100),			
				new SqlParameter("@zp", SqlDbType.VarChar, 50),			
				new SqlParameter("@xb", SqlDbType.VarChar, 10),			
				new SqlParameter("@xl", SqlDbType.VarChar, 10)			
				};
				
			parms[0].Value = model.Xsid;	
			parms[1].Value = model.Njid;	
			parms[2].Value = model.Bjid;	
			if(model.Xh == null)
				parms[3].Value =  DBNull.Value;
			else
				parms[3].Value = model.Xh;
			if(model.Mm == null)
				parms[4].Value =  DBNull.Value;
			else
				parms[4].Value = model.Mm;
			if(model.Xm == null)
				parms[5].Value =  DBNull.Value;
			else
				parms[5].Value = model.Xm;
			if(model.Sfz == null)
				parms[6].Value =  DBNull.Value;
			else
				parms[6].Value = model.Sfz;
			if(model.Csrq == null)
				parms[7].Value =  DBNull.Value;
			else
				parms[7].Value = model.Csrq;
			if(model.Dh == null)
				parms[8].Value =  DBNull.Value;
			else
				parms[8].Value = model.Dh;
			if(model.Qq == null)
				parms[9].Value =  DBNull.Value;
			else
				parms[9].Value = model.Qq;
			if(model.Yx == null)
				parms[10].Value =  DBNull.Value;
			else
				parms[10].Value = model.Yx;
			if(model.Dz == null)
				parms[11].Value =  DBNull.Value;
			else
				parms[11].Value = model.Dz;
			if(model.Zp == null)
				parms[12].Value =  DBNull.Value;
			else
				parms[12].Value = model.Zp;
			if(model.Xb == null)
				parms[13].Value =  DBNull.Value;
			else
				parms[13].Value = model.Xb;
			if(model.Xl == null)
				parms[14].Value =  DBNull.Value;
			else
				parms[14].Value = model.Xl;
			
			return parms;
		}
		
		/// <summary>
		/// 在dbo.users表中完整更新一条记录
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <returns>影响行数</returns>
		public int Update(Users model)
		{
			return Update(model,null);
		}
		
		/// <summary>
		/// 在dbo.users表中完整更新一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含被更新数据的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>影响行数</returns>
		public int Update(Users model,object trans)
		{
		    string sql= "UPDATE users SET njid=@njid, bjid=@bjid, xh=@xh, mm=@mm, xm=@xm, sfz=@sfz, csrq=@csrq, dh=@dh, qq=@qq, yx=@yx, dz=@dz, zp=@zp, xb=@xb, xl=@xl WHERE 1=1  AND xsid=@xsid";
				
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
		/// 根据指定的Sql更新dbo.users表中的一条记录
		/// </summary>
		/// <param name="sql">Update的Sql语句</param>
		/// <param name="parms">sql参数</param>
		/// <returns>返回数据库受影响的记录数</returns>
      	public int Update(string sql, object[] parms)
		{
			return Update(sql,parms,null);
		}
		
		/// <summary>
		/// 根据指定的Sql更新dbo.users表中的一条记录,支持数据库事务.
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
		/// 在dbo.users中删除一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>所影响的行数</returns>
		public int Delete(Users model)
		{
			return Delete(model,null);
		}
		
		/// <summary>
		/// 在dbo.users中删除一条记录,支持数据库事务
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <param name="trans">事务参数</param>
		/// <returns>所影响的行数</returns>
		public int Delete(Users model,object trans)
		{
		    string sql ="DELETE FROM users  WHERE 1=1  AND xsid=@xsid";
			
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
		/// 根据主键获取dbo.users中的一条记录
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>实体模型</returns>
		public Users  GetModel(Users model)
		{  
			string sql="SELECT * FROM users WHERE  xsid=@xsid ";
		   
		    SqlParameter[] parms = {						
							new SqlParameter("@xsid",SqlDbType.VarChar,40)
		    };
		   
				parms[0].Value = model.Xsid;	
			
			IDataReader dr=null;
			Users modelReturn = null;
			
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
		/// 根据指定的SQL获取dbo.users中的一条记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>实体对象</returns>
      	public Users  GetModel(string sql,object[] parms)
		{
			IDataReader dr =null;
			SqlParameter[] sqlParms =(SqlParameter[]) parms;
			Users model = null;
			
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
		/// 在dbo.users中获取所有记录
		/// </summary>
		/// <returns>记录集</returns>
		public IList<Users> GetList()
		{
		    string sql = "SELECT * FROM users ";
			
		    IDataReader dr = null;
			
		    IList<Users> list = new List<Users>();
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
		/// 根据指定的SQL在dbo.users中获取所有记录
		/// </summary>
		/// <param name="sql">SQL语句</param>
		/// <returns>记录集</returns>
		public IList<Users> GetList(string sql,object[] parms)
		{
			SqlParameter[] sqlParms =(SqlParameter[]) parms;
		    IDataReader dr = null;
			
		    IList<Users> list = new List<Users>();
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
		/// 在dbo.users中查询某条记录是否存在
		/// </summary>
		/// <param name="model">包含主键值的实体对象</param>
		/// <returns>存在返加true,不存在返回false</returns>
		public bool Exists(Users model)
		{
		    string sql = "SELECT COUNT(1) FROM users  WHERE 1=1  AND xsid=@xsid";
					   
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
        /// 装载dbo.users实体
        /// </summary>
        /// <param name="dr">记录集</param>
        /// <returns>返回对象</returns>
		private Users LoadModel(IDataReader dr)
		{
			Users model = new Users();
				model.Xsid	 = dr["xsid"].ToString();
				model.Njid	 = dr["njid"].ToString();
				model.Bjid	 = dr["bjid"].ToString();
				if (dr["xh"] != DBNull.Value)
					model.Xh	 = dr["xh"].ToString();	
				if (dr["mm"] != DBNull.Value)
					model.Mm	 = dr["mm"].ToString();	
				if (dr["xm"] != DBNull.Value)
					model.Xm	 = dr["xm"].ToString();	
				if (dr["sfz"] != DBNull.Value)
					model.Sfz	 = dr["sfz"].ToString();	
				if (dr["csrq"] != DBNull.Value)
					model.Csrq	 = dr["csrq"].ToString();	
				if (dr["dh"] != DBNull.Value)
					model.Dh	 = dr["dh"].ToString();	
				if (dr["qq"] != DBNull.Value)
					model.Qq	 = dr["qq"].ToString();	
				if (dr["yx"] != DBNull.Value)
					model.Yx	 = dr["yx"].ToString();	
				if (dr["dz"] != DBNull.Value)
					model.Dz	 = dr["dz"].ToString();	
				if (dr["zp"] != DBNull.Value)
					model.Zp	 = dr["zp"].ToString();	
				if (dr["xb"] != DBNull.Value)
					model.Xb	 = dr["xb"].ToString();	
				if (dr["xl"] != DBNull.Value)
					model.Xl	 = dr["xl"].ToString();	
				
				return model;
		}
		#endregion
	}
}
