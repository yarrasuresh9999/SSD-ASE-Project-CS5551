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
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sesadmin"] == null)
                Response.Redirect("Default.aspx");
        }
        protected void logou(object sender, EventArgs e)
        {
            Session["sesadmin"] = null;
            Response.Redirect("AdminLogin.aspx");
        }
    }
}