using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CN.Business;
using CN.Tags;

public partial class Login_Login_Faculty_Detail : System.Web.UI.Page
{
    static string fct_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tag_function.ddl_bind(ddl_title);
            rfv_title.InitialValue = ddl_title.SelectedValue;
            tag_function.ddl_bind(ddl_gender);
            rfv_gender.InitialValue = ddl_gender.SelectedValue;
            tag_function.ddl_bind(ddl_department);
            rfv_department.InitialValue = ddl_department.SelectedValue;

            tag_function.watermark(wm_email);
            tag_function.watermark(wm_mobile);
            tag_function.watermark(wm_domain);
            tag_function.watermark(wm_current_research);
            tag_function.watermark(wm_designation);

            if (Session["fct_id"] != null)
            {
                fct_id = Session["fct_id"].ToString();
                DataSet ds = new DataSet();
                ds = business_function.faculty_val(fct_id);
                if (ds.Tables.Count > 0)
                {
                    ddl_title.SelectedValue = ds.Tables[0].Rows[0]["fct_title"].ToString();
                    lbl_name_val.Text = ds.Tables[0].Rows[0]["fct_first_name"].ToString() + " " + ds.Tables[0].Rows[0]["fct_middle_name"].ToString() + " " + ds.Tables[0].Rows[0]["fct_last_name"].ToString();
                    ddl_gender.SelectedValue = ds.Tables[0].Rows[0]["fct_gender"].ToString();
                    txt_email.Text = ds.Tables[0].Rows[0]["fct_email"].ToString();
                    txt_mobile.Text = ds.Tables[0].Rows[0]["fct_mobile"].ToString();
                    ddl_department.SelectedValue = ds.Tables[0].Rows[0]["fct_department"].ToString();
                    txt_designation.Text = ds.Tables[0].Rows[0]["fct_designation"].ToString();
                    txt_domain.Text = ds.Tables[0].Rows[0]["fct_domain"].ToString();
                    txt_current_research.Text = ds.Tables[0].Rows[0]["fct_current_research"].ToString();
                }
            }
            else
            {
                Response.Redirect("~/Login/Login.aspx");
            }
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = business_function.login_faculty_detail(txt_domain.Text, txt_current_research.Text, txt_email.Text, txt_mobile.Text, fct_id, ddl_gender.SelectedValue.ToString(),
                ddl_title.SelectedValue.ToString(), ddl_department.SelectedValue.ToString(), txt_designation.Text);
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
                    if (ds.Tables[2].Rows[0]["fct_registered"].ToString() == "2")
                    {
                        Response.Redirect("~/Login/First_Login.aspx");
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
}