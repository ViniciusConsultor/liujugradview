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
using System.Data.OleDb;

namespace GradView.WebApp
{
    public partial class ConnTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //if (!Page.IsPostBack)
            //{
            //    SqlConnection conn = new SqlConnection(connStr);
            //    if (conn.State == ConnectionState.Open)
            //    {
            //        Response.Write("true");
            //        conn.Close();
            //    }
            //    else
            //    {
            //        try
            //        {
            //            conn.Open();
            //            Response.Write("true");
            //            conn.Close();
            //        }
            //        catch
            //        {
            //            conn.Close();
            //        }

            //    }
            //    Response.End();
            //}

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            //string sqlStr = txtSql.Text;
            //string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //SqlConnection conn = new SqlConnection(connStr);
            //try
            //{
            //    if (conn.State != ConnectionState.Open)
            //    {
            //        conn.Open();
            //    }
            //    SqlCommand cmd = new SqlCommand(sqlStr, conn);
            //    cmd.ExecuteNonQuery();
            //    conn.Close();
            //}
            //catch
            //{
            //    conn.Close();
            //}
        }
    }
}
