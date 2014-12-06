using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSSD
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void adminsubmitbut(object sender, EventArgs e)
        {
            string a = uname.Value;
            string b = pwd.Value;
            if (a == "admin" && b == "welcome")
            {
                Session["adminsess"] = a;
                ermsg.Visible = false;
                Response.Redirect("adminhome.aspx");
                
            }
            else
                ermsg.Visible = true;
        }
    }
}