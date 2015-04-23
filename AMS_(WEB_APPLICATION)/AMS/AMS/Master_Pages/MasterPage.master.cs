using CN.Business;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master_Pages_masterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["std_id"] != null || Session["fct_id"] != null)
            {
                //student
                if (Session["std_id"] != null && Session["fct_id"] == null)
                {
                    DataSet ds = new DataSet();
                    ds = business_function.master_page_student(Session["std_id"].ToString(), Request.RawUrl.Split('/').GetValue(1).ToString(), Request.RawUrl.Split('/').GetValue(2).ToString());
                    if (ds.Tables.Count > 0)
                    {
                        foreach (DataRow dr_parent in ds.Tables[0].Rows)
                        {
                            MenuItem item_parent = new MenuItem();
                            item_parent.Text = dr_parent["menu_text"].ToString();
                            item_parent.NavigateUrl = dr_parent["post_back_url"].ToString();
                            foreach (DataRow dr_child in ds.Tables[1].Rows)
                            {
                                if (dr_parent["menu_id"].ToString() == dr_child["menu_id"].ToString())
                                {
                                    MenuItem item_child = new MenuItem();
                                    item_child.Text = dr_child["submenu_text"].ToString();
                                    item_child.NavigateUrl = dr_child["post_back_url"].ToString();
                                    item_parent.ChildItems.Add(item_child);
                                }
                            }
                            menu_navigation_bar.Items.Add(item_parent);
                        }
                        dl_submenu.DataSource = ds.Tables[2];
                        dl_submenu.DataBind();
                        lb_profile_name.Text = ds.Tables[3].Rows[0]["std_name"].ToString();
                        lbl_gr_no_val.Text = ds.Tables[3].Rows[0]["std_gr_no"].ToString();
                        lbl_name_val.Text = ds.Tables[3].Rows[0]["std_name"].ToString();
                        img_profile_image.ImageUrl = "~/Handler/ImageHandler.ashx?std_id=" + Session["std_id"].ToString();
                        if (ds.Tables[4].Rows.Count > 0)
                        {
                            lb_account_settings.Visible = true;
                            lb_account_settings.Text = ds.Tables[4].Rows[0]["menu_text"].ToString();
                            lb_account_settings.PostBackUrl = ds.Tables[4].Rows[0]["post_back_url"].ToString();
                            lb_profile_name.PostBackUrl = ds.Tables[4].Rows[0]["post_back_url"].ToString();

                        }
                    }
                    else
                    {
                        Response.Redirect("~/Error.aspx");
                    }
                }
                //faculty
                else if (Session["std_id"] == null && Session["fct_id"] != null)
                {
                    DataSet ds = new DataSet();
                    ds = business_function.master_page_faculty(Session["fct_id"].ToString(), Request.RawUrl.Split('/').GetValue(1).ToString(), Request.RawUrl.Split('/').GetValue(2).ToString());
                    if (ds.Tables.Count > 0)
                    {
                        foreach (DataRow dr_parent in ds.Tables[0].Rows)
                        {
                            MenuItem item_parent = new MenuItem();
                            item_parent.Text = dr_parent["menu_text"].ToString();
                            item_parent.NavigateUrl = dr_parent["post_back_url"].ToString();
                            foreach (DataRow dr_child in ds.Tables[1].Rows)
                            {
                                if (dr_parent["menu_id"].ToString() == dr_child["menu_id"].ToString())
                                {
                                    MenuItem item_child = new MenuItem();
                                    item_child.Text = dr_child["submenu_text"].ToString();
                                    item_child.NavigateUrl = dr_child["post_back_url"].ToString();
                                    item_parent.ChildItems.Add(item_child);
                                }
                            }
                            menu_navigation_bar.Items.Add(item_parent);
                        }
                        dl_submenu.DataSource = ds.Tables[2];
                        dl_submenu.DataBind();
                        lb_profile_name.Text = ds.Tables[3].Rows[0]["fct_name"].ToString();
                        lbl_gr_no_val.Text = ds.Tables[3].Rows[0]["fct_sap_id"].ToString();
                        lbl_name_val.Text = ds.Tables[3].Rows[0]["fct_name"].ToString();
                        img_profile_image.ImageUrl = "~/Handler/ImageHandler.ashx?fct_id=" + Session["fct_id"].ToString();
                    }
                    else
                    {
                        Response.Redirect("~/Error.aspx");
                    }
                }
            }
            else
            {
                Response.Redirect("~/Login/Login.aspx");
            }
        }
    }
    protected void img_btn_logout_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void img_btn_logout_Click(object sender, ImageMapEventArgs e)
    {
        if (IsPostBack)
        {
            if (Request.Cookies["username"] != null && Request.Cookies["password"] != null && Request.Cookies["fct_id"] != null)
            {
                Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["fct_id"].Expires = DateTime.Now.AddDays(-1);
            }
            else if (Request.Cookies["username"] != null && Request.Cookies["password"] != null && Request.Cookies["std_id"] != null)
            {
                Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["std_id"].Expires = DateTime.Now.AddDays(-1);
            }
            Session.Clear();
            Response.Redirect("~/Login/Login.aspx");
        }
    }
}
