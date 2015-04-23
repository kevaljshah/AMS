using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CN.Business;
using CN.Tags;

public partial class Login_Login_Student_Detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["std_id"] != null)
            {
                tag_function.ddl_bind(ddl_gender);
                rfv_gender.InitialValue = ddl_gender.SelectedValue;
                tag_function.ddl_bind(ddl_relationship_status);
                rfv_relationship_status.InitialValue = ddl_relationship_status.SelectedValue;
                tag_function.ddl_bind(ddl_country);
                rfv_country.InitialValue = ddl_country.SelectedValue;

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
                DataSet ds = new DataSet();
                ds = business_function.student_val(Session["std_id"].ToString());
                if (ds.Tables.Count > 0)
                {
                    lbl_name_val.Text = ds.Tables[0].Rows[0]["std_first_name"].ToString() + " " + ds.Tables[0].Rows[0]["std_middle_name"].ToString() + " " + ds.Tables[0].Rows[0]["std_last_name"].ToString();
                    ddl_gender.SelectedValue = ds.Tables[0].Rows[0]["std_gender"].ToString();
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
                }
            }
            else
            {
                Response.Redirect("~/mobile/Login/Login.aspx");
            }
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = business_function.login_student_detail(Session["std_id"].ToString(), ddl_gender.SelectedValue.ToString(), txt_email.Text, txt_country_code.Text + "" + txt_mobile.Text, txt_landline.Text, txt_dob.Text, ddl_country.SelectedValue.ToString(), txt_line1.Text, txt_line2.Text, txt_city.Text, txt_state.Text, txt_pincode.Text, ddl_relationship_status.SelectedValue.ToString(), txt_company_name.Text, txt_designation.Text);
            if (ds.Tables.Count > 0)
            {
                if (ds.Tables.Count == 1)
                {
                    lbl_error.Visible = true;
                    lbl_error.Text = "Email-ID already exists";
                }
                else if (ds.Tables.Count == 2)
                {
                    lbl_error.Visible = true;
                    lbl_error.Text = "Mobile Number already exists";
                }
                else if (ds.Tables.Count == 3)
                {
                    if (ds.Tables[2].Rows[0]["std_registered"].ToString() == "2")
                    {
                        Response.Redirect("~/mobile/Login/First_Login.aspx");
                    }
                }
            }
            else
            {
                lbl_error.Visible = true;
                lbl_error.Text = "Email or mobile already exists";
            }
        }
    }
    protected void ddl_country_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (ddl_country.SelectedIndex.ToString() != "0")
            {
                tag_function.ddl_bind_selected_value_textbox(txt_country_code, ddl_country.SelectedValue);
                txt_mobile.Text = "";
            }
        }
    }
}