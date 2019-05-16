using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shop2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Sub2(object sender, EventArgs e)
    {

        if (CheckBox1.Checked)
            Session["150元每个的足球个数："] = TextBox1.Text;
        else
            Session["150元每个的足球个数："] = null;
        if (CheckBox2.Checked)
            Session["200元每个的篮球个数："] = TextBox2.Text;
        else
            Session["200元每个的篮球个数："] = null;
        if (CheckBox3.Checked)
            Session["250元每个的排球个数："] = TextBox3.Text;
        else
            Session["250元每个的排球个数："] = null;

    }
}