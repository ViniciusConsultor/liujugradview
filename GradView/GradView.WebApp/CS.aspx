<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS.aspx.cs" Inherits="GradView.WebApp.CS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>无标题页</title>
<script src="JavaScript/jquery.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
function CSUpload()
{
    var jsonStr="{";
    $("#from_div input[type='text']").each(function(){
        jsonStr+="\""+$(this).attr("name")+"\":\""+$(this).val()+"\","
    });
    jsonStr=jsonStr.substring(0,jsonStr.length-1)+"}";
    
    $.post("AjaxPages/AjaxMsSql.ashx",{_type:"e_insertObj",ClassName:"key_sex",ClassData:jsonStr},function(data){
        
    });
    
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="from_div">
        keyID:<input type="text" name="keyID" value="<%= newGuid %>" /><br />
        keyName:<input type="text" name="keyName" /><br />
        keyCode<input type="text" name="keyCode" /><br />
        keyInfo<input type="text" name="keyInfo" /><br />
        <input type="button" value="提交" onclick="CSUpload()" />
    </div>
    </form>
</body>
</html>
