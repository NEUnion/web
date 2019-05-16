<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        InsertCommand="INSERT INTO information([user], password, repassword, sex, birthplace, email, phone, goodat, hobby, pic, birthday, remark) VALUES ( @user , @password, @repassword, @sex, @birthplace, @email, @phone, @goodat, @hobby, @pic, @birthday, @remark)" 
        SelectCommand="SELECT * FROM [information]">
        <InsertParameters>
            <asp:SessionParameter Name="user" SessionField="c1" />
            <asp:SessionParameter Name="password" SessionField="c2" />
            <asp:SessionParameter Name="repassword" SessionField="c3" />
            <asp:SessionParameter Name="sex" SessionField="c4" />
            <asp:SessionParameter Name="birthplace" SessionField="c5" />
            <asp:SessionParameter Name="email" SessionField="c6" />
            <asp:SessionParameter Name="phone" SessionField="c7" />
            <asp:SessionParameter Name="goodat" SessionField="c8" />
            <asp:SessionParameter Name="hobby" SessionField="c9" />
            <asp:SessionParameter Name="pic" SessionField="c10" />
            <asp:SessionParameter Name="birthday" SessionField="c11" />
            <asp:SessionParameter Name="remark" SessionField="c12" />
        </InsertParameters>
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
