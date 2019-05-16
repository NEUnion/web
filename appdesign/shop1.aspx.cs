using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Sub1(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
            Session["15元每斤的猪肉斤数："] = TextBox1.Text;
        else
            Session["15元每斤的猪肉斤数："] = null;
        if (CheckBox2.Checked)
            Session["20元每斤的羊肉斤数："] = TextBox2.Text;
        else
            Session["20元每斤的羊肉斤数："] = null;
        if (CheckBox3.Checked)
            Session["25元每斤的牛肉斤数："] = TextBox3.Text;
        else
            Session["25元每斤的牛肉斤数："] = null;

    }
}