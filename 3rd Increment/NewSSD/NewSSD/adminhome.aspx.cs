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
    public partial class adminhome : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ApplicationServices"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminsess"] == null)
                Response.Redirect("admin.aspx");
            else
            {
                
                DataSet ds = new DataSet();
                con.Open();
                string srtquery = "SELECT contactname,contactemail,contactsubject,status FROM contacttable WHERE status='unread'";
                SqlCommand cmd = new SqlCommand(srtquery, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                int x = ds.Tables[0].Rows.Count;
                if (x > 0)
                {
                    msgcountdis.Text = x.ToString();
                    msgcountdis1.Text = x.ToString();
                    msgcountdis2.Text = x.ToString();
                    msgcountdis3.Text = x.ToString();

                }
                else
                {
                    msgcountdis.Text = "";
                    msgcountdis1.Text = "";
                    msgcountdis2.Text = "";
                    msgcountdis3.Text = "";
                }
                if (x >= 3)
                {
                    mn1.Text = ds.Tables[0].Rows[0]["contactname"].ToString();
                    mm1.Text = ds.Tables[0].Rows[0]["contactsubject"].ToString();
                    mn2.Text = ds.Tables[0].Rows[1]["contactname"].ToString();
                    mm2.Text = ds.Tables[0].Rows[1]["contactsubject"].ToString();
                    mn3.Text = ds.Tables[0].Rows[2]["contactname"].ToString();
                    mm3.Text = ds.Tables[0].Rows[2]["contactsubject"].ToString();
                }

                con.Close();

                DataSet ds1 = new DataSet();
                con.Open();
                string srtquery1 = "SELECT studentid,studentname,semail,smobile,sstatus FROM studenttable WHERE sstatus='pending'";
                SqlCommand cmd1 = new SqlCommand(srtquery1, con);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                da1.Fill(ds1);
                int x1 = ds1.Tables[0].Rows.Count;
                if (x1 > 0)
                {
                    sreqcountdis.Text = x1.ToString();
                    sreqcountdis1.Text = x1.ToString();
                }
                else
                {
                    sreqcountdis.Text = "";
                    sreqcountdis1.Text = "";
                }
                if (x1 >= 3)
                {
                    srnm1.Text = ds1.Tables[0].Rows[0]["studentname"].ToString();
                    srem1.Text = ds1.Tables[0].Rows[0]["semail"].ToString();
                    srnm2.Text = ds1.Tables[0].Rows[1]["studentname"].ToString();
                    srem2.Text = ds1.Tables[0].Rows[1]["semail"].ToString();
                    srnm3.Text = ds1.Tables[0].Rows[2]["studentname"].ToString();
                    srem3.Text = ds1.Tables[0].Rows[2]["semail"].ToString();
                }

                con.Close();
            }
        }
    }
}