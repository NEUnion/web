using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProvince();
            BindCity();
            birthday.Text = Calendar1.TodaysDate.ToLongDateString();

        }
    }

    string[][] prov = new string[3][]
            {
                new string[]{"北京","海淀","西城","东城","丰台"},
                new string[]{"上海","浦东","闵行","黄埔","徐汇","长宁"},
                new string[]{"广东","广州","深圳","东莞","佛山","中山"}
            };
    protected void BindProvince()
    {
        province.Items.Clear();
        for (int i = 0; i < prov.Length; i++)
        {
            province.Items.Add(prov[i][0]);
        }
    }
    protected void BindCity()
    {
        city.Items.Clear();
        for (int i = 0; i < prov.Length; i++)
        {
            if (prov[i][0] == province.SelectedValue)
            {
                for (int j = 1; j < prov[i].Length; j++)
                    city.Items.Add(prov[i][j]);
            }
        }
    }
    protected void province_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindCity();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = !Calendar1.Visible;

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        birthday.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        show.Text = "用户名:"+user.Text;
        show.Text += "<br />密 码:" + password.Text;
        show.Text += "<br/>确认密码:" + repassword.Text;
        show.Text += "<br/>性别:" + sex.SelectedItem.Text;
        show.Text += "<br/>籍贯:" + province.Text + "&nbsp"+city.Text;
        show.Text += "<br />Email:" + email.Text;
        show.Text += "<br />手机:" + phone.Text;
        show.Text += "<br />专业擅长:";
        foreach (ListItem listItem in goodat.Items)
        {
            if (listItem.Selected)
            {
                show.Text += listItem.Text + "&nbsp";
            }
        }
        show.Text += "<br />业余爱好:";
        foreach (ListItem listItem in hobby.Items)
        {
            if (listItem.Selected)
            {
                show.Text += listItem.Text + "&nbsp";
            }
        }
        show.Text += "<br />个人照片:";
        Image1.Visible = true;
 
        show1.Text= "<br/>出生年月:" + birthday.Text;
        show1.Text+= "<br/>备注信息:" + EX.Text;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        password.Attributes["value"] = password.Text;
        repassword.Attributes["value"] = repassword.Text;
        string saveDir = "images"; 
        string appPath = Request.PhysicalApplicationPath;
        if (picture.HasFile)
        {   string savePath = appPath + saveDir +picture.FileName;
            Image1.ImageUrl = saveDir + picture.FileName;
            show_Image.ImageUrl = saveDir + picture.FileName;
            picture.SaveAs(savePath);
            picture_Label.Text = "上传成功";
           
        }
        else
            picture_Label.Text = "上传失败";
   


    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        summary.Text = "";
        if (Page.IsValid)
        {
            summary.Text = "验证通过";
            Session["a1"] = show .Text;
  
            Session["a2"] = Image1.ImageUrl;
            Session["a3"] = show1.Text;
            Response.Redirect("page3.aspx");
        }
        else
        {
            Session["a1"] = null;
            Session["a2"] = null;
            Session["a3"] = null;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
      
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        GridView1.DataBind();
        if (GridView1.Rows.Count == 0)
            args.IsValid = true;
        else
            args.IsValid = false;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Session["c1"] = user.Text;
            Session["c2"] = password.Text;
            Session["c3"] = repassword.Text;
            Session["c4"] = sex.SelectedItem.Text;
            Session["c5"] = province.Text + city.Text;
            Session["c6"] = email.Text;
            Session["c7"] = phone.Text;

            foreach (ListItem listItem in goodat.Items)
            {
                if (listItem.Selected)
                {
                    Session["c8"] += listItem.Text;
                }
            }
            show.Text += "<br />业余爱好:";
            foreach (ListItem listItem in hobby.Items)
            {
                if (listItem.Selected)
                {
                    Session["c9"] += listItem.Text ;
                }
            }

            Session["c10"] = Image1.ImageUrl;

            Session["c11"] = birthday.Text;
            Session["c12"] = EX.Text;

            Response.Redirect("Default2.aspx");
        }
    }
}