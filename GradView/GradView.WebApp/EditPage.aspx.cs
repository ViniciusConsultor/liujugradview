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
    public partial class EditPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["tableID"] != null)
                {
                    EGV.tableID = Request.QueryString["tableID"].ToString();
                }
                else if (Request.Form["tableID"] != null)
                {
                    EGV.tableID = Request.Form["tableID"].ToString();
                }
                else
                {
                    EGV.tableID = "9014b630-de80-42c8-b21b-ee8e8518ef22";
                }

                if (Request.QueryString["EditID"] != null)
                {
                    EGV.EditID = Request.QueryString["EditID"].ToString();
                    EGV.isAdd = false;
                }
                else if (Request.Form["EditID"] != null)
                {
                    EGV.EditID = Request.Form["EditID"].ToString();
                    EGV.isAdd = false;
                }
                else
                {
                    EGV.EditID = "08a6b158-ac98-403c-88c2-48af0babd6f1";
                    EGV.isAdd = true;
                }
            }
        }
    }
}
