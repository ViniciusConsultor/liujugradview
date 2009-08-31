<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true"  CodeFile="~/ZAxis/xtgl/sjkcz/SQL_MyTblSet.aspx.cs" Inherits="SQL_MyTblSet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
function SelectAll()
{
  var cbx1=document.getElementById("<%=selectAll1.ClientID %>");
  var cbxs=document.getElementsByTagName("input");
  if(cbx1.checked)
  {
    for(var i=0;i<cbxs.length;i++)
     {
     if(cbxs[i].id.indexOf("cbxSfxx")!=-1)
      {
      cbxs[i].checked=true;
      }
     }
  }
  else
  {
  for(var i=0;i<cbxs.length;i++)
     {
     if(cbxs[i].id.indexOf("cbxSfxx")!=-1)
      {
      cbxs[i].checked=false;
      }
     }
  }
}

function SelectAll2()
{
  
  var cbx2=document.getElementById("<%=selectAll2.ClientID %>");
  var cbxs=document.getElementsByTagName("input");
  if(cbx2.checked)
  {
    for(var i=0;i<cbxs.length;i++)
     {
     if(cbxs[i].id.indexOf("cbxSfkbj")!=-1)
      {
      cbxs[i].checked=true;
      }
     }
  }
  else
  {
  for(var i=0;i<cbxs.length;i++)
     {
     if(cbxs[i].id.indexOf("cbxSfkbj")!=-1)
      {
      cbxs[i].checked=false;
      }
     }
  }
}
</script></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPage" runat="server">
                        <table class="LVTbl">
                        <tr>
                        <td class="tbl_td_head">表名</td>
                        <td class="tbl_td_head">字段名</td>
                        <td class="tbl_td_head">中文名</td>
                        <td class="tbl_td_head">显示顺序</td>
                        <td class="tbl_td_head"><input runat="server"  id="selectAll1"   onclick="SelectAll();" type="checkbox" />是否显示</td>
                        <td class="tbl_td_head"><input runat="server"  id="selectAll2"  onclick="SelectAll2();" type="checkbox" />是否编辑</td>
                        <td class="tbl_td_head">绑定表达式</td>
                        <td class="tbl_td_head">是否排序</td>
                        <td class="tbl_td_head">排序表达式</td>
                        <td class="tbl_td_head">级联表</td>
                        </tr>
       <asp:ListView ID="ListView1" runat="Server">
       <ItemTemplate>
          <tr onmouseover='javascript:this.style.backgroundColor="#0099FF";' onmouseout='javascript:this.style.backgroundColor="#ffffff";'>
                        <td class="LVTblTd"><asp:Label ID="lblTblName" runat="server" Text='<%#Eval("TABLE_NAME")%>'>"></asp:Label></td>
                        <td class="LVTblTd"><asp:Label ID="lblZdm" runat="server" Text='<%#Eval("COLUMN_NAME")%>'></asp:Label></td>
                        <td class="LVTblTd"><asp:TextBox ID="txtZwm" runat="server" Text='<%#Eval("zdxxmc")%>' Width="100px"></asp:TextBox></td>
                        <td class="LVTblTd"><asp:TextBox ID="txtXsSx" runat="server" Text='<%#Eval("zdsx")%>' Width="50px"></asp:TextBox></td>
                        <td class="LVTblTd">
                          <input runat="server"  id="cbxSfxx" type="checkbox" checked='<%#(Eval("zdsfxs")==null||Eval("zdsfxs").ToString()=="")||Eval("zdsfxs").ToString()=="是"?true:false%>'  />
                        是 否</td>
                        <td class="LVTblTd"><input runat="server" id="cbxSfkbj" type="checkbox" checked='<%#(Eval("zdsfsy")==null||Eval("zdsfsy").ToString()=="")||Eval("zdsfsy").ToString()=="是"?true:false%>'  />是 否</td>
                        <td class="LVTblTd"><asp:TextBox  Width="100px" ID="txtBdBds" runat="server" Text='<%#Eval("zdbdbds")%>'></asp:TextBox></td>
                        <td class="LVTblTd"><input runat="server" id="cbxSfpx" type="checkbox" checked='<%#(Eval("zdsfpx")==null||Eval("zdsfpx").ToString()=="")||Eval("zdsfpx").ToString()=="否"?false:true%>'  />是 否</td>
                        <td class="LVTblTd"><asp:TextBox  Width="50px" ID="txtzdpxfs" runat="server" Text='<%#Eval("zdpxfs")%>'></asp:TextBox></td>
                        <td class="LVTblTd"><asp:TextBox Width="50px" ID="txtjlb" runat="server" Text='<%#Eval("jlb")%>'></asp:TextBox></td>
                        </tr>
        </ItemTemplate>
        <LayoutTemplate>
                        <tr runat="server" id="itemPlaceholder"> 
                        </tr>
            </LayoutTemplate>
        </asp:ListView>
        </table>
 <table class="MainDataFullTbl_Save">
            <tr>
                <td align="center">
                    <asp:Button ID="btnSave" runat="server"  Text="保存配置"  
                         onclick="btnSave_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBack" runat="server" onclick="btnBack_Click" Text="返回上一页"  
                         />
                </td>
            </tr>
        </table>
</asp:Content>