using System;
using System.Collections;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Reflection;
using GradView.Library.Data;
using GradView.Library.Utility;
using GradView.WebApp.App_Code;
using System.Runtime.Serialization.Json;
using System.IO;
using System.Text;

namespace GradView.WebApp.AjaxPages
{
    /// <summary>
    /// $codebehindclassname$ 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class AjaxMsSql : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            if (context.Request.Form["_type"] != null)
            {
                switch (context.Request.Form["_type"].ToString())
                {
                    case "s_downTableConfig": Send_sysTableConfig(context); break;
                    case "s_downFieldConfig": Send_sysFieldConfig(context); break;
                    case "s_DownAllPageNum": Send_AllPageNum(context); break;
                    case "s_downPageInfo": Send_PageInfoJson(context); break;
                    case "s_downKeyTableInfo": Send_KeyTableInfoJson(context); break;
                    case "e_insertObj": InsertObj(context); break;
                    default: break;
                }
            }
        }

        /// <summary>
        /// 插入一个实体对像到数据库
        /// </summary>
        /// <param name="context"></param>
        private void InsertObj(HttpContext context)
        {
            string ClassName = context.Request.Form["ClassName"].ToString();
            string ClassData = context.Request.Form["ClassData"].ToString();
            string[] ClassNameArray = ClassName.Split('_');
            string CNStr = "";
            for (int i = 0; i < ClassNameArray.Length; i++)
            {
                CNStr += ClassNameArray[i].Substring(0, 1).ToUpper() + ClassNameArray[i].Substring(1).ToLower();
            }
            ClassName = CNStr;

            //反射实体
            Assembly Ab = Assembly.Load("GradView.Library");
            Type type = Ab.GetType("GradView.Library.Data." + ClassName, true, false);
            object obj = Activator.CreateInstance(type);
            DataContractJsonSerializer dcjs = new DataContractJsonSerializer(type);
            MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(ClassData));
            obj = dcjs.ReadObject(ms);

            //反射业务操作
            string opName = "Biz" + ClassName;
            string opMethod = "Insert";
            Type opType = Ab.GetType("GradView.Library.Data." + opName, true, false);
            object opObj = Activator.CreateInstance(opType);
            MethodInfo[] mi = opType.GetMethods();
            for (int i = 0; i < mi.Length; i++)
            {
                if (mi[i].Name == opMethod)
                {
                    object[] par = { 
                                       obj
                                   };
                    try
                    {
                        mi[i].Invoke(opObj, par);
                        break;
                    }
                    catch
                    {
                    }
                }
            }
            //Object[] par = { 
            //                   obj
            //               };
            //mi.Invoke(opObj, par);
        }


        /// <summary>
        /// 下载字典信息到前台
        /// </summary>
        /// <param name="context"></param>
        private void Send_KeyTableInfoJson(HttpContext context)
        {
            string KeyTableID = context.Request.Form["KeyTableID"].ToString();
            string sqlStr = "select keyTableSelect from sys_keys where keyTableID=@keyTableID";
            SqlParameter[] sp = {
                                    new SqlParameter("@keyTableID", SqlDbType.VarChar, 40)
                                };
            sp[0].Value = KeyTableID;
            sqlStr = SqlHelper.ExecuteScalar(sqlStr, sp).ToString();
            DataSet ds = SqlHelper.ExecuteDataSet(sqlStr, new SqlParameter[] { });
            string resStr = JsonTableHelper.ToJson(ds.Tables[0]);
            context.Response.Write(resStr);
        }

        /// <summary>
        /// 发送表所有信息表前台
        /// </summary>
        /// <param name="context"></param>
        private void Send_PageInfoJson_all(HttpContext context)
        {
            string tableName = context.Request.Form["tableName"].ToString();
            string tablePK = context.Request.Form["tablePK"].ToString();
            string tableFields = context.Request.Form["tableFields"].ToString();
            string tableFrom = context.Request.Form["tableFrom"].ToString();
            string tableWhere = context.Request.Form["tableWhere"].ToString();

            string sqlStr = "SELECT " + tablePK + "," + tableFields + " FROM " + tableName + tableFrom + " WHERE (1=1)";
            if (tableWhere != "")
            {
                sqlStr += " AND (" + tableWhere + ")";
            }
            DataSet ds = SqlHelper.ExecuteDataSet(sqlStr, new SqlParameter[] { });
            string resStr = JsonTableHelper.ToJson(ds.Tables[0]);
            context.Response.Write(resStr);
        }

        /// <summary>
        /// 发送一页的数据到前台
        /// </summary>
        /// <param name="context"></param>
        private void Send_PageInfoJson(HttpContext context)
        {
            string tableName = context.Request.Form["tableName"].ToString();
            string tablePK = context.Request.Form["tablePK"].ToString();
            string tableFields = context.Request.Form["tableFields"].ToString();
            string tableFrom = context.Request.Form["tableFrom"].ToString();
            string tableWhere = context.Request.Form["tableWhere"].ToString();
            string pageSize = context.Request.Form["pageSize"].ToString();
            string pageNum = context.Request.Form["pageNum"].ToString();

            int IntPageSize = Convert.ToInt32(pageSize);
            int IntPageNum = Convert.ToInt32(pageNum);
            int SSize = (IntPageNum - 1) * IntPageSize;

            string sqlStr = "SELECT TOP(" + pageSize + ") " + tablePK + "," + tableFields + " FROM " + tableName + tableFrom + " WHERE (" + tablePK + " NOT IN (SELECT TOP(" + SSize.ToString() + ") " + tablePK + " FROM " + tableName + "))";
            if (tableWhere != "")
            {
                sqlStr += " AND (" + tableWhere + ")";
            }
            DataSet ds = SqlHelper.ExecuteDataSet(sqlStr, new SqlParameter[] { });
            string resStr = JsonTableHelper.ToJson(ds.Tables[0]);
            context.Response.Write(resStr);
        }

        /// <summary>
        /// 发送总页数到前台
        /// </summary>
        /// <param name="context"></param>
        private void Send_AllPageNum(HttpContext context)
        {
            string tableName = context.Request.Form["tableName"].ToString();
            string tablePK = context.Request.Form["tablePK"].ToString();
            string tableFrom = context.Request.Form["tableFrom"].ToString();
            string tableWhere = context.Request.Form["tableWhere"].ToString();
            string pageShowNum = context.Request.Form["pageSize"].ToString();
            string sqlStr = "SELECT COUNT(" + tablePK + ") from " + tableName + tableFrom + " WHERE (1=1) ";
            if (tableWhere != "")
            {
                sqlStr += "AND (" + tableWhere + ")";
            }
            //SqlParameter[] sp = { };
            int DBNum = (int)SqlHelper.ExecuteScalar(sqlStr, new SqlParameter[] { });
            int showNum = Convert.ToInt32(pageShowNum);
            int pageNum = 0;
            if (DBNum % showNum != 0)
            {
                pageNum = DBNum / showNum + 1;
            }
            else
            {
                pageNum = DBNum / showNum;
            }
            context.Response.Write(pageNum.ToString());
        }

        /// <summary>
        /// 发送一个表ID的sys_FieldConfig配置信息到前台
        /// </summary>
        /// <param name="context"></param>
        private void Send_sysFieldConfig(HttpContext context)
        {
            string tableID = context.Request.Form["tableID"].ToString();
            string sqlStr = "SELECT fieldName,fieldNameCh,ShowMaxLength,isPK,isShow,isSelect,isIntType,isFK, FKTableName,FKTablePK,FKTableField,keyTableID FROM sys_FieldConfig WHERE (tableid=@tableid) ORDER BY ShowSort";
            SqlParameter[] sp = { 
                                    new SqlParameter("@tableid", SqlDbType.VarChar, 40)
                                };
            sp[0].Value = tableID;
            DataSet ds = SqlHelper.ExecuteDataSet(sqlStr, sp);
            string resStr = JsonTableHelper.ToJson(ds.Tables[0]);
            //string resStr = new JsonTabHelper().DataTableToJson(ds.Tables[0]);
            context.Response.Write(resStr);
        }

        /// <summary>
        /// 发送一个表ID的sys_tableConfig配置信息到前台
        /// </summary>
        /// <param name="context"></param>
        private void Send_sysTableConfig(HttpContext context)
        {
            string tableID = context.Request.Form["tableID"].ToString();
            SysTableconfig stc = new SysTableconfig();
            stc.Tableid = tableID;
            stc = BizSysTableconfig.GetModel(stc);
            string resStr = JsonHelper.GetJson<SysTableconfig>(stc);
            context.Response.Write(resStr);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
