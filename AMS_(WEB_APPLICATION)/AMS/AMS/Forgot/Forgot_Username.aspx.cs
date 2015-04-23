using CN.Business;
using CN.Cryptography;
using CN.Tags;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forgot_Forgot_Username : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //tag_function.watermark(wm_mailed_username);
        tag_function.watermark(wm_new_username);
        tag_function.watermark(wm_confirm_username);
        if (Request.QueryString.ToString().Contains("fct_id") && cryptography_function.decrypt(Request.QueryString["new_username"].ToString()) != null)
        {
            DataSet ds = new DataSet();
            ds = business_function.forgot_username_fct_check(cryptography_function.decrypt(Request.QueryString["fct_id"]), cryptography_function.decrypt(Request.QueryString["new_username"]));
            if (ds.Tables.Count == 0)
            {
                Response.Redirect("~/Forgot/Forgot_Home.aspx");
            }
        }
        else if (Request.QueryString.ToString().Contains("std_id") && cryptography_function.decrypt(Request.QueryString["new_username"].ToString()) != null)
        {
            DataSet ds = new DataSet();
            ds = business_function.forgot_username_std_check(cryptography_function.decrypt(Request.QueryString["std_id"]), cryptography_function.decrypt(Request.QueryString["new_username"]));
            if (ds.Tables.Count == 0)
            {
                Response.Redirect("~/Forgot/Forgot_Home.aspx");
            }
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
            if (Request.QueryString.ToString().Contains("fct_id") && cryptography_function.decrypt(Request.QueryString["new_username"].ToString()) != null)
            {
                DataSet ds = new DataSet();
                ds = business_function.forgot_fct_reset_username(cryptography_function.decrypt(Request.QueryString["fct_id"].ToString()), cryptography_function.decrypt(Request.QueryString["new_username"].ToString()), txt_new_username.Text);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        if (ds.Tables[1].Rows.Count > 0)
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "JavaScript", "page_redirect('Username Changed!','/Login/Login.aspx')", true);
                        }
                    }
                }
            }
            else if (Request.QueryString.ToString().Contains("std_id") && cryptography_function.decrypt(Request.QueryString["new_username"].ToString()) != null)
            {
                DataSet ds = new DataSet();
                ds = business_function.forgot_std_reset_username(cryptography_function.decrypt(Request.QueryString["std_id"].ToString()), cryptography_function.decrypt(Request.QueryString["new_username"].ToString()), txt_new_username.Text);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        if (ds.Tables[1].Rows.Count > 0)
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "JavaScript", "page_redirect('Username Changed!','/Login/Login.aspx')", true);
                        }
                    }
                }
            }
            else
            {
                Response.Redirect("~/Forgot/Forgot_Home.aspx");
            }
        }
    }
    protected void btn_skip_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login/Login.aspx");
    }
}