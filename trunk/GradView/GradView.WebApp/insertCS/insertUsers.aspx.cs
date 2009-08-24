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
    public partial class insertUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //插入年级信息
            //Njxx njxx = new Njxx();
            //njxx.Njid = Guid.NewGuid().ToString();
            //njxx.Njmc = "六年级";
            //njxx.Njzz = "刘巨6";
            //BizNjxx.Insert(njxx);
            
            //插入班级信息
            //for (int i = 128; i < 133; i++)
            //{
            //    Classinfo ci = new Classinfo();
            //    ci.Bjid = Guid.NewGuid().ToString();
            //    ci.Bjmc = i.ToString() + "班";
            //    ci.Bjpy = i.ToString() + "Ban";
            //    BizClassinfo.Insert(ci);
            //}

            //插入学生信息
            //string ciStr = "";
            //foreach (Classinfo ci in BizClassinfo.GetList())
            //{
            //    ciStr += ci.Bjid + ",";
            //}
            //ciStr = ciStr.Substring(0, ciStr.Length - 1);
            //string njStr = "";
            //foreach (Njxx nj in BizNjxx.GetList())
            //{
            //    njStr += nj.Njid + ",";
            //}
            //njStr = njStr.Substring(0, njStr.Length - 1);
            //string[] ciArray = ciStr.Split(',');
            //string[] njArray = njStr.Split(',');

            //for (int i = 0; i < 33; i++)
            //{
            //    Users userObj = new Users();
            //    userObj.Bjid = ciArray[new Random().Next(0, ciArray.Length - 1)];
            //    DateTime dt=new DateTime();
            //    userObj.Csrq = dt.Year.ToString() + "-" + dt.Month.ToString() + "-" + dt.Date.ToString();
            //    userObj.Dh = "1387311184" + i.ToString().Substring(0, 1);
            //    userObj.Dz = "湖南长沙";
            //    userObj.Mm = "123456";
            //    userObj.Njid = njArray[new Random().Next(0, ciArray.Length - 1)];
            //    userObj.Qq = "99550677" + i.ToString().Substring(0,1);
            //    userObj.Sfz = "43012219871118671" + i.ToString().Substring(0, 1);
            //    userObj.Xb = (i % 2).ToString();
            //    userObj.Xh = "06653033" + i.ToString().Substring(0, 1);
            //    userObj.Xl = new Random().Next(0, 3).ToString();
            //    userObj.Xm = "刘巨" + i.ToString();
            //    userObj.Xsid = Guid.NewGuid().ToString();
            //    userObj.Yx = "liuju150@vip.qq.com";
            //    userObj.Zp = "sys.jpg";
            //    BizUsers.Insert(userObj);
            //}

            //插入sys_table信息
            //SysTable st = new SysTable();
            //st.Customcolumnname = "详细";
            //st.Isallselect = "1";
            //st.Iscustomcolumn = "1";
            //st.Isdel = "1";
            //st.Isedit = "1";
            //st.Ispage = "1";
            //st.Tableid = Guid.NewGuid().ToString();
            //st.Tablename = "users";
            //st.Tablenamech = "学生信息";
            //st.Tablestyle = "style1.css";
            //BizSysTable.Insert(st);

            //插入sys_ShowConfig信息
        }
    }
}
