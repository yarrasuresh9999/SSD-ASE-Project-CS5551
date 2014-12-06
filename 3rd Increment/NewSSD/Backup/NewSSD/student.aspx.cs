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
using System.Net.Mail;
using System.Net;

namespace NewSSD
{
    public partial class student : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ApplicationServices"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void loginsubmitbut(object sender, EventArgs e)
        {
            string l = slid.Text;
            string p = slpw.Text;
            DataSet ds = new DataSet();
            con.Open();
            string srtquery = "SELECT studentid,spass,sstatus FROM studenttable WHERE studentid='" + l + "' and spass='" + p + "'";
            SqlCommand cmd = new SqlCommand(srtquery, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            int x = ds.Tables[0].Rows.Count;
            
            if (x > 0)
            {
                string ss = ds.Tables[0].Rows[0]["sstatus"].ToString();
                if (ss == "approved")
                {
                    Session["usersess"] = l;
                    Response.Redirect("studenthome.aspx");
                }
                else
                {
                    ermm.Visible = true;
                    ermsg.Visible = false;
                }
            }
            else
            {
                ermsg.Visible = true;
                ermm.Visible = false;
                slid.Text = "";
                
            }
        }
        protected void regsubmitbut(object sender, EventArgs e)
        {
            string a = regsid.Text;
            string b = regspw.Text;
            string c = fname.Text +" "+ lname.Text;
            string d = regemail.Text;
            string ee = regph.Text;
            string f = addr.Text;
            string g = "pending";
            DataSet dc = new DataSet();
            con.Open();
            string cmp1 = " select studentid from studenttable where studentid='" + a + "'";
            SqlCommand cmd1 = new SqlCommand(cmp1, con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);          
            da1.Fill(dc);
            int cmp11 = dc.Tables[0].Rows.Count;
            con.Close();
            if (cmp11 > 0)
            {

                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('The Entered Student ID was already Registered or Request is in pending')</script>", false);
                regsid.Text = "";
            }
            else
            {

                DataSet ds = new DataSet();
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into studenttable values('" + a + "','" + b + "','" + c + "','" + d + "','" + ee + "','" + f + "','" + g + "')", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "s", "<script>alert('Your Request was Submitted, Administrator will check your details and Approves your request. Thank You ....')</script>", false);
                regsid.Text = "";
                fname.Text = ""; lname.Text = "";
                regemail.Text = "";
                regph.Text = "";
                addr.Text = "";

                MailMessage mm = new MailMessage("umkckcbancs@gmail.com", d);

                mm.Subject = "No Reply, Conformation";
                string body = "Hello " + c + ",";
                body += "<br /><br />We Appriciate your time, Thank you for registering with us, ";
                body += "<br />Currently your request is in Hold, Administrator will check your details and then Approves it, Soon you will get a mail from Administrator about your Status ";
                body += "<br /><br />Thanks";
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("umkckcbancs@gmail.com", "umkckcbancs1");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }
        }

        protected void msgsub(object sender, EventArgs e)
        {

            string x = nn.Text;
            string y = cem.Text;
            string z = cmsg.Text;
            string zz = "unread";
                DataSet ds = new DataSet();
                con.Open();
                //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "s", "<script>alert('fgjfj.')</script>", false);
               // String strcmd = "insert into contacttable values('" + x + "','" + y + "','" + z + "')";
                SqlCommand cmd = new SqlCommand("insert into contacttable values('" + x + "','" + y + "','" + z + "','"+zz+"')", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "s", "<script>alert('Your Message was Submitted, Someone will be get back to you. Thank You ....')</script>", false);
                nn.Text = "";
                cem.Text = "";
                cmsg.Text = "";
                
        }
    }
}