using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CN.Tags;
using System.Data;
using CN.Business;
using System.IO;

public partial class Members_Add_Member : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tag_function.ddl_bind(ddl_gender);
            rfv_gender.InitialValue = ddl_gender.SelectedValue;
            tag_function.ddl_bind(ddl_program);
            rfv_program.InitialValue = ddl_program.SelectedValue;
            tag_function.ddl_bind(ddl_campus);
            rfv_campus.InitialValue = ddl_campus.SelectedValue;
            tag_function.ddl_bind(ddl_stream);
            rfv_stream.InitialValue = ddl_stream.SelectedValue;
            tag_function.ddl_bind(ddl_passing_year);
            rfv_passing_year.InitialValue = ddl_passing_year.SelectedValue;
            tag_function.ddl_bind(ddl_division);
            rfv_division.InitialValue = ddl_division.SelectedValue;
            tag_function.ddl_bind(ddl_relationship_status);
            tag_function.ddl_bind(ddl_country);

            tag_function.watermark(wm_first_name);
            tag_function.watermark(wm_middle_name);
            tag_function.watermark(wm_last_name);
            tag_function.watermark(wm_gr_no);
            tag_function.watermark(wm_roll_no);
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
            tag_function.watermark(wm_dob);
            tag_function.watermark(wm_country_code);
            ce_dob.EndDate = DateTime.Today.AddYears(-14);
        }
    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = business_function.add_member(txt_first_name.Text, txt_middle_name.Text, txt_last_name.Text, txt_gr_no.Text, txt_roll_no.Text, ddl_gender.SelectedValue.ToString(), ddl_division.SelectedValue.ToString(),
            ddl_program.SelectedValue.ToString(), ddl_stream.SelectedValue.ToString(), ddl_passing_year.SelectedValue.ToString(), ddl_campus.SelectedValue.ToString(), txt_dob.Text, ddl_relationship_status.SelectedValue.ToString(), txt_company_name.Text,
            txt_designation.Text, txt_email.Text, txt_country_code + "" + txt_mobile.Text, txt_landline.Text, ddl_country.SelectedValue.ToString(), txt_line1.Text, txt_line2.Text, txt_city.Text, txt_state.Text, txt_pincode.Text);
        if (ds.Tables.Count > 0)
        {
            if (ds.Tables[0].Columns[0].ColumnName == "std_gr_no")
            {
                lbl_error.Visible = true;
                lbl_error.Text = "GR NO. already exists";
            }
            else if (ds.Tables[0].Columns[0].ColumnName == "email")
            {
                lbl_error.Visible = true;
                lbl_error.Text = "Email-id already exists";
            }
            else if (ds.Tables[0].Columns[0].ColumnName == "mobile_no")
            {
                lbl_error.Visible = true;
                lbl_error.Text = "Mobile Number already exists";
            }
            else if (ds.Tables[0].Columns[0].ColumnName == "std_id")
            {
                tbl_add_user.Visible = false;
                tbl_user_added.Visible = true;
            }
        }
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Response.Redirect("~/Members/Add_Member.aspx");
        }
    }
    protected void ddl_country_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (ddl_country.SelectedIndex.ToString() != "0")
            {
                tag_function.ddl_bind_selected_value_textbox(txt_country_code, ddl_country.SelectedValue);
            }
        }
    }
    protected void ddl_program_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (ddl_program.SelectedIndex.ToString() != "0")
            {
                tag_function.ddl_bind_selected_value(ddl_stream, ddl_program.SelectedValue);
                rfv_stream.InitialValue = ddl_stream.SelectedValue;
            }
        }
    }
}