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
    public partial class CS : System.Web.UI.Page
    {
        public string newGuid
        {
            get;
            set;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                newGuid = Guid.NewGuid().ToString();
            }
        }
    }
}
