<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditGradView.ascx.cs" Inherits="GradView.WebApp.Controls.EditGradView" %>
<link href="../Style/EStyle1.css" rel="stylesheet" type="text/css" />
<script src="../JavaScript/jquery.js" type="text/javascript"></script>
<script src="../JavaScript/ajaxupload.js" type="text/javascript"></script>
<script src="../JavaScript/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
var _EGV_PostPage="<%= PostPage %>";var _EGV_TableID="<%= tableID %>";var _EGV_isAdd="<%= isAdd %>"=="True"?true:false;var _EGV_updateID="<%= EditID %>";var _EGV_addID="<%= Guid.NewGuid().ToString() %>";
</script>
<script src="../JavaScript/min/EGV_min.js" type="text/javascript"></script>

<div>
    <span id="msg"></span>
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
            </div>
            <%--表单结束区--%>
            <div id="E_edit_end_div">
                <input type="button" value="提交" onclick="_FunE_btn_send_ok()" class="E_Table_input_button_file" />
            </div>
        </div>
    </div>
</div>