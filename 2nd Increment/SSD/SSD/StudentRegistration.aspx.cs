using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.IO;
using System.Net;
using System.Collections.Generic;
using System.IO;
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
using System.Text;

namespace SSD
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regsub(object sender, EventArgs e)
        {
           // ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('suresh')</script>", false);

            try
            {
                string posturl = "http://kc-sce-cs551.kc.umkc.edu/aspnet_client/Group3/ProjectSSD/SSDRestService/SSDRestService/Service1.svc/insertInfo/";
                string id = sid.Text;
                string pas = regpw.Text;
                string nam = sname.Text;
                string mob = smob.Text;
                string email = semail.Text;
                string addre = sadd.Text;
                string st = "pending";
                string finalurl = posturl + id + "/" + pas + "/" + nam + "/" + mob + "/" + email + "/" + addre + "/" + st;
                HttpWebRequest req = WebRequest.Create(finalurl) as HttpWebRequest;
                req.Method = "POST";
                req.ContentType = "application/x-www-form-urlencoded";
                req.KeepAlive = false;
                req.Timeout = 5000;
                Stream poststresm = req.GetRequestStream();
                poststresm.Close();
                
                HttpWebResponse res = req.GetResponse() as HttpWebResponse;
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('suresh')</script>", false);
                StreamReader red = new StreamReader(res.GetResponseStream(), Encoding.UTF8);
                Console.WriteLine(res);
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert(res)</script>", false);
                Console.WriteLine(red.ReadToEnd().ToString());
                Console.ReadKey();
            }
            catch (Exception ex)
            {
                
                Console.WriteLine(ex);
            }
        }
    }
}