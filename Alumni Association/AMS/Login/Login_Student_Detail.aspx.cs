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
    static string std_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["std_id"] != null)
            {
                std_id = Session["std_id"].ToString();
                DataSet ds = new DataSet();
                ds = business_function.login_student_val(std_id);
                if (ds.Tables.Count > 0)
                {
                    lbl_name_val.Text = ds.Tables[0].Rows[0]["std_first_name"].ToString() + " " + ds.Tables[0].Rows[0]["std_middle_name"].ToString() + " " + ds.Tables[0].Rows[0]["std_last_name"].ToString();
                }
                tag_function.ddl_bind(ddl_gender);
                rfv_gender.InitialValue = ddl_gender.SelectedValue;
                tag_function.ddl_bind(ddl_relationship_status);

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
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = business_function.login_student_detail(std_id, ddl_gender.SelectedItem.ToString(), txt_email.Text, txt_mobile.Text, txt_landline.Text, txt_dob.Text, txt_country.Text, txt_line1.Text, txt_line2.Text, txt_city.Text, txt_state.Text, txt_pincode.Text, ddl_relationship_status.SelectedItem.ToString(), txt_company_name.Text, txt_designation.Text);
            if (ds.Tables.Count > 0)
            {
                if (ds.Tables[0].Rows[0][0].ToString() == "2")
                {
                    Response.Redirect("~/Login/First_Login.aspx");
                }
            }
            else
            {
                lbl_error.Text = "Email or mobile already exists";
            }
        }
    }
}