using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CN.Business;

public partial class Members_Member_Detail : System.Web.UI.Page
{
    static string std_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["std_id"] == null)
        {
            Response.Redirect("~/Members/View_Members.aspx");
        }
        else
        {
            std_id = Request.QueryString["std_id"].ToString();
        }
        DataSet ds = new DataSet();
        ds = business_function.member_detail(std_id);
        if (ds.Tables[0].Rows.Count > 0)
        {
            string dob = ds.Tables[0].Rows[0]["std_dob"].ToString() ;
            lbl_name_val.Text = ds.Tables[0].Rows[0]["std_first_name"].ToString() + " " + ds.Tables[0].Rows[0]["std_middle_name"].ToString() + " " + ds.Tables[0].Rows[0]["std_last_name"].ToString();
            lbl_gr_no_val.Text = ds.Tables[0].Rows[0]["std_gr_no"].ToString();
            lbl_roll_no_val.Text = ds.Tables[0].Rows[0]["std_roll_no"].ToString();
            lbl_gender_val.Text = ds.Tables[0].Rows[0]["std_gender"].ToString();
            lbl_div_value.Text = ds.Tables[0].Rows[0]["std_division"].ToString();
            lbl_program_value.Text = ds.Tables[0].Rows[0]["std_program"].ToString();
            lbl_stream_val.Text = ds.Tables[0].Rows[0]["std_stream"].ToString();
            lbl_passing_year_val.Text = ds.Tables[0].Rows[0]["std_passing_year"].ToString();
            lbl_campus_val.Text = ds.Tables[0].Rows[0]["std_campus"].ToString();
            if (dob != "")
            {
                if (dob.Remove(4).ToString() == "1900")
                {
                    dob = "";
                }
            }
            lbl_birthdate_val.Text = dob;
            lbl_relationship_status_val.Text = ds.Tables[0].Rows[0]["std_relationship_status"].ToString();
            lbl_company_name_val.Text = ds.Tables[0].Rows[0]["std_company_name"].ToString();
            lbl_designation_val.Text = ds.Tables[0].Rows[0]["std_designaton"].ToString();
            lbl_email_val.Text = ds.Tables[0].Rows[0]["std_email"].ToString();
            lbl_mobile_val.Text = ds.Tables[0].Rows[0]["std_mobile_no"].ToString();
            lbl_landline_val.Text = ds.Tables[0].Rows[0]["std_landline"].ToString();
            lbl_country_val.Text = ds.Tables[0].Rows[0]["std_country"].ToString();
            lbl_address_val.Text = ds.Tables[0].Rows[0]["std_address_line1"].ToString() +" "+ ds.Tables[0].Rows[0]["std_address_line2"].ToString();
            lbl_city_val.Text = ds.Tables[0].Rows[0]["std_city"].ToString();
            lbl_state_val.Text = ds.Tables[0].Rows[0]["std_state"].ToString();
            lbl_pincode_val.Text = ds.Tables[0].Rows[0]["std_pincode"].ToString();
        }
        else
        {
            Response.Redirect("~/Members/View_Members.aspx");
        }
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Members/View_Members.aspx");
    }
}