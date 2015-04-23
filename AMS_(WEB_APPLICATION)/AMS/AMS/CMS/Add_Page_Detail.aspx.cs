using CN.Business;
using CN.Tags;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CMS_Add_Page_Detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tag_function.ddl_bind(ddl_menu_name);
            rfv_ddl_menu_name.InitialValue = ddl_menu_name.SelectedValue;
            tag_function.ddl_bind(ddl_visibility);
            rfv_visibility.InitialValue = ddl_visibility.SelectedValue;
            tag_function.ddl_bind(ddl_menu_visibility);
            rfv_menu_visibility.InitialValue = ddl_menu_visibility.SelectedValue;
            tag_function.ddl_bind(ddl_page_linked);
            rfv_page_linked.InitialValue = ddl_page_linked.SelectedValue;
            tag_function.ddl_bind(ddl_show_on_menu_bar);
            rfv_show_on_menu_bar.InitialValue = ddl_show_on_menu_bar.SelectedValue;
        }
    }
    protected void btn_add_menu_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = business_function.add_menu_detail(txt_menu_name.Text, ddl_menu_visibility.SelectedItem.Text, ddl_show_on_menu_bar.SelectedItem.Text, txt_menu_text.Text);
            if (ds.Tables.Count > 0)
            {
                tag_function.ddl_bind(ddl_menu_name);
                rfv_ddl_menu_name.InitialValue = ddl_menu_name.SelectedValue;
                lbl_add_menu_error.Visible = true;
                lbl_add_menu_error.Text = "Menu Details Added";
            }
            else
            {
                lbl_add_menu_error.Visible = true;
                lbl_add_menu_error.Text = "Menu Name Already Exists";
            }
        }
    }
    protected void btn_add_page_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = business_function.add_page_details(ddl_menu_name.SelectedValue.ToString(), txt_page_name.Text, txt_page_title.Text, ddl_visibility.SelectedItem.Text, txt_submenu_text.Text, ddl_page_linked.SelectedItem.Text);
            if (ds.Tables.Count > 0)
            {
                lbl_add_page_error.Text = "Page Details Added";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "JavaScript", "page_redirect('Do you want to assign role?','/CMS/Role_Management.aspx')", true);
            }
            else
            {
                lbl_add_page_error.Text = "Page Details Already Exists";
            }
        }
    }
}