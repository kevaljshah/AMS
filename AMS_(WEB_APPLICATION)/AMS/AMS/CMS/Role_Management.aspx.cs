using CN.Business;
using CN.Tags;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CMS_role_Management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tag_function.ddl_bind(ddl_select_role);
            rfv_select_role.InitialValue = ddl_select_role.SelectedValue;
            DataSet ds_parent = new DataSet();
            ds_parent = business_function.role_management_parent_val();
            foreach (DataRow dr_parent in ds_parent.Tables[0].Rows)
            {
                TreeNode parent_node = new TreeNode(dr_parent["menu_name"].ToString(), dr_parent["menu_id"].ToString());
                tv_role_assign.Nodes.Add(parent_node);
                DataSet ds_child = new DataSet();
                ds_child = business_function.role_management_child_val(dr_parent["menu_id"].ToString());
                foreach (DataRow dr_child in ds_child.Tables[0].Rows)
                {
                    TreeNode child_node = new TreeNode(dr_child["page_name"].ToString(), dr_child["page_id"].ToString());
                    parent_node.ChildNodes.Add(child_node);
                }
            }
        }
    }
    protected void btn_assign_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            foreach (TreeNode tn_parent in tv_role_assign.Nodes)
            {
                foreach (TreeNode tn_child in tn_parent.ChildNodes)
                {
                    DataSet ds = new DataSet();
                    ds = business_function.assign_role(tn_parent.Value, tn_child.Value, tn_child.Checked.ToString(), ddl_select_role.SelectedValue.ToString());
                }
            }
            lbl_assigned_role_error.Text = "Pages Assigned to " + ddl_select_role.SelectedItem.ToString();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "JavaScript", "page_redirect('Do you want to assign Default Pages?','/CMS/Add_Default_Page.aspx?mem_id=" + ddl_select_role.SelectedValue.ToString() + "')", true);
        }
    }

    protected void ddl_select_role_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_select_role.SelectedIndex.ToString() != "0")
        {
            foreach (TreeNode tn_parent in tv_role_assign.Nodes)
            {
                foreach (TreeNode tn_child in tn_parent.ChildNodes)
                {
                    DataSet ds = new DataSet();
                    ds = business_function.tree_view_selected_role(ddl_select_role.SelectedValue.ToString(), tn_parent.Value.ToString(), tn_child.Value.ToString());
                    if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count == 1)
                    {
                        tn_child.Checked = (bool)ds.Tables[0].Rows[0]["page_visible"];
                    }
                    else
                    {
                        tn_child.Checked = false;
                    }
                }
            }

        }
    }
}