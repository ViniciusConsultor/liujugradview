<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertUsers.aspx.cs" Inherits="GradView.WebApp.insertCS.insertUsers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Button ID="btnInertGrade" runat="server" Text="插入年级" 
            onclick="btnInertGrade_Click" />
        <br />
        <br />
        <asp:Button ID="btnInsertClass" runat="server" Text="插入班级" 
            onclick="btnInsertClass_Click" />
        <br />
        <br />
        <asp:Button ID="btnInsertUserInfo" runat="server" Text="插入学生信息" 
            onclick="btnInsertUserInfo_Click" />
        <br />
        <br />
        <asp:Button ID="btnSys_tableConfig" runat="server" Text="插入系统表配置" 
            onclick="btnSys_tableConfig_Click" />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnInsertEditType" runat="server" Text="插入编辑类型字典表" 
            onclick="btnInsertEditType_Click" />
    &nbsp;&nbsp;
        <asp:Button ID="btnInsertRegexType" runat="server" Text="插入验证类型字典表" 
            onclick="btnInsertRegexType_Click"  />
    &nbsp;&nbsp;
        <asp:Button ID="btnInsertSex" runat="server" Text="插入性别字典表" 
            onclick="btnInsertSex_Click" />
    &nbsp;&nbsp;
        <asp:Button ID="btnInsertKeyGrade" runat="server" Text="插入学历字典" 
            onclick="btnInsertKeyGrade_Click" />
        <br />
        <br />
        <asp:Button ID="btnInsertKeySysKey" runat="server" Text="插入字典管理表信息" 
            onclick="btnInsertKeySysKey_Click" />
        <br />
        <br />
        <asp:Label ID="LABMsg" runat="server" Text="信息" ForeColor="Red"></asp:Label>
    </div>
    </form>
</body>
</html>
