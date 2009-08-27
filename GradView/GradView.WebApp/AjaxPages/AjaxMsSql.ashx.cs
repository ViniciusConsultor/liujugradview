using System;
using System.Collections;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Data.SqlClient;
using GradView.Library.Data;
using GradView.Library.Utility;
using GradView.WebApp.App_Code;

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
                    default: break;
                }
            }
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
            string pageShowNum = context.Request.Form["pageShowNum"].ToString();
            string sqlStr = "SELECT COUNT(" + tablePK + ") from " + tableName + tableFrom + " WHERE (1=1) ";
            if (tableWhere != "")
            {
                sqlStr += "AND (" + tableWhere + ")";
            }
            SqlParameter[] sp = { };
            int DBNum = (int)SqlHelper.ExecuteScalar(sqlStr, sp);
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
