using System;
using System.Text;
using System.Web.UI;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    ///<summary>
    ///Title: JavascriptHelper类
    ///Description: JavascriptHelper工具类
    ///@author 万灵杰
    ///@version 1.0.0.0
    ///@date 2009年7月30日
    ///@modify 
    ///@date 
    /// </summary>
    public class JavascriptHelper
    {
        public static void Alert(Page P, string ErrorInfo)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("<script language='javascript' type='text/javascript'>");
            builder.Append("window.alert('");
            builder.Append(ErrorInfo);
            builder.Append("');");
            builder.Append("</script>");
            P.ClientScript.RegisterStartupScript(P.GetType(), "KEY", builder.ToString());
        }

        public static void Alert(Page page, string msg, string url)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("<script>");
            builder.Append("alert('" + msg + "');");
            builder.Append("window.location = '" + url + "';");
            builder.Append("</script>");
            page.ClientScript.RegisterClientScriptBlock(page.GetType(), "close", builder.ToString());
        }

        //public static void Alert(Page P, string ErrorInfo, Control UpdatePanelName)
        //{
        //    StringBuilder builder = new StringBuilder();
        //    builder.Append("<script language='javascript' type='text/javascript'>");
        //    builder.Append("window.alert('");
        //    builder.Append(ErrorInfo);
        //    builder.Append("');");
        //    builder.Append("</script>");
        //    P.ClientScript.RegisterStartupScript(P.GetType(), "KEY", builder.ToString());
        //    builder.Remove(0, builder.Length);
        //    builder.Append("window.alert('");
        //    builder.Append(ErrorInfo);
        //    builder.Append("');");
        //    ScriptManager.RegisterStartupScript(UpdatePanelName, P.GetType(), "KEY", builder.ToString(), true);
        //}

        //public static void Alert(Page page, string msg, string url, Control UpdatePanelName)
        //{
        //    StringBuilder builder = new StringBuilder();
        //    builder.Append("<script>");
        //    builder.Append("alert('" + msg + "');");
        //    builder.Append("window.location = '" + url + "';");
        //    builder.Append("</script>");
        //    ScriptManager.RegisterStartupScript(UpdatePanelName, page.GetType(), "KEY", builder.ToString(), true);
        //}

        public static void AlertRedirect(Page page, string msg, string url)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("<script>");
            builder.Append("alert('" + msg + "');");
            builder.Append("window.location = '" + url + "';");
            builder.Append("</script>");
            page.ClientScript.RegisterClientScriptBlock(page.GetType(), "close", builder.ToString());
        }

        //public static void AlertRedirect(Page page, string msg, string url, Control UpdatePanelName)
        //{
        //    StringBuilder builder = new StringBuilder();
        //    builder.Append("<script>");
        //    builder.Append("alert('" + msg + "');");
        //    builder.Append("window.location = '" + url + "';");
        //    builder.Append("</script>");
        //    ScriptManager.RegisterStartupScript(UpdatePanelName, page.GetType(), "KEY", builder.ToString(), true);
        //}

        public static void AllString(Page P, string allCommand)
        {
            P.ClientScript.RegisterStartupScript(P.GetType(), "KEY", allCommand);
        }

        public static void Close(Page page)
        {
            string str = "<script>window.close();</script>";
            page.ClientScript.RegisterClientScriptBlock(page.GetType(), "close", str);
        }

        public static void Confirm(Page P, string ErrorInfo)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("<script language='javascript' type='text/javascript'>");
            builder.Append("return confirm('");
            builder.Append(ErrorInfo);
            builder.Append("');");
            builder.Append("</script>");
            P.ClientScript.RegisterStartupScript(P.GetType(), "KEY", builder.ToString());
        }
    }
}
