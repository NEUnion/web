<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td align="right">
                <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ErrorMessage="该用户不存在" 
                    onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CausesValidation="True" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="登陆" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT * FROM [information] WHERE (([user] = @user) AND ([password] = @password))">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="user" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="password" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="user" HeaderText="user" SortExpression="user" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="repassword" HeaderText="repassword" 
                SortExpression="repassword" />
            <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
            <asp:BoundField DataField="birthplace" HeaderText="birthplace" 
                SortExpression="birthplace" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="goodat" HeaderText="goodat" 
                SortExpression="goodat" />
            <asp:BoundField DataField="hobby" HeaderText="hobby" SortExpression="hobby" />
            <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic" />
            <asp:BoundField DataField="birthday" HeaderText="birthday" 
                SortExpression="birthday" />
            <asp:BoundField DataField="remark" HeaderText="remark" 
                SortExpression="remark" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
