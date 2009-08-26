<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sys_FieldConfig.aspx.cs" Inherits="GradView.WebApp.insertCS.sys_FieldConfig" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
<style type="text/css">
.TableCss 
{
    width: 100%;
}
.TableTrOneTd
{
    text-align:right;
    width:20%;
}
.TableTrTwoTd
{
    text-align:left;
    width:40%;
}
.txtCss
{
    width:70%;
}
.selectCss
{
    width:71%;
}
</style>
</head>
<body>
<form id="form1" runat="server">
    <div>
        
        <table class="TableCss">
            <tr>
                <td class="TableTrOneTd">
                    表编号:</td>
                <td class="TableTrTwoTd">
                    <asp:TextBox ID="txtTableID" runat="server" CssClass="txtCss"></asp:TextBox>
                </td>
                <td>
                    在sys_TableConfig中的编号</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    字段英文名:</td>
                <td class="TableTrTwoTd">
                    <asp:TextBox ID="txtFieldName" runat="server" CssClass="txtCss"></asp:TextBox>
                </td>
                <td>
                    在数据表中的字段英文(定义字段的英文)</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    字段中文名:</td>
                <td class="TableTrTwoTd">
                    <asp:TextBox ID="txtFieldNameCh" runat="server" CssClass="txtCss"></asp:TextBox>
                </td>
                <td>
                    相对应的中文名</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    显示最大长度:</td>
                <td class="TableTrTwoTd">
                    <asp:TextBox ID="txtShowMaxLength" runat="server" CssClass="txtCss"></asp:TextBox>
                </td>
                <td>
                    在显示控件中显示的最大长度</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    显示排序:</td>
                <td class="TableTrTwoTd">
                    <asp:TextBox ID="txtShowSort" runat="server" CssClass="txtCss"></asp:TextBox>
                </td>
                <td>
                    在显示控件中的排序顺序</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    是否主键:</td>
                <td class="TableTrTwoTd">
                    <asp:RadioButtonList ID="rblIsPK" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">是</asp:ListItem>
                        <asp:ListItem Value="0">否</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    这个字段是不是主键</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    是否显示:</td>
                <td class="TableTrTwoTd">
                    <asp:RadioButtonList ID="rblIsShow" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">是</asp:ListItem>
                        <asp:ListItem Value="0">否</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    在显示控件中这个列是否显示</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    是否查询:</td>
                <td class="TableTrTwoTd">
                    <asp:RadioButtonList ID="rblIsSelect" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">是</asp:ListItem>
                        <asp:ListItem Value="0">否</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    在显示控件中这个列是否可以查询</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    是否自增长列:</td>
                <td class="TableTrTwoTd">
                    <asp:RadioButtonList ID="rblIsIntType" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">是</asp:ListItem>
                        <asp:ListItem Value="0">否</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    这个列是否自动增长的</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    是否外键:</td>
                <td class="TableTrTwoTd">
                    <asp:RadioButtonList ID="rblIsFK" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">是</asp:ListItem>
                        <asp:ListItem Value="0">否</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    这个列是否外键,不可能同时又是外键,又是主键</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    外键表名:</td>
                <td class="TableTrTwoTd">
                    <asp:TextBox ID="txtFKTableName" runat="server" CssClass="txtCss"></asp:TextBox>
                </td>
                <td>
                    如是是外键,对应到的外键表</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    外键表的主键:</td>
                <td class="TableTrTwoTd">
                    <asp:TextBox ID="txtFKTablePK" runat="server" CssClass="txtCss"></asp:TextBox>
                </td>
                <td>
                    对应外键表的表主键</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    链接外键表的字段:</td>
                <td class="TableTrTwoTd">
                    <asp:TextBox ID="txtFKTableField" runat="server" CssClass="txtCss"></asp:TextBox>
                </td>
                <td>
                    到得到外键表的哪个字段来换此列</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    验证类型:</td>
                <td class="TableTrTwoTd">
                    <asp:DropDownList ID="ddlRegexType" runat="server" 
                        DataSourceID="SqlDataSourceRegExType" DataTextField="keyInfo" 
                        DataValueField="keyName" CssClass="selectCss">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceRegExType" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [keyName], [keyInfo] FROM [key_regexType]">
                    </asp:SqlDataSource>
                </td>
                <td>
                    当用户输入数据的时候,进行哪些类验证</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    编辑类型:</td>
                <td class="TableTrTwoTd">
                    <asp:DropDownList ID="ddlEditType" runat="server" 
                        DataSourceID="SqlDataSourceEditType" DataTextField="keyName" 
                        DataValueField="keyCode" CssClass="selectCss">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceEditType" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [keyName], [keyCode] FROM [key_editType]">
                    </asp:SqlDataSource>
                </td>
                <td>
                    在编辑控件中,呈现出为的为哪种控件</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    描述信息:</td>
                <td class="TableTrTwoTd">
                    <asp:TextBox ID="txtRegexText" runat="server" CssClass="txtCss"></asp:TextBox>
                </td>
                <td>
                    在编辑控件中,后面字段的提示信息</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    字典表编号:</td>
                <td class="TableTrTwoTd">
                    <asp:DropDownList ID="ddlKeyTableID" runat="server" 
                        DataSourceID="SqlDataSourceSysKey" DataTextField="keyTableNameCh" 
                        DataValueField="keyTableID" CssClass="selectCss">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceSysKey" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [keyTableID], [keyTableNameCh] FROM [sys_keys]">
                    </asp:SqlDataSource>
                </td>
                <td>
                    如果&quot;编辑类型&quot;为下拉框的时候.要指定一个字典表对应</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    是否编辑:</td>
                <td class="TableTrTwoTd">
                    <asp:RadioButtonList ID="rblIsEdit" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">是</asp:ListItem>
                        <asp:ListItem Value="0">否</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    此列是否可以编辑(主键不可以编辑,自增加列不可以编辑.......)</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    编辑的排序顺序:</td>
                <td class="TableTrTwoTd">
                    <asp:TextBox ID="txtEditSort" runat="server" CssClass="txtCss"></asp:TextBox>
                </td>
                <td>
                    在编辑控件中显示的顺序</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    编辑最小长度:</td>
                <td class="TableTrTwoTd">
                    <asp:TextBox ID="txtEditMinLength" runat="server" CssClass="txtCss"></asp:TextBox>
                </td>
                <td>
                    当编辑的时候,用户输入的最小长度(文本框,密码框)</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    编辑最大长度</td>
                <td class="TableTrTwoTd">
                    <asp:TextBox ID="txtEditMaxLength" runat="server" CssClass="txtCss"></asp:TextBox>
                </td>
                <td>
                    当编辑的时候,用户输入的最大长度(文本框,密码框)</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    是否必要字段:</td>
                <td class="TableTrTwoTd">
                    <asp:RadioButtonList ID="rblIsMust" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">是</asp:ListItem>
                        <asp:ListItem Value="0">否</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    在编辑控件的时候就一定要有值</td>
            </tr>
            <tr>
                <td class="TableTrOneTd">
                    &nbsp;</td>
                <td style="text-align:center">
                    <asp:Button ID="btnSendFieldConfig" runat="server" Text="提交" 
                        onclick="btnSendFieldConfig_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="xsid" DataSourceID="SqlDataSourceFieldConfig">
            <Columns>
                <asp:BoundField DataField="xsid" HeaderText="学生编号" ReadOnly="True" 
                    SortExpression="xsid" />
                <asp:BoundField DataField="tableid" HeaderText="表编号" SortExpression="tableid" />
                <asp:BoundField DataField="fieleName" HeaderText="字段英文" 
                    SortExpression="fieleName" />
                <asp:BoundField DataField="fieldNameCh" HeaderText="字段中文" 
                    SortExpression="fieldNameCh" />
                <asp:BoundField DataField="ShowMaxLength" HeaderText="最大显示" 
                    SortExpression="ShowMaxLength" />
                <asp:BoundField DataField="ShowSort" HeaderText="显示排序" 
                    SortExpression="ShowSort" />
                <asp:BoundField DataField="isPK" HeaderText="主键" SortExpression="isPK" />
                <asp:BoundField DataField="isShow" HeaderText="显示" SortExpression="isShow" />
                <asp:BoundField DataField="isSelect" HeaderText="查询" 
                    SortExpression="isSelect" />
                <asp:BoundField DataField="isIntType" HeaderText="自增" 
                    SortExpression="isIntType" />
                <asp:BoundField DataField="isFK" HeaderText="外键" SortExpression="isFK" />
                <asp:BoundField DataField="FKTableName" HeaderText="外键表" 
                    SortExpression="FKTableName" />
                <asp:BoundField DataField="FKTablePK" HeaderText="外表主键" 
                    SortExpression="FKTablePK" />
                <asp:BoundField DataField="FKTableField" HeaderText="外表字段" 
                    SortExpression="FKTableField" />
                <asp:BoundField DataField="regexTypeID" HeaderText="验证" 
                    SortExpression="regexTypeID" />
                <asp:BoundField DataField="editTypeID" HeaderText="编辑" 
                    SortExpression="editTypeID" />
                <asp:BoundField DataField="regrxText" HeaderText="描述" 
                    SortExpression="regrxText" />
                <asp:BoundField DataField="keyTableID" HeaderText="字典" 
                    SortExpression="keyTableID" />
                <asp:BoundField DataField="isEdit" HeaderText="编辑" SortExpression="isEdit" />
                <asp:BoundField DataField="EditSort" HeaderText="编辑排序" 
                    SortExpression="EditSort" />
                <asp:BoundField DataField="EditMinLength" HeaderText="编辑小长度" 
                    SortExpression="EditMinLength" />
                <asp:BoundField DataField="EditMaxLength" HeaderText="编辑大长度" 
                    SortExpression="EditMaxLength" />
                <asp:BoundField DataField="isMust" HeaderText="必需" SortExpression="isMust" />
                <asp:BoundField DataField="ipxh" HeaderText="排序号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ipxh" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceFieldConfig" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [sys_FieldConfig] WHERE ([tableid] = @tableid)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="9014b630-de80-42c8-b21b-ee8e8518ef22" 
                    Name="tableid" QueryStringField="tableID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</form>
</body>
</html>
