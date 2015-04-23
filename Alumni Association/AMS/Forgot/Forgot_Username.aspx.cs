using CN.Business;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forgot_Forgot_Username : System.Web.UI.Page
{
    static string fct_id, std_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["fct_id"] != null && Request.QueryString["std_id"] == null)
        {
            fct_id = Request.QueryString["fct_id"];
        }
        else if (Request.QueryString["fct_id"] == null && Request.QueryString["std_id"] != null)
        {
            std_id = Request.QueryString["std_id"];
        }
        else
        {
            Response.Redirect("~/Forgot/Forgot_Home.aspx");
        }
    }
    protected void btn_reset_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (Request.QueryString["fct_id"] != null && Request.QueryString["std_id"] == null)
            {
                DataSet ds = new DataSet();
                ds = business_function.forgot_fct_reset_username(fct_id, txt_username.Text, txt_new_username.Text);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        lbl_user_exists.Visible = true;
                    }
                    else if (ds.Tables[0].Rows.Count == 0)
                    {
                        if (ds.Tables[1].Rows.Count > 0)
                        {
                            Response.Redirect("~/Login/Login.aspx");
                        }
                    }
                }
                else
                {
                    lbl_invald_username.Visible = true;
                }
            }
            if (Request.QueryString["fct_id"] == null && Request.QueryString["std_id"] != null)
            {
                DataSet ds = new DataSet();
                ds = business_function.forgot_std_reset_username(std_id, txt_username.Text, txt_new_username.Text);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        lbl_user_exists.Visible = true;
                    }
                    else if (ds.Tables[0].Rows.Count == 0)
                    {
                        if (ds.Tables[1].Rows.Count > 0)
                        {
                            Response.Redirect("~/Login/Login.aspx");
                        }
                    }
                }
                else
                {
                    lbl_invald_username.Visible = true;
                }
            }
        }

    }
}