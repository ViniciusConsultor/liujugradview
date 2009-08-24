using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    public interface IDataBaseOperate<T>
    {
        int Delete(T model);
        int Delete(T model, object dbConn);
        DataSet ExecuteDataSet(CommandType cmdType, string cmdText, params object[] commandParameters);
        int ExecuteNonQuery(CommandType cmdType, string cmdText, params object[] commandParameters);
        int ExecuteNonQuery(object connection, CommandType cmdType, string cmdText, params object[] commandParameters);
        DbDataReader ExecuteReader(CommandType cmdType, string cmdText, params object[] commandParameters);
        bool Exists(T model);
        IList<T> GetList();
        IList<T> GetList(string sql, object[] parms);
        T GetModel(T model);
        T GetModel(string sql, object[] parms);
        int Insert(T model);
        int Insert(T model, object dbConn);
        int Update(T model);
        int Update(T model, object dbConn);
        int Update(string sql, object[] parms);
        int Update(string sql, object[] parms, object dbConn);
    }
}
