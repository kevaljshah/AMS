using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CN.Business;

public partial class Forgot_Forgot_Password : System.Web.UI.Page
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
                ds = business_function.forgot_fct_reset_password(fct_id, txt_password.Text, txt_new_password.Text);
                if (ds.Tables.Count > 0)
                {
                    Session["fct_id"] = ds.Tables[0].Rows[0][0].ToString();
                    Session["mem_id"] = ds.Tables[0].Rows[0][1].ToString();
                    Response.Redirect("~/Home.aspx");
                }
                else
                {
                    lbl_invald_password.Visible = true;
                }
            }
            if (Request.QueryString["fct_id"] == null && Request.QueryString["std_id"] != null)
            {
                DataSet ds = new DataSet();
                ds = business_function.forgot_std_reset_password(std_id, txt_password.Text, txt_new_password.Text);
                if (ds.Tables.Count > 0)
                {
                    Session["std_id"] = ds.Tables[0].Rows[0][0].ToString();
                    Session["mem_id"] = ds.Tables[0].Rows[0][1].ToString();
                    Response.Redirect("~/Home.aspx");
                }
                else
                {
                    lbl_invald_password.Visible = true;
                }
            }
        }
    }
}