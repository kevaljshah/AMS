using CN.Business;
using CN.Tags;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CMS_Add_Default_Page : System.Web.UI.Page
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
                DataSet ds_parent = new DataSet();
                ds_parent = business_function.add_default_selected_role_parent(Request.QueryString["mem_id"].ToString());
                foreach (DataRow dr_parent in ds_parent.Tables[0].Rows)
                {
                    TreeNode parent_node = new TreeNode(dr_parent["menu_name"].ToString(), dr_parent["menu_id"].ToString());
                    tv_role_assign.Nodes.Add(parent_node);
                    DataSet ds_child = new DataSet();
                    ds_child = business_function.add_default_selected_role_child(dr_parent["menu_id"].ToString(), Request.QueryString["mem_id"].ToString());
                    foreach (DataRow dr_child in ds_child.Tables[0].Rows)
                    {
                        TreeNode child_node = new TreeNode(dr_child["page_name"].ToString(), dr_child["page_id"].ToString());
                        child_node.ShowCheckBox = false;
                        if ((bool)dr_child["default_page"] == true)
                        {
                            child_node.Text = "<input type='radio' name='" + dr_parent["menu_name"] + "' value ='" + dr_child["page_id"].ToString() + "' checked='checked'>" + child_node.Text;
                        }
                        else if ((bool)dr_child["default_page"] == false)
                        {
                            child_node.Text = "<input type='radio' name='" + dr_parent["menu_name"] + "' value ='" + dr_child["page_id"].ToString() + "'>" + child_node.Text;
                        }
                        parent_node.ChildNodes.Add(child_node);
                    }
                }
            }
        }
    }
    protected void btn_assign_default_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            foreach (TreeNode tn_parent in tv_role_assign.Nodes)
            {
                DataSet ds = new DataSet();
                ds = business_function.assign_default_page(tn_parent.Value, Request.Form[tn_parent.Text].ToString(), ddl_select_role.SelectedValue.ToString());
            }
            ScriptManager.RegisterStartupScript(this, this.GetType(), "JavaScript", "page_redirect('Do you want to assign Login Pages?','/CMS/Add_Login_Default_Page.aspx?mem_id=" + ddl_select_role.SelectedValue.ToString() + "')", true);
        }
    }
    protected void ddl_select_role_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (ddl_select_role.SelectedIndex.ToString() != "0")
            {
                Response.Redirect("~/CMS/Add_Default_Page.aspx?mem_id=" + ddl_select_role.SelectedValue.ToString());
            }
        }
    }
}