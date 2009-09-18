<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConnTest.aspx.cs" Inherits="GradView.WebApp.ConnTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="LabConnStr" runat="server" Text="Label"></asp:Label>
    
    </div>
    <asp:TextBox ID="txtSql" runat="server" Height="500px" TextMode="MultiLine" 
        Width="600px"></asp:TextBox>
    <br />
    <asp:Button ID="btnSend" runat="server" onclick="btnSend_Click" Text="提交" />
    </form>
</body>
</html>
