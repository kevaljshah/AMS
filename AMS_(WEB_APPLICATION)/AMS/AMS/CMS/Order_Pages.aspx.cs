using CN.Business;
using CN.Tags;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CMS_Order_Pages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tag_function.ddl_bind(ddl_select_role);
            rfv_select_role.InitialValue = ddl_select_role.SelectedValue;
            tag_function.ddl_bind(ddl_order_type);
            rfv_order_type.InitialValue = ddl_order_type.SelectedValue;
        }
    }
    protected void gv_menu_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        HiddenField hf_menu_id = (HiddenField)gv_menu.Rows[e.RowIndex].FindControl("hf_menu_id");
        TextBox txt_menu_order = (TextBox)gv_menu.Rows[e.RowIndex].FindControl("txt_menu_order");
        DataSet ds = new DataSet();
        ds = business_function.order_page_menu_update(ddl_select_role.SelectedValue.ToString(), hf_menu_id.Value, txt_menu_order.Text.ToString());
        gv_menu.EditIndex = -1;
        gv_menu.DataSource = ds.Tables[0];
        gv_menu.DataBind();
    }
    protected void gv_menu_RowEditing(object sender, GridViewEditEventArgs e)
    {
        if (ddl_select_role.SelectedIndex.ToString() != "0" && ddl_order_type.SelectedIndex.ToString() == "1")
        {
            gv_menu.EditIndex = e.NewEditIndex;
            DataSet ds = new DataSet();
            ds = business_function.order_pages_menu_grid(ddl_select_role.SelectedValue.ToString());
            gv_menu.DataSource = ds.Tables[0];
            gv_menu.DataBind();
        }
    }
    protected void ddl_order_type_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (ddl_select_role.SelectedIndex.ToString() != "0" && ddl_order_type.SelectedIndex.ToString() == "1")
            {
                gv_submenu.Visible = false;
                gv_menu.Visible = true;
                DataSet ds = new DataSet();
                ds = business_function.order_pages_menu_grid(ddl_select_role.SelectedValue.ToString());
                gv_menu.DataSource = ds.Tables[0];
                gv_menu.DataBind();
            }
            else if (ddl_select_role.SelectedIndex.ToString() != "0" && ddl_order_type.SelectedIndex.ToString() == "2")
            {
                gv_menu.Visible = false;
                gv_submenu.Visible = true;
                DataSet ds = new DataSet();
                ds = business_function.order_pages_sub_menu_grid(ddl_select_role.SelectedValue.ToString());
                gv_submenu.DataSource = ds.Tables[0];
                gv_submenu.DataBind();
            }
        }
    }
    protected void gv_submenu_RowEditing(object sender, GridViewEditEventArgs e)
    {
        if (ddl_select_role.SelectedIndex.ToString() != "0" && ddl_order_type.SelectedIndex.ToString() == "2")
        {
            gv_submenu.EditIndex = e.NewEditIndex;
            DataSet ds = new DataSet();
            ds = business_function.order_pages_sub_menu_grid(ddl_select_role.SelectedValue.ToString());
            gv_submenu.DataSource = ds.Tables[0];
            gv_submenu.DataBind();
        }
    }
    protected void gv_submenu_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        HiddenField hf_assigned_role_id = (HiddenField)gv_submenu.Rows[e.RowIndex].FindControl("hf_assigned_role_id");
        TextBox txt_submenu_order = (TextBox)gv_submenu.Rows[e.RowIndex].FindControl("txt_submenu_order");
        DataSet ds = new DataSet();
        ds = business_function.order_page_submenu_update(ddl_select_role.SelectedValue.ToString(), hf_assigned_role_id.Value, txt_submenu_order.Text.ToString());
        gv_submenu.EditIndex = -1;
        gv_submenu.DataSource = ds.Tables[0];
        gv_submenu.DataBind();
    }
    protected void gv_menu_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        DataSet ds = new DataSet();
        ds = business_function.order_pages_menu_grid(ddl_select_role.SelectedValue.ToString());
        gv_menu.EditIndex = -1;
        gv_menu.DataSource = ds.Tables[0];
        gv_menu.DataBind();
    }
    protected void gv_submenu_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        DataSet ds = new DataSet();
        ds = business_function.order_pages_sub_menu_grid(ddl_select_role.SelectedValue.ToString());
        gv_submenu.EditIndex = -1;
        gv_submenu.DataSource = ds.Tables[0];
        gv_submenu.DataBind();
    }
}