<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regist.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 491px;
        }
        .style3
        {
            width: 299px;
        }
        </style>
    <script language="javascript" type="text/javascript">

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  <p  style="font-family:宋体;font-style:italic;font-size:x-large;text-align:center;color:red">请输入个人信息

        </p>
       <p align="right"> <asp:HyperLInk ID="LinkButton1" runat="server"  align="left" 
               Font-Italic="True" NavigateUrl="~/note.aspx">注意事项></asp:HyperLink></p>
    </div>
   <table class="style1">
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label1" runat="server" Text="用户名:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="user" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="user">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ErrorMessage="该用户已存在" 
                    onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label2" runat="server" Text="密码:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="密码格式不正确" ControlToValidate="password" ValidationExpression="^[a-zA-Z]\w{5,17}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label3" runat="server" Text="确认密码:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="repassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="密码不一致" ControlToValidate="repassword" ControlToCompare="password"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label4" runat="server" Text="性别:"></asp:Label>
            </td>
            <td class="style3">
                <asp:RadioButtonList ID="sex" runat="server" 
                    RepeatDirection="Horizontal">
                   <asp:ListItem Value="male">男</asp:ListItem>
                   <asp:ListItem Value="female">女</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label5" runat="server" Text="籍贯:"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="province" runat="server"  AutoPostBack="true"
                    onselectedindexchanged="province_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="city" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label6" runat="server" Text="Email:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="请输入合法的Email地址"  ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label7" runat="server" Text="手机:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="phone" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ErrorMessage="以135或150开头的联通号码" ControlToValidate="phone" ValidationExpression="(130|135)\d{8}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
               
                <asp:Label ID="Label13" runat="server" Text="专业擅长:"></asp:Label>
               
            </td>
            <td class="style3">
                <asp:ListBox ID="goodat" runat="server" SelectionMode="Multiple">
                <asp:ListItem Value="c++" >c++</asp:ListItem>
                <asp:ListItem Value="移动开发" >移动开发</asp:ListItem>
                <asp:ListItem Value="Java" >Java</asp:ListItem>
                <asp:ListItem Value="ios" >ios</asp:ListItem>
                </asp:ListBox>
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label9" runat="server" Text="业余爱好:"></asp:Label>
            </td>
            <td class="style3">
                <asp:CheckBoxList ID="hobby" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="football" >足球</asp:ListItem>
                <asp:ListItem Value="basketball" >篮球</asp:ListItem>
                <asp:ListItem Value="badminton" >羽毛球</asp:ListItem>
                <asp:ListItem Value="pingpong" >乒乓球</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label10" runat="server" Text="个人照片:"></asp:Label>
            </td>
            <td class="style3">
                <asp:FileUpload ID="picture" runat="server" />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="上传" 
                    CausesValidation="False" />
                <br />
                <asp:Image ID="show_Image" runat="server" Width="146px" Visible="false" />
            </td>
            <td>
                <asp:Label ID="picture_Label" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label11" runat="server" Text="出生年月:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="birthday" runat="server"></asp:TextBox>
                <asp:Button ID="selectButton" runat="server"  
                    onclick="SelectButtonClick"  Text="选择"/>
                <asp:Calendar ID="Calendar1" runat="server" Visible="False" 
                    onselectionchanged="Calendar1_SelectionChanged" ></asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label12" runat="server" Text="备注信息:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="EX" runat="server" Height="79px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Text="显示" CausesValidation="False" 
                    onclick="Button1_Click" />
                <asp:Button ID="Button2" runat="server"  Text="重填" Height="21px" 
                    onclick="Button2_Click1" />
                <asp:Button ID="Button4" runat="server" Text="提交" onclick="SubmitUserInfo" />
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="注册" />
            </td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server"  ShowMessageBox="true" ShowSummary="false"/>
            </td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="show" runat="server"></asp:Label>
                <br />
                <asp:Image ID="Image1" runat="server" Visible="false" />
                <br />
                <asp:Label ID="show1" runat="server" ></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [information] WHERE ([user] = @user)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="user" Name="user" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
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
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
