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
                    default: break;
                }
            }
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
