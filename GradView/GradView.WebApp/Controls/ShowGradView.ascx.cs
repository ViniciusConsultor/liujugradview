using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using GradView.Library.Utility;

namespace GradView.WebApp.Controls
{
    public partial class ShowGradView : System.Web.UI.UserControl
    {
        /// <summary>
        /// 表编号
        /// </summary>
        public string tableID
        {
            get;
            set;
        }
        /// <summary>
        /// 请求的页页(根据数据库不同而不同)
        /// </summary>
        public string postAshxPage
        {
            get;
            set;
        }
        /// <summary>
        /// 每页显示的记录数
        /// </summary>
        public int pageSize
        {
            get;
            set;
        }
        /// <summary>
        /// 查询条件
        /// </summary>
        public string whereStr
        {
            get;
            set;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                switch (WebConfigHelper.GetAppSetting("DataBaseType"))
                {
                    case "SqlServer":
                        postAshxPage = "AjaxPages/AjaxMsSql.ashx";
                        break;
                    case "MySql":
                        postAshxPage = "AjaxPages/AjaxMySql.ashx";
                        break;
                    case "Oracle":
                        postAshxPage = "AjaxPages/AjaxOracle.ashx";
                        break;
                    default:
                        postAshxPage = "AjaxPages/AjaxMsSql.ashx";
                        break;
                }
                pageSize = Convert.ToInt32(WebConfigHelper.GetAppSetting("ShowPageSize"));
            }
        }
    }
}