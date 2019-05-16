using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1
{
     
    public partial class WebForm1 : System.Web.UI.Page
    {
        string[][] data = new string[][]{  
                            new string []{"武汉", "襄阳", "随州", "荆门", "十堰市"},
                            new string []{"长沙", "常德", " 株洲", "湘潭", "益阳"},
                           new string [] {"广州", "东莞", "深圳", "珠海", "佛山"},
                            new string []{"成都", "攀枝花", "雅安", "绵阳", "德阳"}};
       
        protected void Page_Load(object sender, EventArgs e)
        {
            txtMail.Attributes.Add("onfocus", "{this.value=''; this.style.color = 'black'; this.style.fontStyle = 'normal';}");
            txtMail.Attributes.Add("onBlur", "if(this.value==''){this.value='如wustzz@163.com'; this.style.color = 'gray'; this.style.fontStyle = 'oblique';}");

            txtPhone.Attributes.Add("onfocus", "{this.value=''; this.style.color = 'black';this.style.fontStyle = 'normal';}");
            txtPhone.Attributes.Add("onBlur", "if(this.value==''){this.value='11位，全数字'; this.style.color = 'gray'; this.style.fontStyle = 'oblique';}");

            TextArea1.Attributes.Add("onfocus", "{this.value='';this.style.color = 'black'; this.style.fontStyle = 'normal';}");
            TextArea1.Attributes.Add("onBlur", "if(this.value==''){this.value='可以补充一下';this.style.color = 'gray'; this.style.fontStyle = 'oblique';}");

        }
        public void reset(object sender, EventArgs e)
        {
            txtPassword.Text = "";
            txtUserName.Text = "";
            cnPassword.Text = "";
            //txtPassword.Attributes["value"]="";
            //cnPassword.Attributes["value"] = "";
            txtMail.Text = "";
            txtPhone.Text = "";

            txtMail.ForeColor = System.Drawing.Color.Gray;
            txtMail.Font.Italic = true;

            txtPhone.ForeColor = System.Drawing.Color.Gray;
            txtPhone.Font.Italic = true;

            RadioButtonList1.SelectedValue = "男";
            DropDownList1.ClearSelection();
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("请选择");
            txtMail.Text = "如123456@163.com";
            txtPhone.Text = "11位，全数字";

            for (int i = 0; i < ListBox1.Items.Count; i++)
            {
                if (ListBox1.Items[i].Selected)
                {
                    ListBox1.Items[i].Selected = false;
                }
            }
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                    CheckBoxList1.Items[i].Selected = false;
            }
            Image1.ImageUrl = "";
            Image1.Visible = false;
            TextBox6.Text = "";
            TextArea1.InnerText = "可以补充一下";
            Label13.Text = "";
            Label13.Visible = false;
            Image2.ImageUrl = "";
            Image2.Visible = false;
        }
         
        protected void show_detail(object sender, EventArgs e)
        {
            if (txtMail.Text != "如123456@163.com")
            {
                txtMail.ForeColor = System.Drawing.Color.Black;
                txtMail.Font.Italic = false;
            }
            else
            {
                txtMail.ForeColor = System.Drawing.Color.Gray;
                txtMail.Font.Italic = true;
            }

            if (txtPhone.Text != "11位，全数字")
            {
                txtPhone.ForeColor = System.Drawing.Color.Black;
                txtPhone.Font.Italic = false;
            }
            else
            {
                txtPhone.ForeColor = System.Drawing.Color.Gray;
                txtPhone.Font.Italic = true;
            }
            if (TextArea1.InnerText != "可以补充一下")
            {
                TextArea1.Attributes.Add("style", "{this.style.color = 'black'; this.style.fontStyle = 'normal';}");
            }
            String str = "";
            str += "用 户 名：" + txtUserName.Text + "<br />";
            str += "密  码：" + txtPassword.Text + "<br />";
            str += "确认密码：" + cnPassword.Text + "<br />";
            str += "性 别：" + RadioButtonList1.SelectedItem.Text + "<br />";
            str += "籍 贯：" + DropDownList1.SelectedItem.Text + "省  ";
            str += DropDownList2.SelectedItem.Text + "市" + "<br />";
            str += "Email：" + txtMail.Text + "<br />";
            str += "手 机 号：" + txtPhone.Text + "<br />";
            str += "专业擅长：";

            for (int i = 0; i < ListBox1.Items.Count; i++)
            {
                if (ListBox1.Items[i].Selected)
                {
                    str += ListBox1.Items[i].Text + "     ";
                }
            }
            str += "<br />" + "兴趣爱好：";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                    str += CheckBoxList1.Items[i].Text + " ";
            }
           
           
           
          
            str += "<br />" + "出生年月：" + TextBox6.Text + "<br />";
            str += "备注信息：" + TextArea1.InnerText + "<br />";
            str += "个人照片：" + "<br />";
         
            Label13.Text = str;
            Image2.ImageUrl = Image1.ImageUrl;
    
        }
        protected void set_date(object sender, EventArgs e)
        {
            TextBox6.Text = calendar.SelectedDate.ToLongDateString();
            calendar.Visible = false;


        }
        protected void show_calendar(object sender, EventArgs e)
        {

            calendar.Visible = true;
           

        }
        protected void uploadImage(object sender, EventArgs e)
        {
            
            string saveDir = @"\Image\";  //指定的文件夹要存在
            string appPath = Request.PhysicalApplicationPath;
            if (FileUpload1.HasFile)
            {
                string savePath = appPath + saveDir + FileUpload1.FileName;
                //Response.Write(savePath);
                FileUpload1.SaveAs(savePath);
                
               Image1.ImageUrl = "~/Image/" + FileUpload1.FileName;
               Image1.Visible = true;

            }
            else Response.Write("无图片");

        }
        protected void BindCityData(object sender, EventArgs e)
        {
            txtPassword.Attributes["value"] = txtPassword.Text;
            cnPassword.Attributes["value"] = cnPassword.Text;
            txtMail.Attributes.Add("style", " this.style.color = 'black'; this.style.fontStyle = 'normal';}");
            txtPhone.Attributes.Add("style", " this.style.color = 'black'; this.style.fontStyle = 'normal';}");
          
          
            DropDownList2.Items.Clear();
            
            if (DropDownList1.SelectedIndex == 0)

                DropDownList2.Items.Add(new ListItem("请选择"));

            else
            {
                for (int i = 0; i < 5; i++)
                {


                    DropDownList2.Items.Add(new ListItem(data[DropDownList1.SelectedIndex - 1][i].ToString()));
                }
            }

        }
    }
}