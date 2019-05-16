using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shoppingcar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int total = 0;
        for (int i = 12; i < Session.Count; i++)
        {
            if (Session[i] != null)
            {

                Response.Write(Session.Keys[i] + Session[i].ToString() + "<br>");
                if (Session.Keys[i].Equals("15元每斤的猪肉斤数："))
                {
                    total += 15 * int.Parse(Session[i].ToString());
                }
                if (Session.Keys[i].Equals("20元每斤的羊肉斤数："))
                {
                    total += 20 * int.Parse(Session[i].ToString());
                }
                if (Session.Keys[i].Equals("25元每斤的牛肉斤数："))
                {
                    total += 25 * int.Parse(Session[i].ToString());
                }
                if (Session.Keys[i].Equals("150元每个的足球个数："))
                {
                    total += 150 * int.Parse(Session[i].ToString());
                }
                if (Session.Keys[i].Equals("200元每个的篮球个数："))
                {
                    total += 200 * int.Parse(Session[i].ToString());
                }
                if (Session.Keys[i].Equals("250元每个的排球个数："))
                {
                    total += 250 * int.Parse(Session[i].ToString());
                }


            }

        }
        Response.Write("总计" + total + "元");

    }
}