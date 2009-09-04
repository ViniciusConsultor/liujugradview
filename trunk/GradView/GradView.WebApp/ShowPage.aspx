<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowPage.aspx.cs" Inherits="GradView.WebApp.ShowPage" %>

<%@ Register src="Controls/ShowGradView.ascx" tagname="ShowGradView" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>无标题页</title>
<script language="javascript" type="text/javascript">
//这里面写的是用户自定义的FUN
function UserFun_Custom(tableInfo,rowInfo)
{
    /*
        tableInfo is Object()
            tableInfo.tableName
            tableInfo.tablePK
            tableInfo.keyVal
    
        rowInfo is Object()
        这里面是你点击的行的相关信息
        与具体的数据字段有关
        如rowInfo.xsid
    */
    var alertStr="tableInfo Object()";
    alertStr+="\r\ntableInfo.tableName:"+tableInfo.tableName;
    alertStr+="\r\ntableInfo.tablePK:"+tableInfo.tablePK;
    alertStr+="\r\ntableInfo.keyVal:"+tableInfo.keyVal;
    alertStr+="\r\n\r\nrowInfo Object()"
    alertStr+="\r\nrowInfo.xsid:"+rowInfo.xsid;
    alertStr+="\r\nrowInfo.njmc:"+rowInfo.njmc;
    alertStr+="\r\nrowInfo.bjmc:"+rowInfo.bjmc;
    alertStr+="\r\nrowInfo.xh:"+rowInfo.xh;
    alertStr+="\r\nrowInfo.xm:"+rowInfo.xm;
    alertStr+="\r\n......";
    alert(alertStr);
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:ShowGradView ID="SGV" runat="server" />
    </div>
    </form>
</body>
</html>
