using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Configuration;
using MySql.Data.MySqlClient;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    ///<summary>
    ///Title: MySQLHelper类
    ///Description: MySql数据库操作工具类
    ///@author 万灵杰
    ///@version 1.0.0.0
    ///@date 2009年8月12日
    ///@modify 
    ///@date 
    /// </summary>
    public abstract class MySQLHelper
    {
        private static int commandTimeout = 30;
        public static readonly string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        private static Hashtable parmCache = Hashtable.Synchronized(new Hashtable());

        protected MySQLHelper()
        {
        }

        public static void CacheParameters(string cacheKey, params MySqlParameter[] commandParameters)
        {            
            parmCache[cacheKey] = commandParameters;
        }

        public static DataSet ExecuteDataSet(string cmdText, params MySqlParameter[] commandParameters)
        {
            return ExecuteDataSet(CommandType.Text, cmdText, commandParameters);
        }

        public static DataSet ExecuteDataSet(CommandType cmdType, string cmdText, params MySqlParameter[] commandParameters)
        {
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandTimeout = CommandTimeout;
            using (MySqlConnection connection = new MySqlConnection(ConnectionString))
            {
                PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
                MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                DataSet dataSet = new DataSet();
                adapter.Fill(dataSet);
                cmd.Parameters.Clear();
                return dataSet;
            }
        }

        public static int ExecuteNonQuery(string cmdText, params MySqlParameter[] commandParameters)
        {
            return ExecuteNonQuery(CommandType.Text, cmdText, commandParameters);
        }

        public static int ExecuteNonQuery(CommandType cmdType, string cmdText, params MySqlParameter[] commandParameters)
        {
            MySqlCommand cmd = new MySqlCommand();
            using (MySqlConnection connection = new MySqlConnection(ConnectionString))
            {
                cmd.CommandTimeout = commandTimeout;
                PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
                int num = cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                return num;
            }
        }

        public static int ExecuteNonQuery(MySqlConnection connection, CommandType cmdType, string cmdText, params MySqlParameter[] commandParameters)
        {
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandTimeout = commandTimeout;
            PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
            int num = cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();
            return num;
        }

        public static int ExecuteNonQuery(MySqlTransaction trans, CommandType cmdType, string cmdText, params MySqlParameter[] commandParameters)
        {
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandTimeout = commandTimeout;
            PrepareCommand(cmd, trans.Connection, trans, cmdType, cmdText, commandParameters);
            int num = cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();
            return num;
        }

        public static int ExecuteNonQuery(string connectionString, CommandType cmdType, string cmdText, params MySqlParameter[] commandParameters)
        {
            MySqlCommand cmd = new MySqlCommand();
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                cmd.CommandTimeout = commandTimeout;
                PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
                int num = cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                return num;
            }
        }

        public static MySqlDataReader ExecuteReader(string cmdText, params MySqlParameter[] commandParameters)
        {
            return ExecuteReader(CommandType.Text, cmdText, commandParameters);
        }

        public static MySqlDataReader ExecuteReader(CommandType cmdType, string cmdText, params MySqlParameter[] commandParameters)
        {
            MySqlDataReader reader2;
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandTimeout = commandTimeout;
            MySqlConnection conn = new MySqlConnection(ConnectionString);
            try
            {
                PrepareCommand(cmd, conn, null, cmdType, cmdText, commandParameters);
                MySqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
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

        public static MySqlDataReader ExecuteReader(MySqlConnection conn, CommandType cmdType, string cmdText, params MySqlParameter[] commandParameters)
        {
            MySqlDataReader reader2;
            MySqlCommand cmd = new MySqlCommand();
            try
            {
                PrepareCommand(cmd, conn, null, cmdType, cmdText, commandParameters);
                MySqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
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

        public static MySqlDataReader ExecuteReader(string connectionString, CommandType cmdType, string cmdText, params MySqlParameter[] commandParameters)
        {
            MySqlDataReader reader2;
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandTimeout = commandTimeout;
            MySqlConnection conn = new MySqlConnection(connectionString);
            try
            {
                PrepareCommand(cmd, conn, null, cmdType, cmdText, commandParameters);
                MySqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                cmd.Parameters.Clear();
                reader2 = reader;
            }
            catch
            {
                conn.Close();
                throw;
            }
            return reader2;
        }

        public static MySqlDataReader ExecuteReaderWithoutClosingConnection(MySqlConnection conn, CommandType cmdType, string cmdText, params MySqlParameter[] commandParameters)
        {
            MySqlDataReader reader2;
            MySqlCommand cmd = new MySqlCommand();
            try
            {
                PrepareCommand(cmd, conn, null, cmdType, cmdText, commandParameters);
                MySqlDataReader reader = cmd.ExecuteReader();
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

        public static object ExecuteScalar(string cmdText, params MySqlParameter[] commandParameters)
        {
            return ExecuteScalar(CommandType.Text, cmdText, commandParameters);
        }

        public static object ExecuteScalar(CommandType cmdType, string cmdText, params MySqlParameter[] commandParameters)
        {
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandTimeout = commandTimeout;
            using (MySqlConnection connection = new MySqlConnection(ConnectionString))
            {
                PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
                object obj2 = cmd.ExecuteScalar();
                cmd.Parameters.Clear();
                return obj2;
            }
        }

        public static object ExecuteScalar(MySqlTransaction transaction, CommandType commandType, string commandText, params MySqlParameter[] commandParameters)
        {
            if (transaction == null)
            {
                throw new ArgumentNullException("transaction");
            }
            if ((transaction != null) && (transaction.Connection == null))
            {
                throw new ArgumentException("The transaction was rollbacked\tor commited, please\tprovide\tan open\ttransaction.", "transaction");
            }
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandTimeout = commandTimeout;
            PrepareCommand(cmd, transaction.Connection, transaction, commandType, commandText, commandParameters);
            object obj2 = cmd.ExecuteScalar();
            cmd.Parameters.Clear();
            return obj2;
        }

        public static object ExecuteScalar(string connectionString, CommandType cmdType, string cmdText, params MySqlParameter[] commandParameters)
        {
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandTimeout = commandTimeout;
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
                object obj2 = cmd.ExecuteScalar();
                cmd.Parameters.Clear();
                return obj2;
            }
        }

        public static MySqlParameter[] GetCachedParameters(string cacheKey)
        {
            MySqlParameter[] parameterArray = (MySqlParameter[])parmCache[cacheKey];
            if (parameterArray == null)
            {
                return null;
            }
            MySqlParameter[] parameterArray2 = new MySqlParameter[parameterArray.Length];
            int index = 0;
            int length = parameterArray.Length;
            while (index < length)
            {
                parameterArray2[index] = (MySqlParameter)parameterArray[index];
                index++;
            }
            return parameterArray2;
        }

        public static DbConnection GetConnection()
        {
            return new MySqlConnection(ConnectionString);
        }

        private static void PrepareCommand(MySqlCommand cmd, MySqlConnection conn, MySqlTransaction trans, CommandType cmdType, string cmdText, MySqlParameter[] cmdParms)
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            cmd.Connection = conn;
            cmd.CommandText = cmdText;
            if (trans != null)
            {
                cmd.Transaction = trans;
            }
            cmd.CommandType = cmdType;
            if (cmdParms != null)
            {
                foreach (MySqlParameter parameter in cmdParms)
                {
                    cmd.Parameters.Add(parameter);
                }
            }
        }

        public static string SqlBit(bool value)
        {
            if (value)
            {
                return "Y";
            }
            return "N";
        }

        public static bool SqlBool(string value)
        {
            return value.Equals("Y");
        }

        public static int CommandTimeout
        {
            get
            {
                return commandTimeout;
            }
            set
            {
                commandTimeout = value;
            }
        }
    }
}