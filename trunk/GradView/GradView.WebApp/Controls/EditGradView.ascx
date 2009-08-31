<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditGradView.ascx.cs" Inherits="GradView.WebApp.Controls.EditGradView" %>
<link href="../Style/EStyle1.css" rel="stylesheet" type="text/css" />
<script src="../JavaScript/jquery.js" type="text/javascript"></script>
<script src="../JavaScript/ajaxupload.js" type="text/javascript"></script>
<script src="../JavaScript/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
//post请求时的页
var _EGV_PostPage="<%= PostPage %>";
//表编号
var _EGV_TableID="<%= tableID %>";
//sys_tableConfig中的配置信息
var _EGV_TableConfigJson=new Array();
//sys_fieldConfig中关于编辑控件定义的信息
var _EGV_FieldConfigJson=new Array();

//是否增加
var _EGV_isAdd="<%= isAdd %>"=="True"?true:false;
//要修改的编号
var _EGV_updateID="<%= EditID %>";
//要增加的编号
var _EGV_addID="<%= Guid.NewGuid().ToString() %>";
//要编辑的信息
var _EGV_EditInfoJson=new Array();

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
            //绑定表单
            _FunE_BindEditFrom();
        }
    });
}
//绑定表单
/*
"isEdit"来决定是否在页面显示此表字段表单
字段是主键的时候"isPK"要做一个隐藏的表单
字段如果是外键和字典("isFK","keyTableID"),不管后面的编辑类型是什么,这里只做下拉框
*/
/*
fieldName,fieldNameCh,isPK,isIntType,isFK,FKTableName,FKTablePK,FKTableField,regexTypeID,
editTypeID,regrxText,keyTableID,isEdit,EditMinLength,EditMaxLength,isMust
*/
function _FunE_BindEditFrom()
{
    //html开始
    //添加HTML头
    var _html="<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" id=\"E_Table\">";
    var i=0;
    while(_EGV_FieldConfigJson[i]!=null)
    {
        if(_EGV_FieldConfigJson[i].isEdit=="1")
        {
            //一个tr的开始
            _html+="<tr class=\"E_Table_tr\">";
            //添加第一个td
            //必需有值列会有一个红色的*号
            var temp1="";
            if(_EGV_FieldConfigJson[i].isMust=="1")
            {
                temp1="<span style=\"color:red\">*</span>";
            }
            _html+="<td class=\"E_Table_tr_oneTd\">" + _EGV_FieldConfigJson[i].fieldNameCh + temp1 + ":</td>";
            //第一个td结束,第二个td开始
            _html+="<td class=\"E_Table_tr_twoTd\">";
            //为这个td里面添加控件
            /*
                1:文本框
                2:日期选择框
                3:下拉框
                4:密码框
                5:文件上传
                6:多行文本框
            */
            //生成验证字符串
            var temp2="";
            if(_EGV_FieldConfigJson[i].regexTypeID!="all")
            {
                temp2="onblur=\"_FunE_regex('"+_EGV_FieldConfigJson[i].regexTypeID+"',this)\"";
            }
            switch(_EGV_FieldConfigJson[i].editTypeID)
            {
                //文本框
                case "1":
                    _html+="<input type=\"text\" class=\"E_Table_input_text\" name=\""+_EGV_FieldConfigJson[i].fieldName+"\" "+temp2+" maxlength=\""+_EGV_FieldConfigJson[i].EditMaxLength+"\" onkeyup=\"_FunE_minLength("+_EGV_FieldConfigJson[i].EditMinLength+",this)\" />";
                    break;
                //日期选择框
                case "2":
                    _html+="<input type=\"text\" class=\"E_Table_input_text\" name=\""+_EGV_FieldConfigJson[i].fieldName+"\" onfocus=\"WdatePicker({skin:'whyGreen',isShowClear:false,dateFmt:'yyyy-MM-dd'})\" />";
                    break;
                //下拉框
                case "3":
                    _html+="<select name=\""+_EGV_FieldConfigJson[i].fieldName+"\" class=\"E_Table_select\">";
                    //是外键
                    if(_EGV_FieldConfigJson[i].isFK=="1")
                    {
                        //外键表名
                        var B_FKTableName=_EGV_FieldConfigJson[i].FKTableName;
                        //外键表主键
                        var B_FKTablePK=_EGV_FieldConfigJson[i].FKTablePK;
                        //外键字段
                        var B_FKTableField=_EGV_FieldConfigJson[i].FKTableField;
                        $.ajax({
                            url:_EGV_PostPage,
                            type:"POST",
                            dataType:"json",
                            async:false,
                            data:{_type:"e_downFKTableField",table:B_FKTableName,PK:B_FKTablePK,field:B_FKTableField},
                            success:function(data){
                                //下拉的HTML
                                var temp3="";
                                var j=0;
                                while(data[j]!=null)
                                {
                                    temp3+="<option value=\""+data[j].FVal+"\">"+data[j].FText+"</option>";
                                    j++;
                                }
                                _html+=temp3;
                            }
                        });
                    }else if(_EGV_FieldConfigJson[i].keyTableID != "")
                    {
                        /*
                        {
                        "0":{"keyName":"男","keyCode":"1"},
                        "1":{"keyName":"女","keyCode":"0"}
                        }
                        */
                        //字典表ID
                        var B_keyID=_EGV_FieldConfigJson[i].keyTableID;
                        $.ajax({
                            url:_EGV_PostPage,
                            type:"POST",
                            dataType:"json",
                            async:false,
                            data:{_type:"s_downKeyTableInfo",KeyTableID:B_keyID},
                            success:function(data){
                                //下拉的HTML
                                var temp3="";
                                var j=0;
                                while(data[j]!=null)
                                {
                                    temp3+="<option value=\""+data[j].keyCode+"\">"+data[j].keyName+"</option>";
                                    j++;
                                }
                                _html+=temp3;
                            }
                        });
                    }else
                    {
                        _html+="<option value=\"\">数据错误</option>";
                    }
                    _html+="</select>";
                    break;
                //密码框
                case "4":
                    _html+="<input type=\"password\" class=\"E_Table_input_text\" name=\""+_EGV_FieldConfigJson[i].fieldName+"\" "+temp2+" maxlength=\""+_EGV_FieldConfigJson[i].EditMaxLength+"\" onkeyup=\"_FunE_minLength("+_EGV_FieldConfigJson[i].EditMinLength+",this)\" />";
                    break;
                //文件上传框
                case "5":
                    _html+="<input type=\"text\" class=\"E_Table_input_text_file\" name=\""+_EGV_FieldConfigJson[i].fieldName+"\" readonly=\"readonly\" />";
                    _html+="<input type=\"button\" value=\"浏览...\" valgoto=\""+_EGV_FieldConfigJson[i].fieldName+"\" class=\"E_Table_input_button_file\" reg=\""+_EGV_FieldConfigJson[i].regexTypeID+"\" />";
                    break;
                //多行文本框
                case "6":
                    _html+="<textarea rows=\"6\" cols=\"35\" class=\"E_Table_textarea\" name=\""+_EGV_FieldConfigJson[i].fieldName+"\"></textarea>";
                    break;
                default :
                    _html+="&nbsp;";
                    break;
            }
            //结束第二个td,第三个td开始
            _html+="</td><td class=\"E_Table_tr_thrTd\" abbr=\""+_EGV_FieldConfigJson[i].fieldName+"\">"+_EGV_FieldConfigJson[i].regrxText+"</td>";
        }else
        {
            if(_EGV_FieldConfigJson[i].isPK=="1")
            {
                _html+="<tr style=\"display:none\"><td colspan=\"3\"><input type=\"hidden\" name=\""+_EGV_FieldConfigJson[i].fieldName+"\" value=\""+_EGV_addID+"\" /></td>";
            }
        }
        //结束 tr
        _html+="</tr>";
        i++;
    }
    //结束table
    _html+="</html>";
    
    //把html加载到表单表身区
    $("#E_edit_body_div").html(_html);
    
    //绑定文件上传
    _FunE_BindFileUpLoad();
    
    //如果是修改,则绑定修改信息
    if(!_EGV_isAdd)
    {
        //下载要编辑的信息
        _FunE_DownEditInfo();
        //绑定要编辑的信息
        _FunE_BindEditInfo();
    }
}
//绑定文件上传
function _FunE_BindFileUpLoad()
{
    $(".E_Table_tr_twoTd input[type='button'][valgoto]").each(function(data){
        var objName=$(this).attr("valgoto");
        var regName=$(this).attr("reg");
        var inputObj=$("input[type='text'][name='"+objName+"']")[0];
        new AjaxUpload(this,{
            action:_EGV_PostPage,
            data:{_type:"e_upFile"},
            autoSubmit:true,
            onComplete:function(file,response)
            {
                $("input[class='E_Table_input_text_file'][name='"+objName+"']").val($(response).text());
                _FunE_regex(regName,inputObj);
            }
        });
    });
}
//输入的值是否超过最小长度
function _FunE_minLength(len,abbr)
{
    var minLen=parseInt(len,10);
    var objLen=abbr.value.length;
    var objName=abbr.name;
    if(objLen<minLen)
    {
        $("td[abbr='"+objName+"']").attr("class","E_Table_tr_thrTd_false");
    }else
    {
        $("td[abbr='"+objName+"']").attr("class","E_Table_tr_thrTd_true");
    }
}
//验证
function _FunE_regex(regName,inputObj)
{
    var objVal=inputObj.value;
    if(objVal.length==0)
    {
        return;
    }
    var objName=inputObj.name;
    $.post(_EGV_PostPage,{_type:"e_downRegex",regexName:regName},function(data){
        var reg=new RegExp(data);
        if(reg.test(objVal))
        {
            $("td[abbr='"+objName+"']").attr("class","E_Table_tr_thrTd_true");
        }else
        {
            $("td[abbr='"+objName+"']").attr("class","E_Table_tr_thrTd_false");
        }
    });
}
//下载要编辑的信息
function _FunE_DownEditInfo()
{
    //表名
    var D_TableName=_EGV_TableConfigJson.tableName;
    //表主键
    var D_TablePK="";
    //主键是否是整形
    var D_PKisIntType="";
    var i=0;
    while(_EGV_FieldConfigJson[i]!=null)
    {
        if(_EGV_FieldConfigJson[i].isPK="1")
        {
            D_TablePK=_EGV_FieldConfigJson[i].fieldName;
            D_PKisIntType=_EGV_FieldConfigJson[i].isIntType;
            break;
        }
        i++;
    }
    //主键的值
    var D_PKVal=_EGV_updateID;
    if(D_PKVal=="")
    {
        return;
    }
    $.ajax({
        url:_EGV_PostPage,
        type:"POST",
        dataType:"json",
        async:false,
        data:{_type:"e_DownEditInfo",table:D_TableName,pk:D_TablePK,pkVal:D_PKVal,pInt:D_PKisIntType},
        success:function(data){
            _EGV_EditInfoJson=data;
        }
    });
}
//绑定要编辑的信息
function _FunE_BindEditInfo()
{
    //绑定文本框
    $("#E_Table input[type!='button']").each(function(){
        var objName=$(this).attr("name");
        $(this).val(_EGV_EditInfoJson[0][objName].replace("&quot;","\""));
    });
    //绑定下拉框
    $("#E_Table select").each(function(){
        var objName=$(this).attr("name");
        $(this).val(_EGV_EditInfoJson[0][objName].replace("&quot;","\""));
    });
    //绑定多行文本框
    $("#E_Table textarea").each(function(){
        var objName=$(this).attr("name");
        $(this).val(_EGV_EditInfoJson[0][objName].replace("&quot;","\""));
    });
}
//把表单组成JSON字符串
function _FunE_FromToJsonStr()
{
    //生成的JSON
    var _Json="{";
    //遍历文本框
    $("#E_Table input[type!='button']").each(function(){
        var objName=$(this).attr("name");
        var objVal=$(this).val();
        _Json+="\""+objName+"\":\""+objVal.replace("\"","&quot;")+"\",";
    });
    //遍历下拉框
    $("#E_Table select").each(function(){
        var objName=$(this).attr("name");
        var objVal=$(this).val();
        _Json+="\""+objName+"\":\""+objVal.replace("\"","&quot;")+"\",";
    });
    //遍历多行文本框
    $("#E_Table textarea").each(function(){
        var objName=$(this).attr("name");
        var objVal=$(this).val();
        _Json+="\""+objName+"\":\""+objVal.replace("\"","&quot;")+"\",";
    });
    _Json=_Json.substring(0,_Json.length-1);
    _Json+="}";
    return _Json;
}
function _FunE_btn_send_ok()
{
    //JSON字符
    var jsonStr=_FunE_FromToJsonStr();
    //表名
    var tableName=_EGV_TableConfigJson.tableName;
    //是否新增
    var _isAdd=_EGV_isAdd==true?"1":"0";
    $.post(_EGV_PostPage,{_type:"e_InsAndUpdObj",ClassName:tableName,ClassData:jsonStr,isIns:_isAdd},function(data){
        alert(data);
    });
}
</script>

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