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
    public partial class contactmsg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ApplicationServices"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminsess"] == null)
                Response.Redirect("admin.aspx");
            else
            {
                erdis.Visible = false;
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
                generatemsgtable();

            }
        }

        public void generatemsgtable()
        {
            DataSet ds = new DataSet();
            con.Open();
            string srtquery = "SELECT contactname,contactemail,contactsubject,status FROM contacttable ";
            SqlCommand cmd = new SqlCommand(srtquery, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            int x = ds.Tables[0].Rows.Count;
            int rowcnt = x;
            int rowcur;
            int cellcnt = 6;
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
                        tb.Text = ds.Tables[0].Rows[rowcur - 1]["contactname"].ToString();
                        trow.Cells.Add(tcell);
                    }
                    else if (cellcur == 3)
                    {
                        TextBox tb2 = new TextBox();
                        tb2.ID = "" + rowcur + cellcur;
                        tb2.ReadOnly = true;
                        tb2.BorderWidth = new System.Web.UI.WebControls.Unit("0px");
                        tcell.Controls.Add(tb2);
                        tb2.Text = ds.Tables[0].Rows[rowcur - 1]["contactemail"].ToString();
                        trow.Cells.Add(tcell);
                    }
                    else if (cellcur == 4)
                    {
                        TextBox tb1 = new TextBox();
                        tb1.ID = "" + rowcur + cellcur;
                        tb1.ReadOnly = true;
                        tb1.BorderWidth = new System.Web.UI.WebControls.Unit("0px");
                        tcell.Controls.Add(tb1);
                        tb1.Text = ds.Tables[0].Rows[rowcur - 1]["contactsubject"].ToString();
                        trow.Cells.Add(tcell);
                    }
                    else if (cellcur == 5)
                    {
                        tcell.ID = "" + rowcur + cellcur;
                        tcell.InnerText = ds.Tables[0].Rows[rowcur - 1]["status"].ToString();
                        trow.Cells.Add(tcell);
                    }
                    else
                    {
                        ImageButton b1 = new ImageButton();
                        ImageButton b2 = new ImageButton();
                        b1.ID = "" + rowcur + cellcur;
                        //b1.CssClass = "fa fa-user"; b1.CssClass = "btn btn-info btn-xs";
                        b1.ImageUrl = "/Images/erm.png";
                        b1.Width = new System.Web.UI.WebControls.Unit("20px");
                        b1.Height = new System.Web.UI.WebControls.Unit("20px");
                        b1.Click += new System.Web.UI.ImageClickEventHandler(okbuttonclick);

                        b2.ID = "0" + rowcur + cellcur;
                        //b2.CssClass = "fa fa-trash-o"; b2.CssClass = "btn btn-danger btn-xs";
                        b2.ImageUrl = "/Images/del.jpg";
                        b2.Width = new System.Web.UI.WebControls.Unit("20px");
                        b2.Height = new System.Web.UI.WebControls.Unit("20px");
                        b2.Click += new System.Web.UI.ImageClickEventHandler(deniedclick);

                        tcell.Controls.Add(b1);
                        tcell.Controls.Add(b2);
                        trow.Controls.Add(tcell);
                    }
                }
                t1.Controls.Add(trow);
            }
            con.Close();
            
        }
        protected void okbuttonclick(object sender, EventArgs e)
        {
            ImageButton im = (ImageButton)sender;
            int a = Convert.ToInt32(im.ID);
            string ssid;
            if (Request.Form[Convert.ToString(a - 5)] != null)
            {

                ssid = Request.Form[Convert.ToString(a - 3)];
                erdis.Visible = false;
                //Response.Write(cb.ID + " " + cb.Checked + a +ssid+ "<br />");

                con.Open();
                DataSet ds5 = new DataSet();
                string strquery5 = " UPDATE contacttable SET status='read' WHERE contactemail='" + ssid + "'";
                SqlCommand cmd5 = new SqlCommand(strquery5, con);
                SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
                da5.Fill(ds5);
                con.Close();
                //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "s", "<script>alert('Student Approved Successfully ')</script>", false);
                Response.Redirect(ssid);
                Response.Redirect(Request.RawUrl);
                susmsg.Visible = true;


            }
            else
                erdis.Visible = true; 

            
        }
        protected void deniedclick(object sender, EventArgs e)
        {
            ImageButton im = (ImageButton)sender;
            int a = Convert.ToInt32(im.ID);
            string ssid;

            if (Request.Form[Convert.ToString(a - 5)] != null)
            {
                ssid = Request.Form[Convert.ToString(a - 3)];
                erdis.Visible = false;
                //Response.Write(cb.ID + " " + cb.Checked + a +ssid+ "<br />");

                con.Open();
                DataSet ds5 = new DataSet();
                string strquery5 = " DELETE contacttable WHERE contactemail='" + ssid + "'";
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
    }
}