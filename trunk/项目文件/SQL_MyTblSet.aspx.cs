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
using System.Xml;
using BLC;

public partial class SQL_MyTblSet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData("");
        }
    }

    #region 绑定数据
    public void BindData(string TableName)
    {
        if (TableName == "")
        {

            string sql = "select * from V_Bpzxx order by table_name,convert(int,zdsx)";
            DataSet ds = DBase.ExeSqlForDS(sql);
            ListView1.DataSource = ds;
            ListView1.DataBind();
        }
    }
    #endregion


    protected void btnBack_Click(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string sql = "";
        for (int i = 0; i < ListView1.Items.Count; i++)
        {
            Label lblTblName = (Label)ListView1.Items[i].FindControl("lblTblName");
            Label lblZdm = (Label)ListView1.Items[i].FindControl("lblZdm");
            TextBox txtZwm = (TextBox)ListView1.Items[i].FindControl("txtZwm");
            TextBox txtXsSx = (TextBox)ListView1.Items[i].FindControl("txtXsSx");
            HtmlInputCheckBox cbxSfxx = (HtmlInputCheckBox)ListView1.Items[i].FindControl("cbxSfxx");
            string sfxs = (cbxSfxx.Checked == true ? "是" : "否");
            HtmlInputCheckBox cbxSfkbj = (HtmlInputCheckBox)ListView1.Items[i].FindControl("cbxSfkbj");
            string sfsy = (cbxSfkbj.Checked == true ? "是" : "否");
            TextBox txtBdBds = (TextBox)ListView1.Items[i].FindControl("txtBdBds");
            HtmlInputCheckBox cbxSfpx = (HtmlInputCheckBox)ListView1.Items[i].FindControl("cbxSfpx");
            string sfpx = (cbxSfpx.Checked == true ? "是" : "否");
            TextBox txtzdpxfs = (TextBox)ListView1.Items[i].FindControl("txtzdpxfs");
            TextBox txtjlb = (TextBox)ListView1.Items[i].FindControl("txtjlb");
            string theSql = "delete from xtgl_bzdpzxx where zdssbm='" + lblTblName.Text.Trim() + "' and zdm='" + lblZdm.Text.Trim() + "'  ";
            theSql = theSql + "insert into xtgl_bzdpzxx values('" + lblZdm.Text.Trim() + "','" + lblTblName.Text.Trim() + "','" + txtZwm.Text.Trim() + "','" + txtXsSx.Text.Trim() + "','" + sfxs + "','" + sfsy + "','" + txtBdBds.Text.Trim() + "','" + sfpx + "','" + txtzdpxfs.Text.Trim() + "','" + txtjlb.Text.Trim() + "')  ";
            sql = sql + theSql;
        }
        DBase.ExeSqlForVoid(sql);

        //写入XML
        XmlDocument xd = new XmlDocument();
        string road = Server.MapPath("\\XML\\xtgl_bpzxx.xml");
        try
        {
            xd.Load(road);
            xd.RemoveAll();
        }
        catch { }
        DataSet ds = DBase.ExeSqlForDS("select * from V_Bpzxx order by table_name,convert(int,zdsx)");
        ds.Tables[0].WriteXml(road);
    }
}