<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditHtmlShow.aspx.cs" Inherits="GradView.WebApp.EditHtmlShow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>用来做EditGradView的HTML代码</title>
<link href="Style/EStyle1.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function rec()
{
    var aStr=document.getElementById("StrCS").value;
    var bStr=aStr.replace("\"","&quot;");
    alert(bStr);
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div>
    <input type="text" id="StrCS" value="&quot;" />
    <input type="button" value="aTob" onclick="rec()" />
    <div id="EditControl_div">
        <%--功能操作区--%>
        <div id="E_click_div">
        </div>
        <%--表单显示区--%>
        <div id="E_edit_div">
            <%--表单头部区--%>
            <div id="E_edit_head_div">
            </div>
            <%--表单表身区--%>
            <div id="E_edit_body_div">
                <table border="1" cellpadding="0" cellspacing="0" id="E_Table">
                    <tr style="display:none">
                        <td colspan="3"><input type="hidden" name="" value=""/></td>
                    </tr>
                    <tr class="E_Table_tr">
                        <td class="E_Table_tr_oneTd">用户名:</td>
                        <td class="E_Table_tr_twoTd">
                            <input type="text" class="E_Table_input_text" name="userName" onblur="_FunE_regex('num')" maxlength="10" onkeyup="_FunE_minLength(10)" />
                        </td>
                        <td class="E_Table_tr_thrTd" abbr="userName">输入用户名,可以是英文,数字,下划线</td>
                    </tr>
                    <tr class="E_Table_tr">
                        <td class="E_Table_tr_oneTd">性别:</td>
                        <td class="E_Table_tr_twoTd">
                            <select name="sex" class="E_Table_select">
                                <option value="1">男</option>
                                <option value="0">女</option>
                            </select>
                        </td>
                        <td class="E_Table_tr_thrTd" abbr="sex">选择男女性别</td>
                    </tr>
                    <tr class="E_Table_tr">
                        <td class="E_Table_tr_oneTd">图片:</td>
                        <td class="E_Table_tr_twoTd">
                            <input type="text" class="E_Table_input_text_file" name="photo" readonly="readonly" />
                            <input type="button" value="浏览..." valgoto="photo" class="E_Table_input_button_file" reg="image" />
                        </td>
                        <td class="E_Table_tr_thrTd" abbr="photo">选择个人照片上传</td>
                    </tr>
                    <tr class="E_Table_tr">
                        <td class="E_Table_tr_oneTd">备注:</td>
                        <td class="E_Table_tr_twoTd">
                            <textarea rows="6" cols="35" class="E_Table_textarea" name="bz"></textarea>
                        </td>
                        <td class="E_Table_tr_thrTd" abbr="bz">添加其它信息</td>
                    </tr>
                </table>
            </div>
            <%--表单结束区--%>
            <div id="E_edit_end_div">
            </div>
        </div>
    </div>
</div>
</form>
</body>
</html>
