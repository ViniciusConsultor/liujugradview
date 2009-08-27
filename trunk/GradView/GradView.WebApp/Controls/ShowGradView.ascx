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
//得到的页JOSN数据
var _GV_TableInfoJson=new Array();
//要post的页
var _GV_PostPage="AjaxPages/AjaxMsSql.ashx";
//加载排序JavaScript文件tableSorter.js是否成功
var _GV_LoadTableSorterIsTrue=false;


//表名,中_Fun_DownTableConfigJson()对其赋值了
var _GVS_TableNameStr="";
//表主键
var _GVS_TablePKStr="";
//表字段
var _GVS_FieldNameStr="";
//表字段中文
var _GVS_FieldNameChStr="";
//表from字条
var _GVS_From_TableAndJonnerStr="";
//表条件
var _GVS_WhereStr="";


//当前页
var _GVP_PageNum=1;
//总共同有多少页
var _GVP_AllPageNum=1;
//每页显示的记录数
var _GVP_ShowPageNum=10;


//页面开始要运行的
$(document).ready(function(){
    //得到sys_tableConfig配置信息
    _Fun_DownTableConfigJson();
    //得到sys_fieldConfig配置信息
    _Fun_DownFieldConfigJson();
    //得到总共有多少页
    _Fun_DownAllPageNum();
    //加载排序JS和样式表文件
    _Fun_LoadTableSortAndStyleFile();
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
            //把表名赋值
            _GVS_TableNameStr=_GV_tableConfigJson.Tablename;
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
    if(_GV_tableConfigJson.Showstyle.length>4)
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
            //拼接SQL
            _Fun_AddSqlPageInfo();
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
function _Fun_AddSqlPageInfo()
{
    //表名
    var F_tableName=_GVS_TableNameStr;
    //表主键
    var F_tablePK="";
    //表字段
    var F_tableField="";
    //表中文
    var F_tableFieldCh="";
    //SQLFrom
    var F_tableFron="";
    
    //表主键
    var F_j=0;
    while(_GV_FieldConfigJson[F_j]!=null)
    {
        if(_GV_FieldConfigJson[F_j].isPK=="1")
        {
            F_tablePK=F_tableName+"."+_GV_FieldConfigJson[F_j].fieldName;
            break;
        }
        F_j++;
    }
    
    //字段中文,字段,SQLForm
    var i=0;
    while(_GV_FieldConfigJson[i]!=null)
    {
        if(_GV_FieldConfigJson[i].isShow="1")
        {
            //字段中文
            F_tableFieldCh+=_GV_FieldConfigJson[i].fieldNameCh+",";
            //字段
            if(_GV_FieldConfigJson[i].isFK=="0")
            {
                F_tableField+=F_tableName+"."+_GV_FieldConfigJson[i].fieldName+",";
            }else
            {
                F_tableField+=_GV_FieldConfigJson[i].FKTableName+"."+_GV_FieldConfigJson[i].FKTableField+",";
                
                //SQLForm
                F_tableFron+=" INNER JOIN "+_GV_FieldConfigJson[i].FKTableName+" ON "+F_tableName+"."+_GV_FieldConfigJson[i].fieldName+" = "+_GV_FieldConfigJson[i].FKTableName+"."+_GV_FieldConfigJson[i].FKTablePK;
            }
        }
        i++;
    }
    
    //对全局变量赋值
    _GVS_TablePKStr=F_tablePK;
    _GVS_FieldNameStr=F_tableField.substring(0,F_tableField.length-1);
    _GVS_FieldNameChStr=F_tableFieldCh.substring(0,F_tableFieldCh.length-1);
    _GVS_From_TableAndJonnerStr=F_tableFron;
}

//下载总共有多少页
function _Fun_DownAllPageNum()
{
    $.post(_GV_PostPage,{_type:"s_DownAllPageNum",tableName:_GVS_TableNameStr,tablePK:_GVS_TablePKStr,tableFrom:_GVS_From_TableAndJonnerStr,tableWhere:_GVS_WhereStr,pageShowNum:_GVP_ShowPageNum},function(data){
        _GVP_AllPageNum=parseInt(data);
        
        //总共有多少页
        $("#S_show_page_allPageNum_a").text(data);
        var selectHtml="";
        for(var i=1;i<=parseInt(data);i++)
        {
            selectHtml+="<option value=\""+i.toString()+"\">"+i.toString()+"</option>";
        }
        //跳到第几页
        $("#S_show_page_goToPage_select").html(selectHtml);
    });
}

//得到页数据
function _Fun_DownPageJsonInfo()
{
    
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