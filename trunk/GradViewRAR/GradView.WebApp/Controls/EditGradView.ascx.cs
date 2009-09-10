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
    public partial class EditGradView : System.Web.UI.UserControl
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
        /// 修改的编号
        /// </summary>
        public string EditID
        {
            get;
            set;
        }
        /// <summary>
        /// 是否增加
        /// </summary>
        public bool isAdd
        {
            get;
            set;
        }
        public string PostPage
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
                        PostPage = "AjaxPages/AjaxMsSql.ashx";
                        break;
                    case "MySql":
                        PostPage = "AjaxPages/AjaxMySql.ashx";
                        break;
                    case "Oracle":
                        PostPage = "AjaxPages/AjaxOracle.ashx";
                        break;
                    default:
                        PostPage = "AjaxPages/AjaxMsSql.ashx";
                        break;
                }
            }
        }
    }
}