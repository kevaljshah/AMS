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
    static string page_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = business_function.page_detail(Convert.ToString(Request.Url.LocalPath));
            if (ds.Tables[0].Rows.Count > 0)
            {
                page_id = ds.Tables[0].Rows[0]["page_id"].ToString();
            }
            tag_function.label_bind(lbl_name, page_id);
            tag_function.label_bind(lbl_gr_no, page_id);
            tag_function.label_bind(lbl_gender, page_id);
            tag_function.label_bind(lbl_program, page_id);
            tag_function.label_bind(lbl_passing_year, page_id);
            tag_function.label_bind(lbl_roll_no, page_id);
            tag_function.label_bind(lbl_division, page_id);
            tag_function.label_bind(lbl_stream, page_id);
            tag_function.label_bind(lbl_campus, page_id);
            tag_function.label_bind(lbl_dob, page_id);
            tag_function.label_bind(lbl_relation_status, page_id);
            tag_function.label_bind(lbl_conpany_name, page_id);
            tag_function.label_bind(lbl_designation, page_id);
            tag_function.label_bind(lbl_email, page_id);
            tag_function.label_bind(lbl_mobile, page_id);
            tag_function.label_bind(lbl_landline, page_id);
            tag_function.label_bind(lbl_country, page_id);
            tag_function.label_bind(lbl_line1, page_id);
            tag_function.label_bind(lbl_line2, page_id);
            tag_function.label_bind(lbl_city, page_id);
            tag_function.label_bind(lbl_state, page_id);
            tag_function.label_bind(lbl_pincode, page_id);

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
            tag_function.watermark(wm_country);
            tag_function.watermark(wm_dob);

            tag_function.btn_bind(btn_add, page_id);
        }
    }

    protected void ddl_program_TextChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            tag_function.ddl_bind_selected_value(ddl_stream, ddl_program.SelectedValue);
            rfv_stream.InitialValue = ddl_stream.SelectedValue;
        }
    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = business_function.register_member(txt_first_name.Text, txt_middle_name.Text, txt_last_name.Text, txt_gr_no.Text, txt_roll_no.Text, ddl_gender.SelectedItem.Text, ddl_division.SelectedItem.Text,
            ddl_program.SelectedItem.Text, ddl_stream.SelectedItem.Text, ddl_passing_year.SelectedItem.Text, ddl_campus.SelectedItem.Text, txt_dob.Text, ddl_relationship_status.SelectedItem.Text, txt_company_name.Text,
            txt_designation.Text, txt_email.Text, txt_mobile.Text, txt_landline.Text, txt_country.Text, txt_line1.Text, txt_line2.Text, txt_city.Text, txt_state.Text, txt_pincode.Text);
        if (ds.Tables.Count == 2)
        {
            Table1.Visible = false;
            Table9.Visible = true;
        }
        else
        {
            Table1.Visible = false;
            Table10.Visible = true;
        }
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Members/Add_Member.aspx");
    }
}