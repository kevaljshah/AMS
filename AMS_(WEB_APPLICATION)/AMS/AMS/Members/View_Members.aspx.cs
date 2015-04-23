using CN.Business;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CN.Cryptography;

public partial class Members_View_Members : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (cryptography_function.decrypt(Request.QueryString["passing_year"]) != null && cryptography_function.decrypt(Request.QueryString["campus"]) != null && cryptography_function.decrypt(Request.QueryString["program"]) != null && cryptography_function.decrypt(Request.QueryString["stream"]) != null && cryptography_function.decrypt(Request.QueryString["registration_status"]) != null)
        {
            DataSet ds = new DataSet();
            ds = business_function.view_members_grid(cryptography_function.decrypt(Request.QueryString["passing_year"].ToString()), cryptography_function.decrypt(Request.QueryString["campus"].ToString()), cryptography_function.decrypt(Request.QueryString["program"].ToString()), cryptography_function.decrypt(Request.QueryString["stream"].ToString()), cryptography_function.decrypt(Request.QueryString["registration_status"].ToString()));
            gv_view_members.DataSource = ds.Tables[0];
            gv_view_members.DataBind();
        }
        else
        {
            Response.Redirect("~/Members/Search_Members.aspx");
        }

    }
    protected void gv_view_members_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_view_members.PageIndex = e.NewPageIndex;
        gv_view_members.DataBind();
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Response.Redirect("~/Members/Search_Members.aspx?passing_year=" + Request.QueryString["passing_year"].ToString() + "&campus=" + Request.QueryString["campus"].ToString() + "&program=" + Request.QueryString["program"].ToString() + "&stream=" + Request.QueryString["stream"].ToString() + "&registration_status=" + Request.QueryString["registration_status"].ToString());
        }
    }
    protected void btn_export_to_csv_Click(object sender, EventArgs e)
    {
        HttpContext csv = HttpContext.Current;
        csv.Response.Clear();
        csv.Response.ContentType = "text/csv";
        csv.Response.AddHeader("content-disposition", "attachment;filename=Member_Details.csv");
        DataSet ds = new DataSet();
        ds = business_function.view_members_grid(cryptography_function.decrypt(Request.QueryString["passing_year"].ToString()), cryptography_function.decrypt(Request.QueryString["campus"].ToString()), cryptography_function.decrypt(Request.QueryString["program"].ToString()), cryptography_function.decrypt(Request.QueryString["stream"].ToString()), cryptography_function.decrypt(Request.QueryString["registration_status"].ToString()));
        csv.Response.Write("SR NO,GR NO,FIRST NAME,MIDDLE NAME,LAST NAME,ROLL NO.,DIVISION,PROGRAM,STREAM,CAMPUS,PASSING YEAR,EMAIL,MOBILE NUMBER");
        csv.Response.Write(Environment.NewLine);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            csv.Response.Write(i + 1 + ",");
            for (int j = 1; j < 13; j++)
            {
                csv.Response.Write(ds.Tables[0].Rows[i][j].ToString() + ",");
            }
            csv.Response.Write(Environment.NewLine);
        }
        csv.Response.End();
    }
}