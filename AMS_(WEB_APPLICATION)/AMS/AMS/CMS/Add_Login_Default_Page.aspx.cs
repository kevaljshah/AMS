using CN.Business;
using CN.Tags;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CMS_Add_Login_Default_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tag_function.ddl_bind(ddl_select_role);
            rfv_select_role.InitialValue = ddl_select_role.SelectedValue;
            if (Request.QueryString["mem_id"] != null)
            {
                ddl_select_role.SelectedValue = Request.QueryString["mem_id"];
                DataSet ds = new DataSet();
                ds = business_function.login_default_selected_role(ddl_select_role.SelectedValue.ToString());
                ddl_page_name.DataSource = ds.Tables[0];
                ddl_page_name.DataTextField = "page_name";
                ddl_page_name.DataValueField = "page_id";
                ddl_page_name.DataBind();
                rfv_page_name.InitialValue = ddl_page_name.SelectedValue;
                if (ds.Tables[1].Rows.Count > 0)
                {
                    ddl_page_name.SelectedValue = ds.Tables[1].Rows[0]["page_id"].ToString();
                }
            }
        }
    }
    protected void ddl_select_role_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (ddl_select_role.SelectedIndex.ToString() != "0")
            {
                Response.Redirect("~/CMS/Add_Login_Default_Page.aspx?mem_id=" + ddl_select_role.SelectedValue.ToString());
            }
        }
    }
    protected void btn_login_assign_default_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = business_function.login_assign_default(ddl_select_role.SelectedValue.ToString(), ddl_page_name.SelectedValue.ToString());
    }
}