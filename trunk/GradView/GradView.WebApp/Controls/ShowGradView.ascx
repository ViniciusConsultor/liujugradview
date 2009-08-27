<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShowGradView.ascx.cs" Inherits="GradView.WebApp.Controls.ShowGradView" %>
<link id="S_TableStyleFile" href="../Style/Style1.css" rel="stylesheet" type="text/css" />
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
//加载排序JavaScript文件tableSorter.js是否成功
var _GV_LoadTableSorterIsTrue=false;


var _GV_TableNameStr="";
var _GV_TablePKStr="";
var _GV_FieldNameStr="";
var _GV_FieldNameChStr="";
var _GV_From_TableAndJonnerStr="";
var _GV_WhereStr="";


//页面开始要运行的
$(document).ready(function(){
    _Fun_DownTableConfigJson();
    _Fun_LoadTableSortAndStyleFile();
    _Fun_DownFieldConfigJson();
});


//下载sys_tableConfig中的配置信息
/*
{
"Customcolumnname":"详细",
"Editstyle":"EditStyle1.css",
"Ipxh":2,
"Isallselect":"1",
"Iscustomcolumn":"1",
"Isdel":"1",
"Isedit":"1",
"Ispage":"1",
"Issort":"1",
"Showstyle":"style1.css",
"Tableid":"9014b630-de80-42c8-b21b-ee8e8518ef22",
"Tablename":"UserInfo",
"Tablenamech":"学生信息表"
}
*/
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
        }
    });
}
//加载表格排序JS脚本文件和样式表文件
function _Fun_LoadTableSortAndStyleFile()
{
    if(_GV_tableConfigJson.Issort=="1")
    {
        $.getScript("JavaScript/tablesorter.js",function(){
            _GV_LoadTableSorterIsTrue=true;
        });
    }
    if(_GV_tableConfigJson.Tablestyle.length>4)
    {
        var styleUrl="/Style/"+_GV_tableConfigJson.Showstyle;
        $("#S_TableStyleFile").attr("href",styleUrl);
    }
}
//下载sys_FieldConfig中的配置信息
/*
{
"0":{"fieldName":"xsid","fieldNameCh":"学生编号","ShowMaxLength":"40","isPK":"1","isShow":"0","isSelect":"0","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","keyTableID":""},
"1":{"fieldName":"njid","fieldNameCh":"年级","ShowMaxLength":"6","isPK":"0","isShow":"1","isSelect":"1","isIntType":"0","isFK":"1","FKTableName":"GradeInfo","FKTablePK":"njid","FKTableField":"njmc","keyTableID":""},
"2":{"fieldName":"bjid","fieldNameCh":"班级","ShowMaxLength":"6","isPK":"0","isShow":"1","isSelect":"1","isIntType":"0","isFK":"1","FKTableName":"ClassInfo","FKTablePK":"bjid","FKTableField":"bjmc","keyTableID":""},
"3":{"fieldName":"xh","fieldNameCh":"学号","ShowMaxLength":"9","isPK":"0","isShow":"1","isSelect":"1","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","keyTableID":""},
"4":{"fieldName":"mm","fieldNameCh":"密码","ShowMaxLength":"0","isPK":"0","isShow":"0","isSelect":"0","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","keyTableID":""},
"5":{"fieldName":"sfz","fieldNameCh":"身份证","ShowMaxLength":"18","isPK":"0","isShow":"1","isSelect":"1","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","keyTableID":""},
"6":{"fieldName":"csrq","fieldNameCh":"出身日期","ShowMaxLength":"10","isPK":"0","isShow":"1","isSelect":"1","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","keyTableID":""},
"7":{"fieldName":"dh","fieldNameCh":"电话","ShowMaxLength":"11","isPK":"0","isShow":"1","isSelect":"1","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","keyTableID":""},
"8":{"fieldName":"qq","fieldNameCh":"QQ号码","ShowMaxLength":"9","isPK":"0","isShow":"1","isSelect":"1","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","keyTableID":""},
"9":{"fieldName":"yx","fieldNameCh":"邮箱","ShowMaxLength":"10","isPK":"0","isShow":"1","isSelect":"1","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","keyTableID":""},
"10":{"fieldName":"dz","fieldNameCh":"地址","ShowMaxLength":"10","isPK":"0","isShow":"1","isSelect":"1","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","keyTableID":""},
"11":{"fieldName":"zp","fieldNameCh":"照片","ShowMaxLength":"10","isPK":"0","isShow":"0","isSelect":"0","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","keyTableID":""},
"12":{"fieldName":"xb","fieldNameCh":"性别","ShowMaxLength":"2","isPK":"0","isShow":"1","isSelect":"1","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","keyTableID":"36cfb0d1-449a-444c-bc21-5d9c9dbe56f4"},
"13":{"fieldName":"xl","fieldNameCh":"学历","ShowMaxLength":"4","isPK":"0","isShow":"1","isSelect":"1","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","keyTableID":"2142d3da-be3a-43bf-bdce-3fb6abe5f9ad"}
}
*/
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
        }
    });
}
//拼接分页的SQl语句
/*
SELECT     TOP (10) UserInfo.xsid, GradeInfo.njmc, ClassInfo.bjmc, UserInfo.xh, UserInfo.mm, UserInfo.xm, UserInfo.sfz, UserInfo.csrq, UserInfo.dh, UserInfo.qq, 
                      UserInfo.yx, UserInfo.dz, UserInfo.zp, UserInfo.xb, UserInfo.xl
FROM         UserInfo INNER JOIN
                      GradeInfo ON UserInfo.njid = GradeInfo.njid INNER JOIN
                      ClassInfo ON UserInfo.bjid = ClassInfo.bjid
WHERE     (1 = 1) AND (UserInfo.xsid NOT IN
                          (SELECT     TOP (20) xsid
                            FROM          UserInfo AS UserInfo_1))
*/
function _Fun_AddSqlPageInfo(pageNum)
{
    var sqlStr="select ";
    var tableName
    for(var i=0;i<_GV_FieldConfigJson.length;i++)
    {
        
    }
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