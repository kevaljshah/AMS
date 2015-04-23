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
            tag_function.label_bind(lbl_name,page_id);
            tag_function.label_bind(lbl_sap_id  , page_id);
            tag_function.label_bind(lbl_department, page_id);
            tag_function.label_bind(lbl_designation, page_id);
            tag_function.label_bind(lbl_domain, page_id);
            tag_function.label_bind(lbl_current_research, page_id);
            tag_function.label_bind(lbl_email, page_id);
            tag_function.label_bind(lbl_mobile, page_id);

            tag_function.watermark(wm_first_name);
            tag_function.watermark(wm_middle_name);
            tag_function.watermark(wm_last_name);
            tag_function.watermark(wm_sap_id);
            tag_function.watermark(wm_email);
            tag_function.watermark(wm_mobile);

            tag_function.ddl_bind(ddl_department);
            rfv_department.InitialValue = ddl_department.SelectedValue;
            tag_function.ddl_bind(ddl_title);
            rfv_title.InitialValue = ddl_title.SelectedValue;

            tag_function.btn_bind(btn_add, page_id);
        }
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = business_function.add_faculty(ddl_title.SelectedItem.Text, txt_first_name.Text, txt_middle_name.Text, txt_last_name.Text, txt_sap_id.Text, ddl_department.SelectedItem.Text,
            txt_designation.Text, txt_domain.Text, txt_current_research.Text, txt_email.Text, txt_mobile.Text);
            if (ds.Tables.Count == 2)
            {
                lbl_error.Text = "Faculty details added";
            }
            else
            {
                lbl_error.Text = "Facculty already exists";
            }
        }
    }
}