using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CN.Tags;
using System.Data;
using CN.Business;

public partial class Members_Add_Member : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //txt_current_password.Attributes.Add("oninput", "password(this)");
            txt_new_password.Attributes.Add("oninput", "password(this)");
            txt_confirm_password.Attributes.Add("oninput", "password(this)");
            tag_function.ddl_bind(ddl_relationship_status);
            tag_function.ddl_bind(ddl_gender);
            rfv_gender.InitialValue = ddl_gender.SelectedValue;
            tag_function.ddl_bind(ddl_country);
            rfv_country.InitialValue = ddl_country.SelectedValue;

            tag_function.watermark(wm_first_name);
            tag_function.watermark(wm_middle_name);
            tag_function.watermark(wm_last_name);
            tag_function.watermark(wm_dob);
            tag_function.watermark(wm_company_name);
            tag_function.watermark(wm_designation);
            tag_function.watermark(wm_email);
            tag_function.watermark(wm_mobile);
            tag_function.watermark(wm_landline);
            tag_function.watermark(wm_line1);
            tag_function.watermark(wm_line2);
            tag_function.watermark(wm_city);
            tag_function.watermark(wm_state);
            tag_function.watermark(wm_pincode);
            tag_function.watermark(wm_username);
            //tag_function.watermark(wm_current_password);
            tag_function.watermark(wm_new_password);
            tag_function.watermark(wm_confirm_password);
            tag_function.watermark(wm_country_code);
            ce_dob.EndDate = DateTime.Today.AddYears(-14);
            retrieve_student_detials(Session["std_id"].ToString());
        }
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            accordian_account_detail.SelectedIndex = -1;
        }
    }
    protected void btn_personal_details_save_Click(object sender, EventArgs e)
    {
        if (IsPostBack && accordian_account_detail.SelectedIndex == 0)
        {
            DataSet ds = new DataSet();
            ds = business_function.student_personal_detail(Session["std_id"].ToString(), txt_first_name.Text, txt_middle_name.Text, txt_last_name.Text, txt_dob.Text, ddl_gender.SelectedValue.ToString(), ddl_relationship_status.SelectedValue.ToString(), txt_company_name.Text, txt_designation.Text);
            if (ds.Tables.Count > 0)
            {
                retrieve_student_detials(Session["std_id"].ToString());
                lbl_personal_details_error.Text = "Changes Made";
            }
        }
    }

    private void retrieve_student_detials(string std_id)
    {
        DataSet ds = new DataSet();
        ds = business_function.change_student_detail_val(Session["std_id"].ToString());
        if (ds.Tables.Count > 0)
        {
            lbl_personal_details_val.Text = ds.Tables[0].Rows[0]["std_first_name"].ToString() + " " + ds.Tables[0].Rows[0]["std_middle_name"].ToString() + " " + ds.Tables[0].Rows[0]["std_last_name"].ToString();
            lbl_contact_details_val.Text = ds.Tables[0].Rows[0]["std_email"].ToString();
            lbl_header_username_val.Text = ds.Tables[0].Rows[0]["std_username"].ToString();
            txt_first_name.Text = ds.Tables[0].Rows[0]["std_first_name"].ToString();
            txt_middle_name.Text = ds.Tables[0].Rows[0]["std_middle_name"].ToString();
            txt_last_name.Text = ds.Tables[0].Rows[0]["std_last_name"].ToString();
            ddl_gender.SelectedValue = ds.Tables[0].Rows[0]["std_gender"].ToString();
            ddl_relationship_status.SelectedValue = ds.Tables[0].Rows[0]["std_relationship_status"].ToString();
            txt_email.Text = ds.Tables[0].Rows[0]["std_email"].ToString();
            txt_country_code.Text = ds.Tables[0].Rows[0]["std_mobile_no"].ToString().Substring(0, ds.Tables[0].Rows[0]["std_mobile_no"].ToString().Length - 10).ToString();
            txt_mobile.Text = ds.Tables[0].Rows[0]["std_mobile_no"].ToString().Substring(ds.Tables[0].Rows[0]["std_mobile_no"].ToString().Length - 10, 10).ToString();
            txt_landline.Text = ds.Tables[0].Rows[0]["std_landline"].ToString();
            txt_dob.Text = ds.Tables[0].Rows[0]["std_dob"].ToString();
            ddl_country.SelectedValue = ds.Tables[0].Rows[0]["std_country"].ToString();
            lbl_mailing_address_val.Text = ds.Tables[0].Rows[0]["std_city"].ToString() + ", " + ddl_country.SelectedItem.ToString();
            txt_line1.Text = ds.Tables[0].Rows[0]["std_address_line1"].ToString();
            txt_line2.Text = ds.Tables[0].Rows[0]["std_address_line2"].ToString();
            txt_city.Text = ds.Tables[0].Rows[0]["std_city"].ToString();
            txt_state.Text = ds.Tables[0].Rows[0]["std_state"].ToString();
            txt_pincode.Text = ds.Tables[0].Rows[0]["std_pincode"].ToString();
            txt_company_name.Text = ds.Tables[0].Rows[0]["std_company_name"].ToString();
            txt_designation.Text = ds.Tables[0].Rows[0]["std_designaton"].ToString();
            ce_dob.EndDate = DateTime.Today.AddYears(-14);
        }
    }
    protected void btn_mailing_address_save_Click(object sender, EventArgs e)
    {
        if (IsPostBack && accordian_account_detail.SelectedIndex == 2)
        {
            DataSet ds = new DataSet();
            ds = business_function.student_mailing_detail(Session["std_id"].ToString(), ddl_country.SelectedValue.ToString(), txt_line1.Text, txt_line2.Text, txt_city.Text, txt_state.Text, txt_pincode.Text);
            if (ds.Tables.Count > 0)
            {
                retrieve_student_detials(Session["std_id"].ToString());
                lbl_mailing_address_error.Text = "Changes Made";
            }
        }
    }
    protected void btn_contact_details_save_Click(object sender, EventArgs e)
    {
        if (IsPostBack && accordian_account_detail.SelectedIndex == 1)
        {
            DataSet ds = new DataSet();
            ds = business_function.student_contact_detail(Session["std_id"].ToString(), txt_email.Text, txt_country_code.Text + "-" + txt_mobile.Text, txt_landline.Text);
            if (ds.Tables.Count > 0)
            {
                if (ds.Tables.Count == 1)
                {
                    lbl_contact_details_error.Text = "Email-ID already exists";
                }
                else if (ds.Tables.Count == 2)
                {
                    lbl_contact_details_error.Text = "Mobile Number already exists";
                }
                else if (ds.Tables.Count == 3)
                {
                    lbl_contact_details_error.Text = "Changes Made";

                }
            }
        }
    }
    protected void btn_username_save_Click(object sender, EventArgs e)
    {
        if (IsPostBack && accordian_account_detail.SelectedIndex == 3)
        {
            DataSet ds = new DataSet();
            ds = business_function.student_username_detail(Session["std_id"].ToString(), txt_username.Text);
            if (ds.Tables.Count == 1)
            {
                retrieve_student_detials(Session["std_id"].ToString());
                lbl_username_error.Text = "Changes Made";
            }
            else
            {
                lbl_username_error.Text = "Username already exists";
            }
        }
    }
    protected void btn_password_save_Click(object sender, EventArgs e)
    {
        if (IsPostBack && accordian_account_detail.SelectedIndex == 4)
        {
            DataSet ds = new DataSet();
            ds = business_function.student_password_detail(Session["std_id"].ToString(), txt_current_password.Value, txt_new_password.Text);
            if (ds.Tables.Count == 0)
            {
                lbl_password_error.Text = "Current and new password can not be same";
            }
            else if (ds.Tables.Count == 1)
            {
                lbl_password_error.Text = "Incorrect current password";
            }
            else if (ds.Tables.Count == 2)
            {
                retrieve_student_detials(Session["std_id"].ToString());
                lbl_password_error.Text = "Changes Made";
            }
        }
    }
    protected void txt_password_PreRender(object sender, EventArgs e)
    {
        txt_current_password.Value = "";
        txt_new_password.Text = "";
        txt_confirm_password.Text = "";
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/mobile/Home/Default.aspx");
    }
}