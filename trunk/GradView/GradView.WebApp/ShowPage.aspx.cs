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

namespace GradView.WebApp
{
    public partial class ShowPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["tableID"] != null)
                {
                    SGV.tableID = Request.QueryString["tableID"].ToString();
                }
                else if (Request.Form["tableID"] != null)
                {
                    SGV.tableID = Request.Form["tableID"].ToString();
                }
                else
                {
                    SGV.tableID = "9014b630-de80-42c8-b21b-ee8e8518ef22";
                }
            }
        }
    }
}
