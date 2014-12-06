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

namespace NewSSD
{
    public partial class contactus : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ApplicationServices"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void subclick(object sender, EventArgs e)
        {
            
            string x = userName.Value;
            string y = inputEmail3.Value;
            string z =msg.Value;
            if (x == "")
            {
                ern.Visible = true;
                Label3.Visible = false;
               
            }
            else if (y == "")
            {
                ern.Visible = false;
                Label3.Visible=false;
                Label1.Visible = true;
            }
            else if (z.Length==0)
            {
                ern.Visible = false;
                Label1.Visible = false;
                Label3.Visible=false;
                Label2.Visible = true;
            }
            else
            {
                ern.Visible = false;
                Label1.Visible = false;
                Label2.Visible = false;
                String zz = "unread";
                DataSet ds = new DataSet();
                con.Open();
                String strcmd = "insert into contacttable values('" + x + "','" + y + "','" + z + "','"+zz+"')";
                SqlCommand cmd = new SqlCommand(strcmd, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
                // ScriptManager.RegisterStartupScript(Page, Page.GetType(), "s", "<script>alert('Staff Registered Successfully with the System')</script>", false);
                Label3.Visible = true;
                userName.Value = "";
                inputEmail3.Value = "";
                msg.Value = "";
            }


        }
    }
}