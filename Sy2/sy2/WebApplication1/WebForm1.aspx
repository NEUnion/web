<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 525px;
            height: 36px;
        }
        .style3
        {
            height: 36px;
        }
        .style20
        {
            width: 525px;
        }
        .style22
        {
            width: 525px;
            height: 48px;
        }
        .style23
        {
            height: 48px;
        }
        .style36
        {
            width: 525px;
            height: 24px;
        }
        .style37
        {
            height: 24px;
        }
        .style38
        {
            width: 525px;
            height: 12px;
        }
        .style39
        {
            height: 12px;
        }
        .style40
        {
            width: 525px;
            height: 10px;
        }
        .style41
        {
            height: 10px;
        }
        .style42
        {
            width: 525px;
            height: 21px;
        }
        .style43
        {
            height: 21px;
        }
        .style44
        {
            width: 525px;
            height: 14px;
        }
        .style45
        {
            height: 14px;
        }
        .style46
        {
            width: 525px;
            height: 31px;
        }
        .style47
        {
            height: 31px;
        }
        .style48
        {
            width: 525px;
            height: 11px;
        }
        .style49
        {
            height: 11px;
        }
        .style50
        {
            width: 525px;
            height: 71px;
        }
        .style51
        {
            height: 71px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  <p  style="font-family:宋体;font-style:italic;font-size:x-large;text-align:center;color:red">请输入个人信息

        </p>
       <p align="right"> <asp:LinkButton runat="server"  align="left" 
               Font-Italic="True" PostBackUrl="~/WebForm2.aspx">注意事项></asp:LinkButton></p>
    </div>
    <table style="width:100%;">
        <tr>
            <td class="style44" align="right">
                <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
            </td>
            <td class="style45">
                <asp:TextBox ID="txtUserName" runat="server" style="margin-left: 1px" 
                    Height="20px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                ControlToValidate="txtUserName"
                    ErrorMessage="*用户名必填"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ForeColor="Red"
                  ControlToValidate="txtUserName"
                   ValidationExpression="^[a-zA-Z]\w{4,16}[ a-zA-Z0-9]$"
                    ErrorMessage="*格式不正确"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style42" align="right">
                <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
            </td>
            <td class="style43">
                <asp:TextBox ID="txtPassword" runat="server" Height="20px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtPassword"
                forecolor="red"
                    ErrorMessage="*密码必填"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                 ControlToValidate="txtPassword"
                  ValidationExpression="^[^\$\\]{6,16}$"
                forecolor="red"
                    ErrorMessage="*密码长度不少于6位，最多16位，字符不能包含’$’和’\’"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style40" align="right">
                <asp:Label ID="Label3" runat="server" Text="确认密码："></asp:Label>
            </td>
            <td class="style41">
                <asp:TextBox ID="cnPassword" runat="server" Height="20px"  
                    TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToValidate="cnPassword"
                ControlToCompare="txtPassword"
                forecolor="red"
                type="String"
                Operator="Equal"
                ErrorMessage="*两次密码不一样"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style20" align="right">
                <asp:Label ID="Label4" runat="server" Text="性别："></asp:Label>
            </td>
            <td>
              
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" Height="16px" Width="92px" 
                    >
                    <asp:ListItem Selected="True">男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:RadioButtonList>
              
            </td>
        </tr>
        <tr>
            <td class="style48" align="right">
                <asp:Label ID="Label5" runat="server" Text="籍贯："></asp:Label>
            </td>
            <td class="style49">
                <asp:DropDownList ID="DropDownList1" OnSelectedIndexChanged="BindCityData" 
                    runat="server" Height="25px" Width="102px" AutoPostBack="True" 
                    style="margin-bottom: 0px">
                    <asp:ListItem>请选择</asp:ListItem>
                    <asp:ListItem>湖北</asp:ListItem>
                    <asp:ListItem>湖南</asp:ListItem>
                    <asp:ListItem>广东</asp:ListItem>
                    <asp:ListItem>四川</asp:ListItem>
                </asp:DropDownList>
                省<asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="93px" 
                    >
                     <asp:ListItem>请选择</asp:ListItem>
                </asp:DropDownList>
                市</td>
        </tr>
        <tr>
            <td class="style36" align="right">
                <asp:Label ID="Label6" runat="server" Text="Email："></asp:Label>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtMail" runat="server" Height="18px"  style="color:Gray; font-style: italic;"  
                    value="如123456@163.com"   ></asp:TextBox>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red"
                ControlToValidate="txtMail" ErrorMessage="请输入合法的E-mail地址！"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style36" align="right">
                <asp:Label ID="Label7" runat="server" Text="手机号："></asp:Label>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtPhone" runat="server" Height="20px" 
                Text="11位，全数字" ForeColor="Gray" Font-Italic="true"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtPhone" ForeColor="Red"
                ValidationExpression="(130|135)\d{8}"
                    ErrorMessage="*必须是11位联通手机号"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style20" align="right">
                <asp:Label ID="Label8" runat="server" Text="专业擅长："></asp:Label>
            </td>
            <td>
                <asp:ListBox ID="ListBox1" runat="server" Width="150px" Height="57px" SelectionMode="Multiple" 
                    >
                    <asp:ListItem>windows编程</asp:ListItem>
                    <asp:ListItem>单片机编程</asp:ListItem>
                    <asp:ListItem>ASP.NET编程</asp:ListItem>
                    <asp:ListItem>J2EE编程</asp:ListItem>
                    <asp:ListItem>Java编程</asp:ListItem>
                </asp:ListBox>
            </td>
        </tr>
        <tr>
            <td class="style38" align="right">
                <asp:Label ID="Label9" runat="server" Text="业余爱好："></asp:Label>
            </td>
            <td class="style39">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                    RepeatDirection="Horizontal" >
                    <asp:ListItem>足球</asp:ListItem>
                    <asp:ListItem>篮球</asp:ListItem>
                    <asp:ListItem>排球</asp:ListItem>
                    <asp:ListItem>唱歌</asp:ListItem>
                    <asp:ListItem>其他</asp:ListItem>
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td class="style50" align="right">
                <asp:Label ID="Label10" runat="server" Text="个人照片："></asp:Label>
            </td>
            <td class="style51">
                <asp:Image ID="Image1" runat="server" Visible="false" /><br/>
                <asp:FileUpload ID="FileUpload1" runat="server" />
               
                <asp:Button ID="Button_UploadImage" runat="server" style="margin-left: 74px" Text="上传" OnClick="uploadImage"/>
               
            </td>
        </tr>
        <tr>
            <td class="style46" align="right">
                <asp:Label ID="Label11" runat="server" Text="出生年月："></asp:Label>
            </td>
            <td class="style47">
            <asp:Calendar  runat="server" ID="calendar" Visible="False" OnSelectionChanged="set_date"></asp:Calendar>
                <asp:TextBox ID="TextBox6" runat="server" Height="26px" Width="180px"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Text="选择" OnClick="show_calendar" />
            </td>
        </tr>
        <tr>
            <td class="style22" align="right">
                <asp:Label ID="Label12" runat="server" Text="备注信息："></asp:Label>
            </td>
            <td class="style23">
                <textarea id="TextArea1" runat="server" cols="30" name="S1" rows="3" style="color:Gray; font-style:italic"  >可以补充一下</textarea>&nbsp;</td>
        </tr>
        <tr>
            <td class="style2" align="right">
                <asp:Button ID="Button_Show"
                OnClick="show_detail" runat="server" Text="显示" style="margin-left: 0px" 
                    Width="58px" />
            </td>
            <td class="style3">
                <asp:Button ID="Button_Submit" runat="server" Text="提交" style="margin-left: 67px" 
                    Width="47px" />
                <asp:Button ID="Button_Reset" runat="server" style="margin-left: 70px" OnClick="reset"
                    Text="重填" />
            </td>
        </tr>
    </table>
    <p align="center">
        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label><br/>
        <asp:Image ID="Image2" runat="server" />
    </p>
    </form>
</body>
</html>
