<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShowGradView.ascx.cs" Inherits="GradView.WebApp.Controls.ShowGradView" %>
<link href="../Style/Style1.css" rel="stylesheet" type="text/css" />
<script src="../JavaScript/jquery.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
//表编号(在sys_tableConfig中表的编号)
var _GV_tableID="9014b630-de80-42c8-b21b-ee8e8518ef22";
//在表sys_tableConfig中的配置信息
var _GV_tableConfigJson=new Array();
//表在sys_FieldConfig中的配置信息
var _GV_FieldConfigJson=new Array();
//要post的页
var _GV_PostPage="AjaxPages/AjaxMsSql.ashx";
//页面开始要运行的
$(document).ready(function(){
    _Fun_DownTableConfigJson();
    _Fun_DownFieldConfigJson();
});
//下载sys_tableConfig中的配置信息
function _Fun_DownTableConfigJson()
{
    $.ajax({
        url:_GV_PostPage,
        type:"POST",
        dataType:"json",
        async:false,
        data:{_type:"s_downTableConfig",tableID:_GV_tableID},
        success:function(data){
            _GV_tableConfigJson=data;
            alert(_GV_tableConfigJson.Tablenamech);
        }
    });
}
//下载sys_FieldConfig中的配置信息
function _Fun_DownFieldConfigJson()
{
    $.ajax({
        url:_GV_PostPage,
        type:"POST",
        dataType:"json",
        async:false,
        data:{_type:"s_downFieldConfig",tableID:_GV_tableID},
        success:function(data){
            _GV_FieldConfigJson=data;
            alert(_GV_FieldConfigJson[1].fieldNameCh);
        }
    });
}
</script>

<div>
    <div id="ShowControl_div">
        <%--功能操作区--%>
        <div id="S_click_div">
            
        </div>
        
        <%--查询控件区--%>
        <div id="S_select_div">
            
        </div>
        
        <%--显示控件区--%>
        <div id="S_show_div">
            <%--表显示区--%>
            <div id="S_show_table_div">
            
            </div>
            
            <%--表分页区--%>
            <div id="S_show_page_div">
                <span>总共有<a id="S_show_page_allPageNum_a"></a>页</span>
                <span>当前为第<a id="S_show_page_PageNum_a">1</a>页</span>
                <span id="S_show_page_firstPage_span" onclick="FirstPage_SpanClick()">首页</span>
                <span id="S_show_page_upPage_span" onclick="UpPage_SpanClick()">上一页</span>
                <strong id="S_show_page_showPageNum_strong"></strong>
                <span id="S_show_page_nextPage_span" onclick="NextPage_SpanClick()">下一页</span>
                <span id="S_show_page_endPage_span" onclick="EndPage_SpanClick()">未页</span>
                <span>跳到第<select id="S_show_page_goToPage_select" onchange="GoToPage_SelectChange()"></select>页</span>
            </div>
        </div>
    </div>
</div>