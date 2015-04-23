using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CN.Business;
using CN.Tags;
using CN.Cryptography;
public partial class Forgot_Forgot_Password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString.ToString().Contains("fct_id") && cryptography_function.decrypt(Request.QueryString["new_password"].ToString()) != null)
            {
                DataSet ds = new DataSet();
                ds = business_function.forgot_password_fct_check(cryptography_function.decrypt(Request.QueryString["fct_id"]), cryptography_function.decrypt(Request.QueryString["new_password"]));
                if (ds.Tables.Count == 0)
                {
                    Response.Redirect("~/Forgot/Forgot_Home.aspx");
                }
            }
            else if (Request.QueryString.ToString().Contains("std_id") && cryptography_function.decrypt(Request.QueryString["new_password"].ToString()) != null)
            {
                DataSet ds = new DataSet();
                ds = business_function.forgot_password_std_check(cryptography_function.decrypt(Request.QueryString["std_id"]), cryptography_function.decrypt(Request.QueryString["new_password"]));
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
    }
    protected void btn_reset_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (Request.QueryString.ToString().Contains("fct_id") && cryptography_function.decrypt(Request.QueryString["new_password"].ToString()) != null)
            {
                DataSet ds = new DataSet();
                ds = business_function.forgot_fct_reset_password(cryptography_function.decrypt(Request.QueryString["fct_id"]), cryptography_function.decrypt(Request.QueryString["new_password"]), txt_new_password.Value);
                if (ds.Tables.Count > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "JavaScript", "page_redirect('Password Changed!','/Login/Login.aspx')", true);
                }
            }
            else if (Request.QueryString.ToString().Contains("std_id") && cryptography_function.decrypt(Request.QueryString["new_password"].ToString()) != null)
            {
                DataSet ds = new DataSet();
                ds = business_function.forgot_std_reset_password(cryptography_function.decrypt(Request.QueryString["std_id"]), cryptography_function.decrypt(Request.QueryString["new_password"]), txt_new_password.Value);
                if (ds.Tables.Count > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "JavaScript", "page_redirect('Password Changed!','/Login/Login.aspx')", true);
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