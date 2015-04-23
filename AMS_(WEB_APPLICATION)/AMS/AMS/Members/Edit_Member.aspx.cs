using CN.Business;
using CN.Tags;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Members_Edit_Member : System.Web.UI.Page
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
            rfv_country.InitialValue = ddl_country.SelectedValue;

            tag_function.watermark(wm_country_code);
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
            tag_function.watermark(wm_edit_member);
            ce_dob.EndDate = DateTime.Today.AddYears(-14);

        }
    }
    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string[] GetDetails(string prefixText, int count, string contextKey)
    {
        DataSet ds = business_function.edit_member_ace(prefixText);
        List<string> returnData = new List<string>();
        if (ds.Tables.Count > 0)
        {
            int view_count;
            if (ds.Tables[0].Rows.Count < count)
            {
                view_count = ds.Tables[0].Rows.Count;
            }
            else
                view_count = count;
            for (int i = 0; i < view_count; i++)
            {
                returnData.Add(AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(ds.Tables[0].Rows[i]["std_first_name"].ToString() + " " + ds.Tables[0].Rows[i]["std_middle_name"].ToString() + " " + ds.Tables[0].Rows[i]["std_last_name"].ToString() + " (" + ds.Tables[0].Rows[i]["std_gr_no"].ToString() + ")", ds.Tables[0].Rows[i]["std_id"].ToString()));
            }
        }
        return returnData.ToArray();
    }
    protected void txt_edit_member_TextChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (txt_edit_member.Text != "" && hf_edit_member.Value.ToString() != "")
            {
                lbl_edit_member_error.Visible = false;
                DataSet ds = new DataSet();
                ds = business_function.edit_member_page_student_val(hf_edit_member.Value.ToString());
                if (ds.Tables.Count > 0)
                {
                    txt_first_name.Text = ds.Tables[0].Rows[0]["std_first_name"].ToString();
                    txt_middle_name.Text = ds.Tables[0].Rows[0]["std_middle_name"].ToString();
                    txt_last_name.Text = ds.Tables[0].Rows[0]["std_last_name"].ToString();
                    txt_gr_no.Text = ds.Tables[0].Rows[0]["std_gr_no"].ToString();
                    ddl_gender.SelectedValue = ds.Tables[0].Rows[0]["std_gender"].ToString();
                    txt_roll_no.Text = ds.Tables[0].Rows[0]["std_roll_no"].ToString();
                    ddl_division.SelectedValue = ds.Tables[0].Rows[0]["std_division"].ToString();
                    ddl_program.SelectedValue = ds.Tables[0].Rows[0]["std_program"].ToString();
                    tag_function.ddl_bind_selected_value(ddl_stream, ddl_program.SelectedValue);
                    rfv_stream.InitialValue = ddl_stream.SelectedValue;
                    ddl_stream.SelectedValue = ds.Tables[0].Rows[0]["std_stream"].ToString();
                    ddl_passing_year.SelectedValue = ds.Tables[0].Rows[0]["std_passing_year"].ToString();
                    ddl_campus.SelectedValue = ds.Tables[0].Rows[0]["std_campus"].ToString();
                    ddl_relationship_status.SelectedValue = ds.Tables[0].Rows[0]["std_relationship_status"].ToString();
                    txt_email.Text = ds.Tables[0].Rows[0]["std_email"].ToString();
                    if (ds.Tables[0].Rows[0]["std_mobile_no"].ToString() != "")
                    {
                        txt_country_code.Text = ds.Tables[0].Rows[0]["std_mobile_no"].ToString().Substring(0, ds.Tables[0].Rows[0]["std_mobile_no"].ToString().Length - 10).ToString();
                        txt_mobile.Text = ds.Tables[0].Rows[0]["std_mobile_no"].ToString().Substring(ds.Tables[0].Rows[0]["std_mobile_no"].ToString().Length - 10, 10).ToString();
                    }
                    txt_landline.Text = ds.Tables[0].Rows[0]["std_landline"].ToString();
                    txt_dob.Text = ds.Tables[0].Rows[0]["std_dob"].ToString();
                    ddl_country.SelectedValue = ds.Tables[0].Rows[0]["std_country"].ToString();
                    txt_line1.Text = ds.Tables[0].Rows[0]["std_address_line1"].ToString();
                    txt_line2.Text = ds.Tables[0].Rows[0]["std_address_line2"].ToString();
                    txt_city.Text = ds.Tables[0].Rows[0]["std_city"].ToString();
                    txt_state.Text = ds.Tables[0].Rows[0]["std_state"].ToString();
                    txt_pincode.Text = ds.Tables[0].Rows[0]["std_pincode"].ToString();
                    txt_company_name.Text = ds.Tables[0].Rows[0]["std_company_name"].ToString();
                    txt_designation.Text = ds.Tables[0].Rows[0]["std_designaton"].ToString();
                    ce_dob.EndDate = DateTime.Today.AddYears(-14);
                    if (ds.Tables[0].Rows[0]["std_registered"].ToString() == "0")
                    {
                        rfv_dob.Enabled = true;
                        rfv_relationship_status.Enabled = true;
                        rfv_country.Enabled = true;
                        rfv_line1.Enabled = true;
                        rfv_city.Enabled = true;
                        rfv_state.Enabled = true;
                        rfv_pincode.Enabled = true;
                        rfv_email.Enabled = true;
                        rfv_country_code.Enabled = true;
                        rfv_mobile.Enabled = true;
                    }
                }
            }
            else
            {
                lbl_edit_member_error.Visible = false;
                lbl_edit_member_error.Text = "Please search a member to edit";

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
    protected void btn_save_changes_Click(object sender, EventArgs e)
    {
        if (IsPostBack && hf_edit_member.Value.ToString() != "")
        {
            DataSet ds = new DataSet();
            ds = business_function.edit_member_details(txt_first_name.Text, txt_middle_name.Text, txt_last_name.Text, txt_gr_no.Text, txt_roll_no.Text, ddl_gender.SelectedValue.ToString(), ddl_division.SelectedValue.ToString(),
                ddl_program.SelectedValue.ToString(), ddl_stream.SelectedValue.ToString(), ddl_passing_year.SelectedValue.ToString(), ddl_campus.SelectedValue.ToString(), txt_dob.Text, ddl_relationship_status.SelectedValue.ToString(), txt_company_name.Text,
                txt_designation.Text, txt_email.Text, txt_country_code.Text + "" + txt_mobile.Text, txt_landline.Text, ddl_country.SelectedValue.ToString(), txt_line1.Text, txt_line2.Text, txt_city.Text, txt_state.Text, txt_pincode.Text, hf_edit_member.Value.ToString());
            if (ds.Tables.Count > 0)
            {
                if (ds.Tables.Count == 1)
                {
                    lbl_error.Text = "GR No. Already exists";
                }
                else if (ds.Tables.Count == 2)
                {
                    lbl_error.Text = "Email Address already exists";
                }
                else if (ds.Tables.Count == 3)
                {
                    lbl_error.Text = "Mobile Number already exists";
                }
                else if (ds.Tables.Count == 4)
                {
                    tbl_edit_member.Visible = false;
                    tbl_changes_made.Visible = true;
                }
            }
        }
        else
        {
            lbl_error.Text = "Please search a member to edit";
        }
    }
    protected void btn_back_done_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Response.Redirect("~/Members/Edit_Member.aspx");
        }
    }
}