<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shop2.aspx.cs" Inherits="shop2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
    <div>商店2
    <table style="width: 50%;">
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    名称</td>
                <td class="style6">
                    单价(元/个)</td>
                <td>
                    购买数量(个)</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="选择" />
                    </td>
                <td class="style5">
                    足球</td>
                <td class="style6">
                    150</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="选择"  />
                   </td>
                <td class="style5">
                    篮球</td>
                <td class="style6">
                    200</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="选择" />
                    </td>
                <td class="style5">
                    排球</td>
                <td class="style6">
                    250</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
               <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Button ID="Button1" runat="server" Text="提交" onclick="Sub2"/>
                   </td>
                <td class="style6">
                    <asp:HyperLink ID="LinkButton1" runat="server" NavigateUrl="shop1.aspx">买点别的</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="LinkButton2" runat="server"  NavigateUrl="shoppingcar.aspx">查看购物车</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
