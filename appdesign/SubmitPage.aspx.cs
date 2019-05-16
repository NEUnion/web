using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubmitPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 0; i < Session.Count; i++)
            if (Session[i] != null)
                Response.Write(Session[i].ToString()+"<br/>");
    }
}