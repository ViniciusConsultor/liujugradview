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
using GradView.Library.Data;

namespace GradView.WebApp.insertCS
{
    public partial class sys_FieldConfig : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["tableID"] != null)
            { 
            }
        }

        protected void btnSendFieldConfig_Click(object sender, EventArgs e)
        {
            SysFieldconfig sfc = new SysFieldconfig();
            sfc.Xsid = Guid.NewGuid().ToString();
            sfc.Tableid = txtTableID.Text;
            sfc.Fielename = txtFieldName.Text;
            sfc.Fieldnamech = txtFieldNameCh.Text;
            sfc.Showmaxlength = txtShowMaxLength.Text;
            sfc.Showsort = txtShowSort.Text;
            sfc.Ispk = rblIsPK.SelectedValue;
            sfc.Isshow = rblIsShow.SelectedValue;
            sfc.Isselect = rblIsSelect.SelectedValue;
            sfc.Isinttype = rblIsIntType.SelectedValue;
            sfc.Isfk = rblIsFK.SelectedValue;
            sfc.Fktablename = txtFKTableName.Text;
            sfc.Fktablepk = txtFKTablePK.Text;
            sfc.Fktablefield = txtFKTableField.Text;
            sfc.Regextypeid = ddlRegexType.SelectedValue;
            sfc.Edittypeid = ddlEditType.SelectedValue;
            sfc.Regrxtext = txtRegexText.Text;
            sfc.Keytableid = ddlKeyTableID.SelectedValue;
            sfc.Isedit = rblIsEdit.SelectedValue;
            sfc.Editsort = txtEditSort.Text;
            sfc.Editmaxlength = txtEditMaxLength.Text;
            sfc.Editminlength = txtEditMinLength.Text;
            sfc.Ismust = rblIsMust.SelectedValue;
            BizSysFieldconfig.Insert(sfc);
        }
    }
}
