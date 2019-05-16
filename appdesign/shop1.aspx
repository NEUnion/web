<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shop1.aspx.cs" Inherits="shop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>商店1
    <table style="width: 52%;">
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    名称</td>
                <td class="style2">
                    单价(元/斤)</td>
                <td class="style1">
                    购买数量(斤)</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="选择" />
                    </td>
                <td class="style3">
                    猪肉</td>
                <td class="style2">
                    15</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="选择"  />
                   </td>
                <td class="style3">
                    羊肉</td>
                <td class="style2">
                    20</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="选择" />
                    </td>
                <td class="style3">
                    牛肉</td>
                <td class="style2">
                    25</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" Text="提交" onclick="Sub1"/>
                </td>
                <td class="style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="shop2.aspx">买点别的</asp:HyperLink>
                </td>
                <td class="style1">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="shoppingcar.aspx">查看购物车</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
