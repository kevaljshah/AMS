using CN.Business;
using CN.Tags;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CMS_Change_Role : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tag_function.ddl_bind(ddl_select_role);
            rfv_select_role.InitialValue = ddl_select_role.SelectedValue;
        }
    }
    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string[] GetDetails(string prefixText, int count, string contextKey)
    {
        DataSet ds = business_function.change_role_ace(prefixText);
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
                returnData.Add(AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(ds.Tables[0].Rows[i]["first_name"].ToString() + " " + ds.Tables[0].Rows[i]["middle_name"].ToString() + " " + ds.Tables[0].Rows[i]["last_name"].ToString() + " (" + ds.Tables[0].Rows[i]["sap_id"].ToString() + ")", ds.Tables[0].Rows[i]["sap_id"].ToString()));
            }
        }
        return returnData.ToArray();
    }
    protected void txt_change_role_sap_id_TextChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (txt_change_role_sap_id.Text != "")
            {
                DataSet ds = new DataSet();
                ds = business_function.change_role_ace_selected_text(hf_change_role_sap_id.Value.ToString());
                if (ds.Tables.Count > 0)
                {
                    ddl_select_role.SelectedValue = ds.Tables[0].Rows[0]["mem_id"].ToString();
                }
                else
                {
                    lbl_error.Text = "User not assigned a role";
                }
            }
            else
            {
                ddl_select_role.SelectedValue = "1";
            }
        }
    }
    protected void btn_change_role_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (hf_change_role_sap_id.Value.ToString() != "")
            {
                DataSet ds = new DataSet();
                ds = business_function.change_role(hf_change_role_sap_id.Value.ToString(), ddl_select_role.SelectedValue.ToString());
                if (ds.Tables.Count > 0)
                {
                    lbl_error.Text = "Changes Made";
                }
            }
        }
    }
}