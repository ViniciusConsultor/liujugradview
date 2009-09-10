using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.OracleClient;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    ///<summary>
    ///Title: OracleHelper类
    ///Description: Oracle数据库操作工具类
    ///@author 万灵杰
    ///@version 1.0.0.0
    ///@date 2009年7月30日
    ///@modify 
    ///@date 
    /// </summary>
    public class OracleHelper
    {
        public static readonly string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        private static Hashtable parmCache = Hashtable.Synchronized(new Hashtable());

        protected OracleHelper()
        {
        }

        public static void CacheParameters(string cacheKey, params OracleParameter[] commandParameters)
        {
            parmCache[cacheKey] = commandParameters;
        }

        public static DataSet ExecuteDataSet(string cmdText, params OracleParameter[] commandParameters)
        {
            return ExecuteDataSet(CommandType.Text, cmdText, commandParameters);
        }

        public static DataSet ExecuteDataSet(CommandType cmdType, string cmdText, params OracleParameter[] commandParameters)
        {
            OracleCommand cmd = new OracleCommand();
            using (OracleConnection connection = new OracleConnection(ConnectionString))
            {
                PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
                OracleDataAdapter adapter = new OracleDataAdapter(cmd);
                DataSet dataSet = new DataSet();
                adapter.Fill(dataSet);
                cmd.Parameters.Clear();
                return dataSet;
            }
        }

        public static int ExecuteNonQuery(string cmdText, params OracleParameter[] commandParameters)
        {
            return ExecuteNonQuery(CommandType.Text, cmdText, commandParameters);
        }

        public static int ExecuteNonQuery(CommandType cmdType, string cmdText, params OracleParameter[] commandParameters)
        {
            OracleCommand cmd = new OracleCommand();
            using (OracleConnection connection = new OracleConnection(ConnectionString))
            {
                PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
                int num = cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                return num;
            }
        }

        public static int ExecuteNonQuery(OracleConnection connection, CommandType cmdType, string cmdText, params OracleParameter[] commandParameters)
        {
            OracleCommand cmd = new OracleCommand();
            PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
            int num = cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();
            return num;
        }

        public static int ExecuteNonQuery(OracleTransaction trans, CommandType cmdType, string cmdText, params OracleParameter[] commandParameters)
        {
            OracleCommand cmd = new OracleCommand();
            PrepareCommand(cmd, trans.Connection, trans, cmdType, cmdText, commandParameters);
            int num = cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();
            return num;
        }

        public static OracleDataReader ExecuteReader(string cmdText, params OracleParameter[] commandParameters)
        {
            return ExecuteReader(CommandType.Text, cmdText, commandParameters);
        }

        public static OracleDataReader ExecuteReader(CommandType cmdType, string cmdText, params OracleParameter[] commandParameters)
        {
            OracleDataReader reader2;
            OracleCommand cmd = new OracleCommand();
            OracleConnection conn = new OracleConnection(ConnectionString);
            try
            {
                PrepareCommand(cmd, conn, null, cmdType, cmdText, commandParameters);
                OracleDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                cmd.Parameters.Clear();
                reader2 = reader;
            }
            catch (Exception exception)
            {
                conn.Close();
                throw exception;
            }
            return reader2;
        }

        public static OracleDataReader ExecuteReader(OracleConnection conn, CommandType cmdType, string cmdText, params OracleParameter[] commandParameters)
        {
            OracleDataReader reader2;
            OracleCommand cmd = new OracleCommand();
            try
            {
                PrepareCommand(cmd, conn, null, cmdType, cmdText, commandParameters);
                OracleDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                cmd.Parameters.Clear();
                reader2 = reader;
            }
            catch (Exception exception)
            {
                conn.Close();
                throw exception;
            }
            return reader2;
        }

        public static OracleDataReader ExecuteReaderWithoutClosingConnection(OracleConnection conn, CommandType cmdType, string cmdText, params OracleParameter[] commandParameters)
        {
            OracleDataReader reader2;
            OracleCommand cmd = new OracleCommand();
            try
            {
                PrepareCommand(cmd, conn, null, cmdType, cmdText, commandParameters);
                OracleDataReader reader = cmd.ExecuteReader();
                cmd.Parameters.Clear();
                reader2 = reader;
            }
            catch (Exception exception)
            {
                conn.Close();
                throw exception;
            }
            return reader2;
        }

        public static object ExecuteScalar(string cmdText, params OracleParameter[] commandParameters)
        {
            return ExecuteScalar(CommandType.Text, cmdText, commandParameters);
        }

        public static object ExecuteScalar(CommandType cmdType, string cmdText, params OracleParameter[] commandParameters)
        {
            OracleCommand cmd = new OracleCommand();
            using (OracleConnection connection = new OracleConnection(ConnectionString))
            {
                PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
                object obj2 = cmd.ExecuteScalar();
                cmd.Parameters.Clear();
                return obj2;
            }
        }

        public static object ExecuteScalar(OracleConnection connectionString, CommandType cmdType, string cmdText, params OracleParameter[] commandParameters)
        {
            OracleCommand cmd = new OracleCommand();
            PrepareCommand(cmd, connectionString, null, cmdType, cmdText, commandParameters);
            object obj2 = cmd.ExecuteScalar();
            cmd.Parameters.Clear();
            return obj2;
        }

        public static object ExecuteScalar(OracleTransaction transaction, CommandType commandType, string commandText, params OracleParameter[] commandParameters)
        {
            if (transaction == null)
            {
                throw new ArgumentNullException("transaction");
            }
            if ((transaction != null) && (transaction.Connection == null))
            {
                throw new ArgumentException("The transaction was rollbacked\tor commited, please\tprovide\tan open\ttransaction.", "transaction");
            }
            OracleCommand cmd = new OracleCommand();
            PrepareCommand(cmd, transaction.Connection, transaction, commandType, commandText, commandParameters);
            object obj2 = cmd.ExecuteScalar();
            cmd.Parameters.Clear();
            return obj2;
        }

        public static OracleParameter[] GetCachedParameters(string cacheKey)
        {
            OracleParameter[] parameterArray = (OracleParameter[])parmCache[cacheKey];
            if (parameterArray == null)
            {
                return null;
            }
            OracleParameter[] parameterArray2 = new OracleParameter[parameterArray.Length];
            int index = 0;
            int length = parameterArray.Length;
            while (index < length)
            {
                parameterArray2[index] = (OracleParameter)((ICloneable)parameterArray[index]).Clone();
                index++;
            }
            return parameterArray2;
        }

        public static DbConnection GetConnection()
        {
            return new OracleConnection(ConnectionString);
        }

        public static string OraBit(bool value)
        {
            if (value)
            {
                return "Y";
            }
            return "N";
        }

        public static bool OraBool(string value)
        {
            return value.Equals("Y");
        }

        private static void PrepareCommand(OracleCommand cmd, OracleConnection conn, OracleTransaction trans, CommandType cmdType, string cmdText, OracleParameter[] commandParameters)
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            cmd.Connection = conn;
            cmd.CommandText = cmdText;
            cmd.CommandType = cmdType;
            if (trans != null)
            {
                cmd.Transaction = trans;
            }
            if (commandParameters != null)
            {
                foreach (OracleParameter parameter in commandParameters)
                {
                    cmd.Parameters.Add(parameter);
                }
            }
        }

        public static object SafeValue(object obj)
        {
            if (obj == null)
            {
                return DBNull.Value;
            }
            return obj;
        }
    }
}
