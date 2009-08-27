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
            if (!Page.IsPostBack)
            {
                //插入sys_FieldConfig_UserInfo_xsid信息
                //SysFieldconfig sfc = new SysFieldconfig();
                //sfc.Editmaxlength = 0;
                //sfc.Editminlength = 0;
                //sfc.Editsort = 0;
                //sfc.Edittypeid = "0";
                //sfc.Fieldnamech = "学生系统编号";
                //sfc.Fielename = "xsid";
                //sfc.Fktablefield = "";
                //sfc.Fktablename = "";
                //sfc.Fktablepk = "";
                //sfc.Isedit = "0";
                //sfc.Isfk = "0";
                //sfc.Isinttype = "0";
                //sfc.Ispk = "1";
                //sfc.Isselect = "0";
                //sfc.Isshow = "0";
                //sfc.Keytableid = "0";
                //sfc.Regextypeid = "0";
                //sfc.Regrxtext = "";
                //sfc.Showmaxlength = 0;
                //sfc.Showsort = 0;
                //sfc.Tableid = "a95b6902-95b7-4d78-a6b0-40794dd3feea";
                //sfc.Xsid = Guid.NewGuid().ToString();
                //BizSysFieldconfig.Insert(sfc);
            }
        }

        protected void btnInertGrade_Click(object sender, EventArgs e)
        {
            //插入年级信息
            for (int i = 1; i < 7; i++)
            {
                Gradeinfo gf = new Gradeinfo();
                gf.Njid = Guid.NewGuid().ToString();
                gf.Njmc = i.ToString() + "年级";
                gf.Njzz = "刘巨" + i.ToString();
                BizGradeinfo.Insert(gf);
            }
            LABMsg.Text = "插入年级信息成功";
        }

        protected void btnInsertClass_Click(object sender, EventArgs e)
        {
            //插入班级信息
            for (int i = 128; i < 133; i++)
            {
                Classinfo ci = new Classinfo();
                ci.Bjid = Guid.NewGuid().ToString();
                ci.Bjmc = i.ToString() + "班";
                ci.Bjpy = i.ToString() + "Ban";
                BizClassinfo.Insert(ci);
            }
            LABMsg.Text = "插入班级信息成功";
        }

        protected void btnInsertUserInfo_Click(object sender, EventArgs e)
        {
            //插入学生信息
            string ciStr = "";
            foreach (Classinfo ci in BizClassinfo.GetList())
            {
                ciStr += ci.Bjid + ",";
            }
            ciStr = ciStr.Substring(0, ciStr.Length - 1);
            string njStr = "";
            foreach (Gradeinfo nj in BizGradeinfo.GetList())
            {
                njStr += nj.Njid + ",";
            }
            njStr = njStr.Substring(0, njStr.Length - 1);
            string[] ciArray = ciStr.Split(',');
            string[] njArray = njStr.Split(',');

            for (int i = 0; i < 33; i++)
            {
                Userinfo userObj = new Userinfo();
                userObj.Bjid = ciArray[new Random().Next(0, ciArray.Length - 1)];
                userObj.Csrq = "1987-11-18";
                userObj.Dh = "1387311184" + i.ToString().Substring(0, 1);
                userObj.Dz = "湖南长沙";
                userObj.Mm = "123456";
                userObj.Njid = njArray[new Random().Next(0, ciArray.Length - 1)];
                userObj.Qq = "99550677" + i.ToString().Substring(0, 1);
                userObj.Sfz = "43012219871118671" + i.ToString().Substring(0, 1);
                userObj.Xb = (i % 2).ToString();
                userObj.Xh = "0665303" + (i + 32).ToString();
                userObj.Xl = new Random().Next(0, 3).ToString();
                userObj.Xm = "刘巨" + i.ToString();
                userObj.Xsid = Guid.NewGuid().ToString();
                userObj.Yx = "liuju150@vip.qq.com";
                userObj.Zp = "sys.jpg";
                BizUserinfo.Insert(userObj);
            }
            LABMsg.Text = "插入学生信息成功";
        }

        protected void btnSys_tableConfig_Click(object sender, EventArgs e)
        {
            //插入sys_TableConfig信息
            SysTableconfig stc = new SysTableconfig();
            stc.Customcolumnname = "详细";
            stc.Isallselect = "1";
            stc.Iscustomcolumn = "1";
            stc.Isdel = "1";
            stc.Isedit = "1";
            stc.Ispage = "1";
            stc.Issort = "1";
            stc.Tableid = Guid.NewGuid().ToString();
            stc.Tablename = "UserInfo";
            stc.Tablenamech = "学生信息表";
            stc.Showstyle = "style1.css";
            stc.Editstyle = "EditStyle1.css";
            BizSysTableconfig.Insert(stc);

            Response.Redirect("sys_FieldConfig.aspx?tableID=" + stc.Tableid);
        }

        protected void btnInsertEditType_Click(object sender, EventArgs e)
        {
            KeyEdittype ket = new KeyEdittype();

            ket.Keyid = Guid.NewGuid().ToString();
            ket.Keyname = "不要编辑";
            ket.Keycode = "0";
            ket.Keyinfo = "不要编辑证";
            ket.Sort = 0;
            BizKeyEdittype.Insert(ket);

            ket.Keyid = Guid.NewGuid().ToString();
            ket.Keyname = "文本框";
            ket.Keycode = "1";
            ket.Keyinfo = "数字,字条,小数,等少数字条输入";
            ket.Sort = 1;
            BizKeyEdittype.Insert(ket);

            ket.Keyid = Guid.NewGuid().ToString();
            ket.Keyname = "日期选择框";
            ket.Keycode = "2";
            ket.Keyinfo = "输入日期";
            ket.Sort = 2;
            BizKeyEdittype.Insert(ket);

            ket.Keyid = Guid.NewGuid().ToString();
            ket.Keyname = "下拉框";
            ket.Keycode = "3";
            ket.Keyinfo = "连接字典表,一定要指定一个字典管理表中的编号";
            ket.Sort = 3;
            BizKeyEdittype.Insert(ket);

            ket.Keyid = Guid.NewGuid().ToString();
            ket.Keyname = "密码框";
            ket.Keycode = "4";
            ket.Keyinfo = "一般用来输入密码";
            ket.Sort = 4;
            BizKeyEdittype.Insert(ket);


            ket.Keyid = Guid.NewGuid().ToString();
            ket.Keyname = "文件上传";
            ket.Keycode = "5";
            ket.Keyinfo = "用来上传文件";
            ket.Sort = 5;
            BizKeyEdittype.Insert(ket);

            ket.Keyid = Guid.NewGuid().ToString();
            ket.Keyname = "多行文本框";
            ket.Keycode = "6";
            ket.Keyinfo = "用来输入较多的描术性文字,但不用于发表文章";
            ket.Sort = 6;
            BizKeyEdittype.Insert(ket);

            LABMsg.Text = "插入编辑类型字典表成功";
        }

        protected void btnInsertRegexType_Click(object sender, EventArgs e)
        {
            KeyRegextype krt = new KeyRegextype();

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "all";
            krt.Keycode = "";
            krt.Keyinfo = "所有";
            krt.Sort = 0;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "intege1";
            krt.Keycode = "^$|^[1-9]\\d*$";
            krt.Keyinfo = "正整数";
            krt.Sort = 1;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "intege2";
            krt.Keycode = "^$|^-[1-9]\\d*$";
            krt.Keyinfo = "负整数";
            krt.Sort = 2;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "num";
            krt.Keycode = "^[0-9]*$";
            krt.Keyinfo = "数字";
            krt.Sort = 3;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "num1";
            krt.Keycode = "^$|^[1-9]\\d*|0$";
            krt.Keyinfo = "正数";
            krt.Sort = 4;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "num2";
            krt.Keycode = "^$|^-[1-9]\\d*|0$";
            krt.Keyinfo = "负数";
            krt.Sort = 5;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "decmal";
            krt.Keycode = "^$|^([+-]?)\\d*\\.\\d+$";
            krt.Keyinfo = "浮点数";
            krt.Sort = 6;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "decmal1";
            krt.Keycode = "^$|^[1-9]\\d*.\\d*|0.\\d*[1-9]\\d*$";
            krt.Keyinfo = "正浮点数";
            krt.Sort = 7;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "decmal2";
            krt.Keycode = "^$|^-([1-9]\\d*.\\d*|0.\\d*[1-9]\\d*)$";
            krt.Keyinfo = "负浮点数";
            krt.Sort = 8;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "decmal3";
            krt.Keycode = "^$|^[1-9]\\d*.\\d*|0.\\d*[1-9]\\d*|0?.0+|0$";
            krt.Keyinfo = "非负浮点数";
            krt.Sort = 9;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "decmal4";
            krt.Keycode = "^$|^(-([1-9]\\d*.\\d*|0.\\d*[1-9]\\d*))|0?.0+|0$";
            krt.Keyinfo = "非正浮点数";
            krt.Sort = 10;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "email";
            krt.Keycode = "^$|^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$";
            krt.Keyinfo = "邮箱地址";
            krt.Sort = 11;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "color";
            krt.Keycode = "^$|^[a-fA-F0-9]{6}$";
            krt.Keyinfo = "颜色";
            krt.Sort = 12;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "color";
            krt.Keycode = "^$|^[a-fA-F0-9]{6}$";
            krt.Keyinfo = "颜色";
            krt.Sort = 13;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "url";
            krt.Keycode = "^$|^http[s]?:\\/\\/([\\w-]+\\.)+[\\w-]+([\\w-./?%&=]*)?$";
            krt.Keyinfo = "URL地址";
            krt.Sort = 14;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "chinese";
            krt.Keycode = "^$|^[\\u4E00-\\u9FA5\\uF900-\\uFA2D]+$";
            krt.Keyinfo = "中文";
            krt.Sort = 15;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "ascii";
            krt.Keycode = "^$|^[\\x00-\\xFF]+$";
            krt.Keyinfo = "仅ACSII字符";
            krt.Sort = 16;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "zipcode";
            krt.Keycode = "^$|^\\d{6}$";
            krt.Keyinfo = "邮编";
            krt.Sort = 17;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "mobile";
            krt.Keycode = "^$|^(13|15)[0-9]{9}$";
            krt.Keyinfo = "手机";
            krt.Sort = 18;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "ip4";
            krt.Keycode = "^$|^(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5]).(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5]).(d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5]).(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])$";
            krt.Keyinfo = "IP地址";
            krt.Sort = 19;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "notempty";
            krt.Keycode = "^$|^\\S+$";
            krt.Keyinfo = "非空";
            krt.Sort = 20;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "picture";
            krt.Keycode = "^$|(.*)\\.(jpg|bmp|gif|ico|jpeg|png)$";
            krt.Keyinfo = "图片";
            krt.Sort = 21;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "rar";
            krt.Keycode = "^$|(.*)\\.(rar|zip|7zip|tgz)$";
            krt.Keyinfo = "压缩文件";
            krt.Sort = 22;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "date";
            krt.Keycode = "^(\\d{1,4})(-|\\/)(\\d{1,2})\\2(\\d{1,2})$";
            krt.Keyinfo = "日期";
            krt.Sort = 23;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "qq";
            krt.Keycode = "^$|^[1-9]*[1-9][0-9]*$";
            krt.Keyinfo = "QQ号";
            krt.Sort = 24;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "tel";
            krt.Keycode = "^$|(\\d{3}-|\\d{4}-)?(\\d{8}|\\d{7})";
            krt.Keyinfo = "国内电话";
            krt.Sort = 25;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "username";
            krt.Keycode = "^$|^\\w+$";
            krt.Keyinfo = "用户名";
            krt.Sort = 26;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "letter";
            krt.Keycode = "^$|^[A-Za-z]+$";
            krt.Keyinfo = "字母";
            krt.Sort = 27;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "letter_u";
            krt.Keycode = "^$|^[A-Z]+$";
            krt.Keyinfo = "大写字母";
            krt.Sort = 28;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "letter_l";
            krt.Keycode = "^$|^[a-z]+$";
            krt.Keyinfo = "小写字母";
            krt.Sort = 29;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "idcard";
            krt.Keycode = "^$|^[1-9]([0-9]{14}|[0-9]{17})$";
            krt.Keyinfo = "身份证";
            krt.Sort = 30;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "charNumber";
            krt.Keycode = "^$|^([\u4e00-\u9fa5]|[a-zA-Z0-9]|[_ ()])*$";
            krt.Keyinfo = "一般性字符";
            krt.Sort = 31;
            BizKeyRegextype.Insert(krt);

            krt.Keyid = Guid.NewGuid().ToString();
            krt.Keyname = "intege";
            krt.Keycode = "^$|^-?[1-9]\\d*$";
            krt.Keyinfo = "整数";
            krt.Sort = 32;
            BizKeyRegextype.Insert(krt);

            LABMsg.Text = "插入验证类型字典表成功";
        }

        protected void btnInsertSex_Click(object sender, EventArgs e)
        {
            KeySex ks = new KeySex();

            ks.Keyid = Guid.NewGuid().ToString();
            ks.Keyname = "男";
            ks.Keycode = "1";
            ks.Keyinfo = "男";
            ks.Sort = 0;
            BizKeySex.Insert(ks);

            ks.Keyid = Guid.NewGuid().ToString();
            ks.Keyname = "女";
            ks.Keycode = "0";
            ks.Keyinfo = "女";
            ks.Sort = 1;
            BizKeySex.Insert(ks);

            LABMsg.Text = "插入性别字典表成功";
        }

        protected void btnInsertKeyGrade_Click(object sender, EventArgs e)
        {
            KeyGrade kg = new KeyGrade();

            kg.Keyid = Guid.NewGuid().ToString();
            kg.Keyname = "小学";
            kg.Keycode = "1";
            kg.Keyinfo = "小学";
            kg.Sort = 0;
            BizKeyGrade.Insert(kg);

            kg.Keyid = Guid.NewGuid().ToString();
            kg.Keyname = "中学";
            kg.Keycode = "2";
            kg.Keyinfo = "中学";
            kg.Sort = 1;
            BizKeyGrade.Insert(kg);

            kg.Keyid = Guid.NewGuid().ToString();
            kg.Keyname = "高中";
            kg.Keycode = "3";
            kg.Keyinfo = "高中";
            kg.Sort = 3;
            BizKeyGrade.Insert(kg);

            kg.Keyid = Guid.NewGuid().ToString();
            kg.Keyname = "大学";
            kg.Keycode = "4";
            kg.Keyinfo = "大学";
            kg.Sort = 4;
            BizKeyGrade.Insert(kg);

            LABMsg.Text = "插入学历字典表成功";
        }

        protected void btnInsertKeySysKey_Click(object sender, EventArgs e)
        {
            SysKeys sk = new SysKeys();

            sk.Keytableid = "";
            sk.Keytablename = "NotTable";
            sk.Keytablenamech = "无字典";
            sk.Keytableselect = "";
            sk.Sort = 0;
            BizSysKeys.Insert(sk);

            sk.Keytableid = Guid.NewGuid().ToString();
            sk.Keytablename = "key_grade";
            sk.Keytablenamech = "学历字典表";
            sk.Keytableselect = "SELECT keyName, keyCode FROM key_grade ORDER BY sort";
            sk.Sort = 1;
            BizSysKeys.Insert(sk);

            sk.Keytableid = Guid.NewGuid().ToString();
            sk.Keytablename = "key_regexType";
            sk.Keytablenamech = "验证类型字典表";
            sk.Keytableselect = "SELECT keyName, keyCode FROM key_regexType ORDER BY sort";
            sk.Sort = 2;
            BizSysKeys.Insert(sk);

            sk.Keytableid = Guid.NewGuid().ToString();
            sk.Keytablename = "key_sex";
            sk.Keytablenamech = "性别字典表";
            sk.Keytableselect = "SELECT keyName, keyCode FROM key_sex ORDER BY sort";
            sk.Sort = 3;
            BizSysKeys.Insert(sk);

            sk.Keytableid = Guid.NewGuid().ToString();
            sk.Keytablename = "key_editType";
            sk.Keytablenamech = "编辑类型字典表";
            sk.Keytableselect = "SELECT keyName, keyCode FROM key_editType ORDER BY sort";
            sk.Sort = 4;
            BizSysKeys.Insert(sk);

            LABMsg.Text = "插入字典管理表成功";
        }
    }
}
