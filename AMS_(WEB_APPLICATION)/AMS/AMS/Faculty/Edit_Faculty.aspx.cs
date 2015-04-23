using CN.Business;
using CN.Tags;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_Edit_Faculty : System.Web.UI.Page
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
            tag_function.watermark(wm_edit_faculty);

            tag_function.ddl_bind(ddl_title);
            rfv_title.InitialValue = ddl_title.SelectedValue;
            tag_function.ddl_bind(ddl_gender);
            rfv_gender.InitialValue = ddl_gender.SelectedValue;
            tag_function.ddl_bind(ddl_department);
            rfv_department.InitialValue = ddl_department.SelectedValue;
        }
    }
    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string[] GetDetails(string prefixText, int count, string contextKey)
    {
        DataSet ds = business_function.edit_faculty_ace(prefixText);
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
                returnData.Add(AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(ds.Tables[0].Rows[i]["fct_first_name"].ToString() + " " + ds.Tables[0].Rows[i]["fct_middle_name"].ToString() + " " + ds.Tables[0].Rows[i]["fct_last_name"].ToString() + " (" + ds.Tables[0].Rows[i]["fct_sap_id"].ToString() + ")", ds.Tables[0].Rows[i]["fct_id"].ToString()));
            }
        }
        return returnData.ToArray();
    }
    protected void txt_edit_faculty_TextChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (txt_edit_faculty.Text != "" && hf_edit_faculty.Value.ToString() != "")
            {
                DataSet ds = new DataSet();
                ds = business_function.edit_faculty_page_faculty_val(hf_edit_faculty.Value.ToString());
                ddl_title.SelectedValue = ds.Tables[0].Rows[0]["fct_title"].ToString();
                txt_first_name.Text = ds.Tables[0].Rows[0]["fct_first_name"].ToString();
                txt_middle_name.Text = ds.Tables[0].Rows[0]["fct_middle_name"].ToString();
                txt_last_name.Text = ds.Tables[0].Rows[0]["fct_last_name"].ToString();
                txt_sap_id.Text = ds.Tables[0].Rows[0]["fct_sap_id"].ToString();
                ddl_gender.SelectedValue = ds.Tables[0].Rows[0]["fct_gender"].ToString();
                txt_email.Text = ds.Tables[0].Rows[0]["fct_email"].ToString();
                txt_mobile.Text = ds.Tables[0].Rows[0]["fct_mobile"].ToString();
                ddl_department.SelectedValue = ds.Tables[0].Rows[0]["fct_department"].ToString();
                txt_designation.Text = ds.Tables[0].Rows[0]["fct_designation"].ToString();
                txt_domain.Text = ds.Tables[0].Rows[0]["fct_domain"].ToString();
                txt_current_research.Text = ds.Tables[0].Rows[0]["fct_current_research"].ToString();
                lbl_edit_faculty_error.Visible = false;
                tbl_edit_faculty.Visible = true;
                tbl_edit_faculty_search.Visible = false;
            }
            else
            {
                lbl_edit_faculty_error.Visible = true;
                lbl_edit_faculty_error.Text = "Please search a faculty to edit";
            }
        }
    }
    protected void btn_save_changes_Click(object sender, EventArgs e)
    {
        if (IsPostBack && hf_edit_faculty.Value.ToString() != "")
        {
            DataSet ds = new DataSet();
            ds = business_function.edit_faculty_details(hf_edit_faculty.Value.ToString(), ddl_title.SelectedValue.ToString(), txt_first_name.Text, txt_middle_name.Text,
                txt_last_name.Text, txt_sap_id.Text, ddl_gender.SelectedValue.ToString(), txt_email.Text, txt_mobile.Text, ddl_department.SelectedValue.ToString(),
                txt_designation.Text, txt_domain.Text, txt_current_research.Text);
            if (ds.Tables.Count > 0)
            {
                if (ds.Tables.Count == 1)
                {
                    lbl_error.Text = "SAP ID. Already exists";
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
                    tbl_edit_faculty.Visible = false;
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
            Response.Redirect("~/Faculty/Edit_Faculty.aspx");
        }

    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Response.Redirect("~/Faculty/Edit_Faculty.aspx");
        }
    }
}