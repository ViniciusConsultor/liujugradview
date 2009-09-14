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
using System.Data.SqlClient;

namespace GradView.WebApp
{
    public partial class conn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                if (conn.State == ConnectionState.Open)
                {
                    Response.Write("true");
                    conn.Close();
                }
                else
                {
                    try
                    {
                        conn.Open();
                        Response.Write("true");
                        conn.Close();
                    }
                    catch
                    {
                        Response.Write("false");
                    }
                    finally
                    {
                        conn.Close();
                    }
                }
            }
        }
    }
}
