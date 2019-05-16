<%@ Page Language="C#" AutoEventWireup="true" CodeFile="page3.aspx.cs" Inherits="page3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
</head>
<body>
<% Response.Write(Session["a1"].ToString() + "<br>"); %>
<% Image1.ImageUrl = Session["a2"].ToString(); %>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Image ID="Image1" runat="server" />
    </form>
 <%  Response.Write(Session["a3"].ToString() + "<br>");  %>
</body>
</html>
