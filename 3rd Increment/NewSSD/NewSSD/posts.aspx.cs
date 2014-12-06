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
    public partial class posts : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ApplicationServices"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminsess"] == null)
                Response.Redirect("admin.aspx");
            else
            {
                erdis.Visible = false;
                erf.Visible = false;
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
                generatecontacttable();
            }
        }
        public void generatecontacttable()
        {
            DataSet ds = new DataSet();
            con.Open();
            string srtquery = "SELECT postauthor,posttitle,postcategory,postdate,poststatus FROM posttable";
            SqlCommand cmd = new SqlCommand(srtquery, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            int x = ds.Tables[0].Rows.Count;
            int rowcnt = x;
            int rowcur;
            int cellcnt = 7;
            int cellcur;
            for (rowcur = 1; rowcur <= rowcnt; rowcur++)
            {
                HtmlTableRow trow = new HtmlTableRow();
                t1.Rows.Add(trow);
                for (cellcur = 1; cellcur <= cellcnt; cellcur++)
                {
                    HtmlTableCell tcell = new HtmlTableCell();
                    if (cellcur == 1)
                    {
                        CheckBox cbid = new CheckBox();
                        cbid.ID = "" + rowcur + cellcur;
                        tcell.Controls.Add(cbid);
                        trow.Controls.Add(tcell);
                    }
                    else if (cellcur == 2)
                    {
                        TextBox tb = new TextBox();
                        tb.ID = "" + rowcur + cellcur;
                        tb.ReadOnly = true;
                        tb.BorderWidth = new System.Web.UI.WebControls.Unit("0px");
                        tcell.Controls.Add(tb);
                        tb.Text = ds.Tables[0].Rows[rowcur - 1]["postauthor"].ToString();
                        trow.Cells.Add(tcell);
                    }
                    else if (cellcur == 3)
                    {
                        TextBox tb2 = new TextBox();
                        tb2.ID = "" + rowcur + cellcur;
                        tb2.ReadOnly = true;
                        tb2.BorderWidth = new System.Web.UI.WebControls.Unit("0px");
                        tcell.Controls.Add(tb2);
                        tb2.Text = ds.Tables[0].Rows[rowcur - 1]["posttitle"].ToString();
                        trow.Cells.Add(tcell);
                    }
                    else if (cellcur == 4)
                    {
                        TextBox tb1 = new TextBox();
                        tb1.ID = "" + rowcur + cellcur;
                        tb1.ReadOnly = true;
                        tb1.BorderWidth = new System.Web.UI.WebControls.Unit("0px");
                        tcell.Controls.Add(tb1);
                        tb1.Text = ds.Tables[0].Rows[rowcur - 1]["postcategory"].ToString();
                        trow.Cells.Add(tcell);
                    }
                    else if (cellcur == 5)
                    {
                        tcell.ID = "" + rowcur + cellcur;
                        tcell.InnerText = ds.Tables[0].Rows[rowcur - 1]["postdate"].ToString();
                        trow.Cells.Add(tcell);
                    }
                    else if (cellcur == 6)
                    {
                        tcell.ID = "" + rowcur + cellcur;
                        tcell.InnerText = ds.Tables[0].Rows[rowcur - 1]["poststatus"].ToString();
                        trow.Cells.Add(tcell);
                    }
                    else
                    {
                        
                        ImageButton b2 = new ImageButton();
                        
                        b2.ID = "" + rowcur + cellcur;
                        //b2.CssClass = "fa fa-trash-o"; b2.CssClass = "btn btn-danger btn-xs";
                        b2.ImageUrl = "/Images/del.jpg";
                        b2.Width = new System.Web.UI.WebControls.Unit("20px");
                        b2.Height = new System.Web.UI.WebControls.Unit("20px");
                        b2.Click += new System.Web.UI.ImageClickEventHandler(deniedclick);

                        
                        tcell.Controls.Add(b2);
                        trow.Controls.Add(tcell);
                    }
                }
                t1.Controls.Add(trow);
            }
            con.Close();
            
            
        }
        protected void deniedclick(object sender, EventArgs e)
        {
            ImageButton im = (ImageButton)sender;
            int a = Convert.ToInt32(im.ID);
            string ssid;

            if (Request.Form[Convert.ToString(a - 6)] != null)
            {
                ssid = Request.Form[Convert.ToString(a - 4)];
                erdis.Visible = false;
                //Response.Write(cb.ID + " " + cb.Checked + a +ssid+ "<br />");

                con.Open();
                DataSet ds5 = new DataSet();
                string strquery5 = " UPDATE posttable SET poststatus='deleted' WHERE posttitle='"+ssid+"'";
                SqlCommand cmd5 = new SqlCommand(strquery5, con);
                SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
                da5.Fill(ds5);
                con.Close();
                //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "s", "<script>alert('Student Approved Successfully ')</script>", false);

                
                Response.Redirect(Request.RawUrl);
                

            }
            else
                erdis.Visible = true;
        }


        protected void soclick(object sender, EventArgs e)
        {
            Session["adminsess"] = null;
            Response.Redirect("admin.aspx");
        }
        protected void pubclick(object sender, EventArgs e)
        {
            string a = title.Value;
            string b = catdd.Value;
            string c = pcon.Value;
            DateTime d = new DateTime();
            string dd = DateTime.Today.ToString("M/d/yyyy");
            string ss = "published";
            if (a != null && c != null)
            {
                DataSet ds = new DataSet();
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into posttable values('Alexis','" + a + "','" + b + "','" + c + "','" + dd + "','" + ss + "')", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "s", "<script>alert('Your Post was Published')</script>", false);
                title.Value = "";
                catdd.Value = "";
                pcon.Value = "";
                Response.Redirect(Request.RawUrl);
            }
            else
                erf.Visible = true;
        }
        protected void traclick(object sender, EventArgs e)
        {
            title.Value = "";
            pcon.Value = "";
            catdd.Value = "";
        }
    }
}