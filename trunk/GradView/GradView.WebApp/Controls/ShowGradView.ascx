<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShowGradView.ascx.cs" Inherits="GradView.WebApp.Controls.ShowGradView" %>
<link id="S_TableStyleFile" href="../Style/Style1.css" rel="stylesheet" type="text/css" />
<script src="../JavaScript/jquery.js" type="text/javascript"></script>
<script src="../JavaScript/tablesorter.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
//表编号(在sys_tableConfig中表的编号)
var _GV_tableID="<%= tableID %>";
//在表sys_tableConfig中的配置信息
var _GV_tableConfigJson=new Array();
//表在sys_FieldConfig中的配置信息
var _GV_FieldConfigJson=new Array();
//得到的页JOSN数据
var _GV_TableInfoJson=new Array();
//要post的页
var _GV_PostPage="<%= postAshxPage %>";
//加载排序JavaScript文件tableSorter.js是否成功
var _GV_LoadTableSorterIsTrue=false;


//表名,中_Fun_DownTableConfigJson()对其赋值了
var _GVS_TableNameStr="";
//表主键(UserInfo.xsid)
var _GVS_TablePKStr="";
//简写主键(xsid)
var _GVS_TableSPKStr="";
//表字段(UserInfo.xsid,GradeInfo.njmc)
var _GVS_FieldNameStr="";
//表字段简写(xsid,njmc)
var _GVS_FieldSNameStr="";
//表字段中文
var _GVS_FieldNameChStr="";
//表from字段(INNER JOIN GradeInfo ON)
var _GVS_From_TableAndJonnerStr="";
//表条件
var _GVS_WhereStr="";
//要下载字典的字段
var _GVS_KeyFieldStr="";
//下载字典的字典编号
var _GVS_KeyTableIDStr="";


//当前页
var _GVP_PageNum=1;
//总共同有多少页
var _GVP_AllPageNum=1;
//每页显示的记录数
var _GVP_ShowPageNum=<%= pageSize %>;


//页面开始要运行的
$(document).ready(function(){
    //得到sys_tableConfig配置信息
    _Fun_DownTableConfigJson();
    //得到sys_fieldConfig配置信息
    _Fun_DownFieldConfigJson();
    //得到总共有多少页
    _Fun_DownAllPageNum();
    //下载页数据
    _Fun_DownPageJsonInfo();
    
    //加载排序JS和样式表文件
    _Fun_LoadTableSortAndStyleFile();
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
            _GVS_TableNameStr=_GV_tableConfigJson.tableName;
        }
    });
}
//加载表格排序JS脚本文件和样式表文件
function _Fun_LoadTableSortAndStyleFile()
{
//    if(_GV_tableConfigJson.isSort=="1")
//    {
//        $.getScript("JavaScript/tablesorter.js",function(){
//            _GV_LoadTableSorterIsTrue=true;
//        });
//    }
    if(_GV_tableConfigJson.ShowStyle.length>4)
    {
        var styleUrl="Style/"+_GV_tableConfigJson.ShowStyle;
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
    //表简写主键
    var F_tableSPK="";
    //表字段
    var F_tableField="";
    //表简写字段
    var F_tableFieldS="";
    //表中文
    var F_tableFieldCh="";
    //SQLFrom
    var F_tableFron="";
    //要下载字典的字段
    var F_keyField="";
    //字典表编号
    var F_keyTableID="";
    
    //表主键,表简写主键
    var F_i=0;
    while(_GV_FieldConfigJson[F_i]!=null)
    {
        if(_GV_FieldConfigJson[F_i].isPK=="1")
        {
            F_tablePK=F_tableName+"."+_GV_FieldConfigJson[F_i].fieldName;
            F_tableSPK=_GV_FieldConfigJson[F_i].fieldName;
            break;
        }
        F_i++;
    }
    
    //字段中文,字段,SQLForm,表简写字段,要下载字典的字段,字典表编号
    var i=0;
    while(_GV_FieldConfigJson[i]!=null)
    {
        //如果显示
        if(_GV_FieldConfigJson[i].isShow=="1")
        {
            //字段中文
            F_tableFieldCh+=_GV_FieldConfigJson[i].fieldNameCh+",";
            
            //字段
            if(_GV_FieldConfigJson[i].isFK=="0")
            {
                //字段
                F_tableField+=F_tableName+"."+_GV_FieldConfigJson[i].fieldName+",";
                //表简写字段
                F_tableFieldS+=_GV_FieldConfigJson[i].fieldName+",";
            }else
            {
                //字段
                F_tableField+=_GV_FieldConfigJson[i].FKTableName+"."+_GV_FieldConfigJson[i].FKTableField+",";
                //表简写字段
                F_tableFieldS+=_GV_FieldConfigJson[i].FKTableField+",";
                //SQLForm
                F_tableFron+=" INNER JOIN "+_GV_FieldConfigJson[i].FKTableName+" ON "+F_tableName+"."+_GV_FieldConfigJson[i].fieldName+" = "+_GV_FieldConfigJson[i].FKTableName+"."+_GV_FieldConfigJson[i].FKTablePK;
            }
            //要下载字典的字段,字典表编号
            if(_GV_FieldConfigJson[i].keyTableID != "")
            {
                //要下载字典的字段
                F_keyField+=_GV_FieldConfigJson[i].fieldName+",";
                //字典表编号
                F_keyTableID+=_GV_FieldConfigJson[i].keyTableID+",";
            }
        }
        i++;
    }
    
    //对全局变量赋值
    
    //表主键(UserInfo.xsid)
    _GVS_TablePKStr=F_tablePK;
    //表简写主键(xsid)
    _GVS_TableSPKStr=F_tableSPK;
    //表字段(UserInfo.xsid,GradeInfo.njid,...)
    _GVS_FieldNameStr=F_tableField.substring(0,F_tableField.length-1);
    //表简写字段(xsid,njmc,...)
    _GVS_FieldSNameStr=F_tableFieldS.substring(0,F_tableFieldS.length-1);
    //表字段中文(学生编辑,年级名称)
    _GVS_FieldNameChStr=F_tableFieldCh.substring(0,F_tableFieldCh.length-1);
    //表连接字符串(INNER JOIN GradeInfo ON... INNER......)
    _GVS_From_TableAndJonnerStr=F_tableFron;
    //要下载字典的字段
    _GVS_KeyFieldStr=F_keyField.substring(0,F_keyField.length-1);
    //字典表编号
    _GVS_KeyTableIDStr=F_keyTableID.substring(0,F_keyTableID.length-1);
}

//下载总共有多少页
function _Fun_DownAllPageNum()
{
    $.post(_GV_PostPage,{_type:"s_DownAllPageNum",tableName:_GVS_TableNameStr,tablePK:_GVS_TablePKStr,tableFrom:_GVS_From_TableAndJonnerStr,tableWhere:_GVS_WhereStr,pageSize:_GVP_ShowPageNum},function(data){
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
        
        //动态数字分页
        _Fun_AutoNumPage();
    });
}

//得到页数据
function _Fun_DownPageJsonInfo()
{
    //是否分页
    if(_GV_tableConfigJson.isPage=="1")
    {
        $.ajax({
            url:_GV_PostPage,
            type:"POST",
            dataType:"json",
            async:false,
            data:{_type:"s_downPageInfo",tableName:_GVS_TableNameStr,tablePK:_GVS_TablePKStr,tableFields:_GVS_FieldNameStr,tableFrom:_GVS_From_TableAndJonnerStr,tableWhere:_GVS_WhereStr,pageSize:_GVP_ShowPageNum,pageNum:_GVP_PageNum},
            success:function(data){
                _GV_TableInfoJson=data;
                
                //改写字典数据
                _Fun_ChangeKeyColumnInfo();
                
                //绑定页里表格数据
                _Fun_BindPageTable();
            }
        });
        
        //动态数字分页
        _Fun_AutoNumPage();
    }else
    {
        $.ajax({
            url:_GV_PostPage,
            type:"POST",
            dataType:"json",
            async:false,
            data:{_type:"s_downPageInfo_all",tableName:_GVS_TableNameStr,tablePK:_GVS_TablePKStr,tableFields:_GVS_FieldNameStr,tableFrom:_GVS_From_TableAndJonnerStr,tableWhere:_GVS_WhereStr},
            success:function(data){
                _GV_TableInfoJson=data;
                
                //改写字典数据
                _Fun_ChangeKeyColumnInfo();
                
                //绑定页里表格数据
                _Fun_BindPageTable();
                
                //隐藏"表分页区"
                $("#S_show_page_div").hide();
            }
        });
    }
    
    
}
//改写字典显示字段数据 keyName, keyCode
//第二版进行优化,当第一次下载了字典数据后.分页第二次就不要再次去下载字典数据了.
/*
{
"0":{"keyName":"男","keyCode":"1"},
"1":{"keyName":"女","keyCode":"0"}
}
*/
function _Fun_ChangeKeyColumnInfo()
{
    //是字典的字段字条串
    var C_keyColumnArray=_GVS_KeyFieldStr.split(",");
    //字典表的编号
    var C_keyIDArray=_GVS_KeyTableIDStr.split(",");
    for(var i=0;i<C_keyColumnArray.length;i++)
    {
        $.ajax({
            url:_GV_PostPage,
            type:"POST",
            dataType:"json",
            async:false,
            data:{_type:"s_downKeyTableInfo",KeyTableID:C_keyIDArray[i]},
            success:function(data){
                var Ci=0;
                while(_GV_TableInfoJson[Ci]!=null)
                {
                    var Cj=0;
                    while(data[Cj]!=null)
                    {
                        if(_GV_TableInfoJson[Ci][C_keyColumnArray[i]]==data[Cj]["keyCode"])
                        {
                            _GV_TableInfoJson[Ci][C_keyColumnArray[i]]=data[Cj]["keyName"];
                            break;
                        }
                        Cj++;
                    }
                    Ci++;
                }
            }
        });
    }
}
//绑定页里表格数据
/*
{
"0":{"xsid":"08a6b158-ac98-403c-88c2-48af0babd6f1","njmc":"3年级","bjmc":"130班","xh":"066530332","mm":"123456","sfz":"430122198711186710","csrq":"1987-11-18","dh":"13873111840","qq":"995506770","yx":"liuju150@vip.qq.com","dz":"湖南长沙","zp":"sys.jpg","xb":"0","xl":"2"},
"1":{"xsid":"b7170608-950b-42c1-8b88-18c918192aab","njmc":"2年级","bjmc":"129班","xh":"066530333","mm":"123456","sfz":"430122198711186711","csrq":"1987-11-18","dh":"13873111841","qq":"995506771","yx":"liuju150@vip.qq.com","dz":"湖南长沙","zp":"sys.jpg","xb":"1","xl":"0"},
"2":{"xsid":"cfa38730-19cf-49c1-91a9-4d713aba2d08","njmc":"2年级","bjmc":"129班","xh":"066530334","mm":"123456","sfz":"430122198711186712","csrq":"1987-11-18","dh":"13873111842","qq":"995506772","yx":"liuju150@vip.qq.com","dz":"湖南长沙","zp":"sys.jpg","xb":"0","xl":"0"},
"3":{"xsid":"6f07a54c-1f0b-4995-94e8-d310140d2306","njmc":"2年级","bjmc":"129班","xh":"066530335","mm":"123456","sfz":"430122198711186713","csrq":"1987-11-18","dh":"13873111843","qq":"995506773","yx":"liuju150@vip.qq.com","dz":"湖南长沙","zp":"sys.jpg","xb":"1","xl":"0"},
"4":{"xsid":"4a64e398-fb2c-4246-bb9a-0f51aff9adcf","njmc":"2年级","bjmc":"129班","xh":"066530336","mm":"123456","sfz":"430122198711186714","csrq":"1987-11-18","dh":"13873111844","qq":"995506774","yx":"liuju150@vip.qq.com","dz":"湖南长沙","zp":"sys.jpg","xb":"0","xl":"0"},
"5":{"xsid":"e696f9f9-f1ce-4e60-88ca-03ce69c4064b","njmc":"2年级","bjmc":"129班","xh":"066530337","mm":"123456","sfz":"430122198711186715","csrq":"1987-11-18","dh":"13873111845","qq":"995506775","yx":"liuju150@vip.qq.com","dz":"湖南长沙","zp":"sys.jpg","xb":"1","xl":"0"},
"6":{"xsid":"2d222c9c-1fee-4d1d-bdcc-b24db831cce3","njmc":"2年级","bjmc":"129班","xh":"066530338","mm":"123456","sfz":"430122198711186716","csrq":"1987-11-18","dh":"13873111846","qq":"995506776","yx":"liuju150@vip.qq.com","dz":"湖南长沙","zp":"sys.jpg","xb":"0","xl":"0"},
"7":{"xsid":"aa6faaef-b6ff-4e60-89ab-1046f61c7a2e","njmc":"2年级","bjmc":"129班","xh":"066530339","mm":"123456","sfz":"430122198711186717","csrq":"1987-11-18","dh":"13873111847","qq":"995506777","yx":"liuju150@vip.qq.com","dz":"湖南长沙","zp":"sys.jpg","xb":"1","xl":"0"},
"8":{"xsid":"5598575f-486b-47f8-901a-c50790f03f5d","njmc":"2年级","bjmc":"129班","xh":"066530340","mm":"123456","sfz":"430122198711186718","csrq":"1987-11-18","dh":"13873111848","qq":"995506778","yx":"liuju150@vip.qq.com","dz":"湖南长沙","zp":"sys.jpg","xb":"0","xl":"0"},
"9":{"xsid":"5b84811a-2b64-4b6f-a0a6-35f631301b6c","njmc":"2年级","bjmc":"129班","xh":"066530341","mm":"123456","sfz":"430122198711186719","csrq":"1987-11-18","dh":"13873111849","qq":"995506779","yx":"liuju150@vip.qq.com","dz":"湖南长沙","zp":"sys.jpg","xb":"1","xl":"0"}
}
*/
function _Fun_BindPageTable()
{
    var B_tableHeadArray=_GVS_FieldNameChStr.split(",");
    var B_tableBodyArray=_GVS_FieldSNameStr.split(",");
    
    //表英文名称
    var B_tableName=_GV_tableConfigJson.tableName;
    //表中文名称
    var B_tableNameCh=_GV_tableConfigJson.tableNameCh;
    //表简写主键
    var B_tableSPK=_GVS_TableSPKStr;
    //是否可以全选
    var B_isAllSelect=_GV_tableConfigJson.isAllSelect=="1"?true:false;
    //是否可以编辑
    var B_isEdit=_GV_tableConfigJson.isEdit=="1"?true:false;
    //是否删除
    var B_isDel=_GV_tableConfigJson.isDel=="1"?true:false;
    //是否可以自定义列
    var B_isAutoColumn=_GV_tableConfigJson.isCustomColumn=="1"?true:false;
    //自定义列名
    var B_AutoColumnName=_GV_tableConfigJson.CustomColumnName;
    
    //表开始
    var B_htmlStr="<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" id=\"T_Table\">";
    
    //添加表头
    B_htmlStr+="<thead><tr>";
    
    //是否可以全选
    if(B_isAllSelect)
    {
        B_htmlStr+="<th><input id=\"T_Table_thead_th_checkbox\" type=\"checkbox\" title=\"全选\" onclick=\"_Fun_T_Table_thead_th_checkbox_click()\" /></th>";
    }
    
    //添加文字表头
    for(var i=0;i<B_tableHeadArray.length;i++)
    {
        B_htmlStr+="<th title=\"点击排序\">"+B_tableHeadArray[i]+"</th>";
    }
    
    //是否可以编辑
    if(B_isEdit)
    {
        B_htmlStr+="<th title=\"点击编辑\">编辑</th>";
    }
    
    //是否可以删除
    if(B_isDel)
    {
        B_htmlStr+="<th title=\"点击删除\">删除</th>";
    }
    
    //是否可以自定列
    if(B_isAutoColumn)
    {
        B_htmlStr+="<th title=\"点击操作\">"+B_AutoColumnName+"</th>";
    }
    
    //表头添加结束
    B_htmlStr+="</tr></thead>";
    
    //开始添加表身
    B_htmlStr+="<tbody>";
    
    //遍历表信息
    var Ti=0;
    while(_GV_TableInfoJson[Ti]!=null)
    {
        //开始一行
        B_htmlStr+="<tr>";
        
        //是否可以全选
        if(B_isAllSelect)
        {
            B_htmlStr+="<td><input type=\"checkbox\" name=\"T_Table_tbody_tr_checkbox_name\" keyVal=\""+_GV_TableInfoJson[Ti][B_tableSPK]+"\" /></td>";
        }
        
        //添加信息
        for(var Tj=0;Tj<B_tableBodyArray.length;Tj++)
        {
            B_htmlStr+="<td>"+_GV_TableInfoJson[Ti][B_tableBodyArray[Tj]]+"</td>";
        }
        
        //是否可以编辑
        if(B_isEdit)
        {
            B_htmlStr+="<td><a href=\"javascript:;\" onclick=\"_Fun_T_Table_edit_click('"+B_tableName+"','"+B_tableSPK+"','"+_GV_TableInfoJson[Ti][B_tableSPK]+"')\">编辑</a></td>";
        }
        
        //是否可以删除
        if(B_isDel)
        {
            B_htmlStr+="<td><a href=\"javascript:;\" onclick=\"_Fun_T_Table_del_click('"+B_tableName+"','"+B_tableSPK+"','"+_GV_TableInfoJson[Ti][B_tableSPK]+"')\">删除</a></td>";
        }
        
        //是否可以自定列
        if(B_isAutoColumn)
        {
            B_htmlStr+="<td><a href=\"javascript:;\" onclick=\"_Fun_T_Table_autoCoulmn_click('"+B_tableName+"','"+B_tableSPK+"','"+_GV_TableInfoJson[Ti][B_tableSPK]+"')\">"+B_AutoColumnName+"</a></td>";
        }
        
        //结束一行
        B_htmlStr+="</tr>";
        Ti++;
    }
    
    //结束表身
    B_htmlStr+="</tbody>";
    
    //结束表
    B_htmlStr+="</table>";
    
    //把表信息添加到"表显示区"
    $("#S_show_table_div").html(B_htmlStr);
    
    //控制导航的数字显示
    _Fun_S_show_page_div_NumChange();
    
    //绑定排序
    if(_GV_tableConfigJson.isSort=="1")
    {
        if(B_isAllSelect)
        {
            $("#T_Table").tablesorter({headers:{0:{sorter:false}}});
        }else
        {
            $("#T_Table").tablesorter();
        }
    }
}

//点击全选checkbox
function _Fun_T_Table_thead_th_checkbox_click()
{
    var IsSelect=document.getElementById("T_Table_thead_th_checkbox").checked?true:false;
    if(IsSelect)
    {
        $("#T_Table tbody input[type='checkbox'][name='T_Table_tbody_tr_checkbox_name']").attr("checked",true);
    }else
    {
        $("#T_Table tbody input[type='checkbox'][name='T_Table_tbody_tr_checkbox_name']").attr("checked",false);
    }
}
//查看选择结果
function CheckBoxSelectStr()
{
    var selectStr="";
    $("#T_Table tbody input:checked").each(function(){
        selectStr+=$(this).attr("keyVal")+",";
    });
    selectStr=selectStr.substring(0,selectStr.length-1);
    return selectStr;
}


//分页导航

//首页
function _Fun_S_show_page_firstPage_span_click()
{
    if(_GVP_PageNum==1)
    {
        return;
    }
    _GVP_PageNum=1;
    //下载,绑定
    _Fun_DownPageJsonInfo();
}
//上一页
function _Fun_S_show_page_upPage_span_click()
{
    if(_GVP_PageNum==1)
    {
        return;
    }
    _GVP_PageNum-=1;
    //下载,绑定
    _Fun_DownPageJsonInfo();
}
//下一页
function _Fun_S_show_page_nextPage_span_click()
{
    if(_GVP_PageNum>=_GVP_AllPageNum)
    {
        return;
    }
    _GVP_PageNum+=1;
    //下载,绑定
    _Fun_DownPageJsonInfo();
}
//尾页
function _Fun_S_show_page_endPage_span_click()
{
    if(_GVP_PageNum==_GVP_AllPageNum)
    {
        return;
    }
    _GVP_PageNum=_GVP_AllPageNum;
    //下载,绑定
    _Fun_DownPageJsonInfo();
}
//跳到页
function _Fun_GoToPageNum(pageNum)
{
    _GVP_PageNum=parseInt(pageNum);
    //下载,绑定
    _Fun_DownPageJsonInfo();
}
//跳到第几页
function _Fun_S_show_page_goToPage_select_change()
{
    var pageNumber=$("#S_show_page_goToPage_select").val();
    _Fun_GoToPageNum(pageNumber);
}
//动态数字分页
function _Fun_AutoNumPage()
{
    //当前为第几页
    var A_pageNum=_GVP_PageNum;
    //总共有多少页
    var A_allPageNum=_GVP_AllPageNum;
    //页码的开始(如果当前页-3比1小的话,开始页就是第一页,否则就是-3页)
    var A_pageStart=A_pageNum-3<1?1:A_pageNum-3;
    //页码的结束(如果当前页+3比总共页大的话,结束页就是总共页,否则就是+3页)
    var A_pageEnd=parseInt(A_pageNum)+parseInt(3)>A_allPageNum?A_allPageNum:parseInt(A_pageNum)+parseInt(3);
    var A_htmlStr="";
    if(A_pageStart>1)
    {
        A_htmlStr+="<span>...</span>";
    }
    for(var i=A_pageStart;i<=A_pageEnd;i++)
    {
        var A_cssStr="";
        if(i==A_pageNum)
        {
            A_cssStr="class=\"ShowPageNumSelect\"";
        }
        A_htmlStr+="<span "+A_cssStr+" onclick=\"_Fun_GoToPageNum('"+i.toString()+"')\">"+i.toString()+"</span>";
    }
    if(A_pageEnd<A_allPageNum)
    {
        A_htmlStr+="<span>...</span>";
    }
    $("#S_show_page_showPageNum_strong").html(A_htmlStr);
}
//控件导航的数据和下拉显示
function _Fun_S_show_page_div_NumChange()
{
    $("#S_show_page_PageNum_a").text(_GVP_PageNum);
    $("#S_show_page_goToPage_select").val(_GVP_PageNum);
}
//打印
function _Fun_Btn_Click_print()
{
    var _html="<html><head>";
    $("link").each(function(){
        _html+="<link href=\""+$(this).attr("href")+"\" rel=\"stylesheet\" type=\"text/css\" />";
    });
    _html+="</head><body>";
    _html+=$("#S_show_table_div").html();
    _html+="</body></html>";
    var newWin=window.open("","");
    newWin.opener=null;
    newWin.document.write(_html);
    newWin.print();
    newWin.document.close();
}
</script>
<script language="javascript" type="text/javascript">
//查看选择结果
function showCheckBoxSelect()
{
    alert(CheckBoxSelectStr());
}
//编辑
function _Fun_T_Table_edit_click(tableName,tablePK,keyVal)
{
    //alert("表:"+tableName+"\r\n主键:"+tablePK+"\r\n值:"+keyVal);
    var urlStr="EditPage.aspx?tableID="+_GV_tableID+"&EditID="+keyVal;
    location.href=urlStr;
}
//删除
function _Fun_T_Table_del_click(tableName,tablePK,keyVal)
{
    //alert("表:"+tableName+"\r\n主键:"+tablePK+"\r\n值:"+keyVal);
    var JsonData="{\""+tablePK+"\":\""+keyVal+"\"}";
    if(confirm("您确定删除此数据吗?"))
    {
        $.post(_GV_PostPage,{_type:"e_InsAndUpdObj",ClassName:tableName,ClassData:JsonData,isIns:"2"},function(data){
            if(data=="true")
            {
                location.href=location.href;
            }else
            {
                alert("超时链接不成功");
            }
        });
    }
}
//自定义操作
function _Fun_T_Table_autoCoulmn_click(tableName,tablePK,keyVal)
{
    alert("表:"+tableName+"\r\n主键:"+tablePK+"\r\n值:"+keyVal);
}
//增加信息
function _Fun_AddRow()
{
    var urlStr="EditPage.aspx?tableID="+_GV_tableID;
    location.href=urlStr;
}
</script>

<div>
    <div id="ShowControl_div">
        <%--功能操作区--%>
        <div id="S_click_div">
            <input type="button" value="查看选择结果" onclick="showCheckBoxSelect()" />
            <input type="button" value="增加记录" onclick="_Fun_AddRow()" />
            <input type="button" value="打印" onclick="_Fun_Btn_Click_print()" />
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