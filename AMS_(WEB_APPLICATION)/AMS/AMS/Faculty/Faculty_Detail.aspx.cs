using CN.Business;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_Faculty_Detail : System.Web.UI.Page
{
    static string fct_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["fct_id"] == null)
        {
            Response.Redirect("~/Faculty/View_Faculty.aspx");
        }
        else
        {
            fct_id = Request.QueryString["fct_id"].ToString();
        }
        DataSet ds = new DataSet();
        ds = business_function.faculty_detail(fct_id);
        if (ds.Tables[0].Rows.Count > 0)
        {
            profile_image.ImageUrl = "~/Handler/ImageHandler.ashx?fct_id=" + fct_id;
            lbl_name_val.Text = ds.Tables[0].Rows[0]["fct_name"].ToString();
            lbl_sap_id_val.Text = ds.Tables[0].Rows[0]["fct_sap_id"].ToString();
            lbl_department_val.Text = ds.Tables[0].Rows[0]["fct_department"].ToString();
            lbl_designation_val.Text = ds.Tables[0].Rows[0]["fct_designation"].ToString();
            lbl_domain_val.Text = ds.Tables[0].Rows[0]["fct_domain"].ToString();
            lbl_current_research_val.Text = ds.Tables[0].Rows[0]["fct_current_research"].ToString();
            lbl_email_val.Text = ds.Tables[0].Rows[0]["fct_email"].ToString();
            lbl_mobile_val.Text = ds.Tables[0].Rows[0]["fct_mobile"].ToString();
        }
        else
        {
            Response.Redirect("~/Faculty/View_Faculty.aspx");
        }
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Faculty/View_Faculty.aspx");
    }
}