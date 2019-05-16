<%@ Page Language="C#" AutoEventWireup="true" CodeFile="note.aspx.cs" Inherits="note" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
    
        <p class="MsoNormal" style="line-height:150%">
            注意事项：</p>
        <p class="MsoNormal" style="line-height:150%">
            <span style="font-size:12.0pt;
line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">（</span><span lang="EN-US" 
                style="font-size:12.0pt;line-height:150%">1</span><span style="font-size:12.0pt;
line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">）用户名必填，</span><span lang="EN-US" 
                style="font-size:12.0pt;line-height:150%">6~18</span><span style="font-size:
12.0pt;line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">个字符，包括字母、数字、下划线，以字母开头，字母或数字结尾。</span><span 
                lang="EN-US" style="font-size:12.0pt;line-height:150%"><o:p></o:p></span></p>
        <p class="MsoNormal" style="line-height:150%">
            <span style="font-size:12.0pt;
line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">（</span><span lang="EN-US" 
                style="font-size:12.0pt;line-height:150%">2</span><span style="font-size:12.0pt;
line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">）密码必填，密码长度不少于</span><span lang="EN-US" 
                style="font-size:12.0pt;line-height:150%">6</span><span style="font-size:12.0pt;
line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">位，最多</span><span lang="EN-US" 
                style="font-size:12.0pt;line-height:150%">16</span><span style="font-size:12.0pt;
line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">位，字符不能包含</span><span lang="EN-US" 
                style="font-size:12.0pt;line-height:150%">’$’</span><span style="font-size:
12.0pt;line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">和</span><span lang="EN-US" 
                style="font-size:12.0pt;line-height:150%">’\’</span><span style="font-size:
12.0pt;line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，确认密码要和密码一致。</span><span lang="EN-US" 
                style="font-size:12.0pt;line-height:150%"><o:p></o:p></span></p>
        <p class="MsoNormal" style="line-height:150%">
            <span style="font-size:12.0pt;
line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">（</span><span lang="EN-US" 
                style="font-size:12.0pt;line-height:150%">3</span><span style="font-size:12.0pt;
line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">）手机号必须是</span><span lang="EN-US" 
                style="font-size:12.0pt;line-height:150%">11</span><span style="font-size:12.0pt;
line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">位数字，且必须是所有联通的的号码。</span><span 
                lang="EN-US" style="font-size:12.0pt;line-height:150%"><o:p></o:p></span></p>
        <p class="MsoNormal" style="line-height:150%">
            <span style="font-size:12.0pt;
line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">（</span><span lang="EN-US" 
                style="font-size:12.0pt;line-height:150%">4</span><span style="font-size:12.0pt;
line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">）</span><span lang="EN-US" 
                style="font-size:12.0pt;line-height:150%">Email</span><span style="font-size:
12.0pt;line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">必须符合格式要求。</span><span lang="EN-US" 
                style="font-size:12.0pt;line-height:150%"><o:p></o:p></span></p>
    
    </div>
    <asp:HyperLink ID="LinkButton1" runat="server" NavigateUrl="~/regist.aspx">&lt;返回</asp:HyperLink>
    </form>
</body>
</html>
