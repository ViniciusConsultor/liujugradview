<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditGradView.ascx.cs" Inherits="GradView.WebApp.Controls.EditGradView" %>
<link href="../Style/EStyle1.css" rel="stylesheet" type="text/css" />
<script src="../JavaScript/jquery.js" type="text/javascript"></script>
<script src="../JavaScript/ajaxupload.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
//post请求时的页
var _EGV_PostPage="AjaxPages/AjaxMsSql.ashx";
//表编号
var _EGV_TableID="9014b630-de80-42c8-b21b-ee8e8518ef22";
//sys_tableConfig中的配置信息
var _EGV_TableConfigJson=new Array();
//sys_fieldConfig中关于编辑控件定义的信息
var _EGV_FieldConfigJson=new Array();

//页面开始时运行的
$(document).ready(function(){
    //下载sys_tableConfig中的配置信息
    _FunE_DownTableConfigJson();
    //下载sys_FieldConfig中的配置信息
    _FunE_DownFieldConfigJson();
});

//下载sys_tableConfig中的配置信息
/*
{
"CustomColumnName":"详细",
"EditStyle":"EditStyle1.css",
"ShowStyle":"style1.css",
"ipxh":2,
"isAllSelect":"1",
"isCustomColumn":"1",
"isDel":"1",
"isEdit":"1",
"isPage":"1",
"isSort":"1",
"tableName":"UserInfo",
"tableNameCh":"学生信息表",
"tableid":"9014b630-de80-42c8-b21b-ee8e8518ef22"
}
*/
function _FunE_DownTableConfigJson()
{
    $.ajax({
        url:_EGV_PostPage,
        type:"POST",
        dataType:"json",
        async:false,
        data:{_type:"s_downTableConfig",tableID:_EGV_TableID},
        success:function(data){
            _EGV_TableConfigJson=data;
        }
    });
}
//下载sys_FieldConfig中的配置信息
/*
{
"0":{"fieldName":"xsid","fieldNameCh":"学生编号","isPK":"1","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","regexTypeID":"all","editTypeID":"0","regrxText":"学生编号","keyTableID":"","isEdit":"0","EditMinLength":"0","EditMaxLength":"40","isMust":"1"},
"1":{"fieldName":"njid","fieldNameCh":"年级","isPK":"0","isIntType":"0","isFK":"1","FKTableName":"GradeInfo","FKTablePK":"njid","FKTableField":"njmc","regexTypeID":"all","editTypeID":"3","regrxText":"选择学生所在的年级","keyTableID":"","isEdit":"1","EditMinLength":"0","EditMaxLength":"40","isMust":"1"},
"2":{"fieldName":"bjid","fieldNameCh":"班级","isPK":"0","isIntType":"0","isFK":"1","FKTableName":"ClassInfo","FKTablePK":"bjid","FKTableField":"bjmc","regexTypeID":"all","editTypeID":"3","regrxText":"选择学生所在的班级","keyTableID":"","isEdit":"1","EditMinLength":"0","EditMaxLength":"40","isMust":"1"},
"3":{"fieldName":"xh","fieldNameCh":"学号","isPK":"0","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","regexTypeID":"num","editTypeID":"1","regrxText":"学生的学号","keyTableID":"","isEdit":"1","EditMinLength":"6","EditMaxLength":"10","isMust":"1"},
"4":{"fieldName":"mm","fieldNameCh":"密码","isPK":"0","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","regexTypeID":"username","editTypeID":"4","regrxText":"输入登陆时的密码","keyTableID":"","isEdit":"1","EditMinLength":"6","EditMaxLength":"16","isMust":"1"},
"5":{"fieldName":"sfz","fieldNameCh":"身份证","isPK":"0","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","regexTypeID":"idcard","editTypeID":"1","regrxText":"学生的身份证号码","keyTableID":"","isEdit":"1","EditMinLength":"15","EditMaxLength":"18","isMust":"0"},
"6":{"fieldName":"csrq","fieldNameCh":"出身日期","isPK":"0","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","regexTypeID":"all","editTypeID":"2","regrxText":"选择一个出身日期","keyTableID":"","isEdit":"1","EditMinLength":"0","EditMaxLength":"20","isMust":"0"},
"7":{"fieldName":"dh","fieldNameCh":"电话","isPK":"0","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","regexTypeID":"tel","editTypeID":"1","regrxText":"学生的手机/电话号码","keyTableID":"","isEdit":"1","EditMinLength":"3","EditMaxLength":"13","isMust":"0"},
"8":{"fieldName":"qq","fieldNameCh":"QQ号码","isPK":"0","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","regexTypeID":"qq","editTypeID":"1","regrxText":"学生的QQ号码","keyTableID":"","isEdit":"1","EditMinLength":"6","EditMaxLength":"10","isMust":"0"},
"9":{"fieldName":"yx","fieldNameCh":"邮箱","isPK":"0","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","regexTypeID":"email","editTypeID":"1","regrxText":"邮箱地址","keyTableID":"","isEdit":"1","EditMinLength":"5","EditMaxLength":"30","isMust":"0"},
"10":{"fieldName":"dz","fieldNameCh":"地址","isPK":"0","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","regexTypeID":"all","editTypeID":"1","regrxText":"家庭地址","keyTableID":"","isEdit":"1","EditMinLength":"8","EditMaxLength":"60","isMust":"0"},
"11":{"fieldName":"zp","fieldNameCh":"照片","isPK":"0","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","regexTypeID":"picture","editTypeID":"5","regrxText":"个人照片","keyTableID":"","isEdit":"1","EditMinLength":"0","EditMaxLength":"100","isMust":"0"},
"12":{"fieldName":"xb","fieldNameCh":"性别","isPK":"0","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","regexTypeID":"all","editTypeID":"3","regrxText":"性别","keyTableID":"36cfb0d1-449a-444c-bc21-5d9c9dbe56f4","isEdit":"1","EditMinLength":"0","EditMaxLength":"2","isMust":"1"},
"13":{"fieldName":"xl","fieldNameCh":"学历","isPK":"0","isIntType":"0","isFK":"0","FKTableName":"","FKTablePK":"","FKTableField":"","regexTypeID":"all","editTypeID":"3","regrxText":"学历","keyTableID":"2142d3da-be3a-43bf-bdce-3fb6abe5f9ad","isEdit":"1","EditMinLength":"0","EditMaxLength":"4","isMust":"1"}
}
*/
function _FunE_DownFieldConfigJson()
{
    $.ajax({
        url:_EGV_PostPage,
        type:"POST",
        dataType:"json",
        async:false,
        data:{_type:"e_downFieldConfig",tableID:_EGV_TableID},
        success:function(data){
            _EGV_FieldConfigJson=data;
        }
    });
}
//绑定表单
/*
"isEdit"来决定是否在页面显示此表字段表单
字段是主键的时候"isPK"要做一个隐藏的表单
字段是自增长列"isIntType"此字段可以不建表单
字段如果是外键和字典("isFK","keyTableID"),不管后面的编辑类型是什么,这里只做下拉框
*/
/*
fieldName,fieldNameCh,isPK,isIntType,isFK,FKTableName,FKTablePK,FKTableField,regexTypeID,
editTypeID,regrxText,keyTableID,isEdit,EditMinLength,EditMaxLength,isMust
*/
function _FunE_BindEditFrom()
{
    
}
</script>

<div>
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
            </div>
        </div>
    </div>
</div>