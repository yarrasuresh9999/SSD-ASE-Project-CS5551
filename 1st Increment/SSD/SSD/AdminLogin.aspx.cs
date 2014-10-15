using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace SSD
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void pglogin(object sender, EventArgs e)
        {
            string x = un.Text;
            string y = pw.Text;
            if (x == "admin" && y == "welcome")
            {
                Session["sesadmin"] = Request["un"];
                Response.Redirect("AdminHome.aspx");
                
            }
            else
            {
                er.Visible = true;
                un.Text = "";
                pw.Text = "";
            }
        }
    }
}