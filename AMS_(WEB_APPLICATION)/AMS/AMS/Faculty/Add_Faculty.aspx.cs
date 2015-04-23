using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CN.Tags;
using System.Data;
using CN.Business;

public partial class Faculty_Add_Faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tag_function.watermark(wm_first_name);
            tag_function.watermark(wm_middle_name);
            tag_function.watermark(wm_last_name);
            tag_function.watermark(wm_sap_id);
            tag_function.watermark(wm_email);
            tag_function.watermark(wm_mobile);

            tag_function.ddl_bind(ddl_gender);
            rfv_gender.InitialValue = ddl_gender.SelectedValue;
            tag_function.ddl_bind(ddl_department);
            rfv_department.InitialValue = ddl_department.SelectedValue;
            tag_function.ddl_bind(ddl_title);
            rfv_title.InitialValue = ddl_title.SelectedValue;
        }
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = business_function.add_faculty(ddl_title.SelectedValue.ToString(), txt_first_name.Text, txt_middle_name.Text, txt_last_name.Text, txt_sap_id.Text, ddl_department.SelectedValue.ToString(),
            txt_designation.Text, txt_domain.Text, txt_current_research.Text, txt_email.Text, txt_mobile.Text, ddl_gender.SelectedValue.ToString());
            if (ds.Tables.Count > 0)
            {
                if (ds.Tables[0].Columns[0].ColumnName == "fct_sap_id")
                {
                    lbl_error.Visible = true;
                    lbl_error.Text = "SAP ID. already exists";
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
                else if (ds.Tables[0].Columns[0].ColumnName == "fct_id")
                {
                    tbl_add_user.Visible = false;
                    tbl_user_added.Visible = true;
                }
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
}