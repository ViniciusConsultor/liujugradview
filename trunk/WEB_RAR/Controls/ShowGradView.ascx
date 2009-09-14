<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShowGradView.ascx.cs" Inherits="GradView.WebApp.Controls.ShowGradView" %>
<link id="S_TableStyleFile" href="../Style/Style1.css" rel="stylesheet" type="text/css" />
<script src="../JavaScript/jquery.js" type="text/javascript"></script>
<script src="../JavaScript/tablesorter.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
var _GV_tableID="<%=tableID %>";var _GV_PostPage="<%=postAshxPage %>";var _GVS_OldWhereStr="<%=whereStr %>";var _GVP_ShowPageNum=<%=pageSize%>;
</script>
<script type="text/javascript" src="../JavaScript/min/SGV_min.js"></script>

<div>
    <div id="ShowControl_div">
        <%--功能操作区--%>
        <div id="S_click_div">
            <input type="button" value="选择结果" onclick="showCheckBoxSelect()" />
            <input type="button" value="增加记录" onclick="_Fun_AddRow()" />
            <input type="button" value="打印" onclick="_Fun_Btn_Click_print()" />
            <input type="button" value="查询" onclick="_Fun_Btn_ShowSelect_click()" />
        </div>
        
        <%--查询控件区--%>
        <div id="S_select_div" style="display:none">
            <%--表单显示区--%>
            <div id="S_select_from_div">
            </div>
            <%--按键提交区--%>
            <div id="S_select_btn_div">
                <input type="button" value="查询" onclick="_Fun_Btn_select_OK_Click()" />
                <input type="button" value="清除查询条件" onclick="_Fun_Btn_Cls_SelectWhere_click()" />
            </div>
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
                <span id="S_show_page_firstPage_span" onclick="_Fun_S_show_page_firstPage_span_click()">首页</span>
                <span id="S_show_page_upPage_span" onclick="_Fun_S_show_page_upPage_span_click()">上一页</span>
                <strong id="S_show_page_showPageNum_strong"></strong>
                <span id="S_show_page_nextPage_span" onclick="_Fun_S_show_page_nextPage_span_click()">下一页</span>
                <span id="S_show_page_endPage_span" onclick="_Fun_S_show_page_endPage_span_click()">未页</span>
                <span>跳到第<select id="S_show_page_goToPage_select" onchange="_Fun_S_show_page_goToPage_select_change()"></select>页</span>
            </div>
        </div>
    </div>
</div>
<%--页面加载完成后.加载这个日期控件,可能不要.所以放到最后加载--%>
<script src="../JavaScript/My97DatePicker/WdatePicker.js" type="text/javascript"></script>