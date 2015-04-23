using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CN.Business;

public partial class Login_First_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_skip_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (Session["std_id"] != null && Session["fct_id"] == null)
            {
                DataSet ds = new DataSet();
                ds = business_function.registered_std(Session["std_id"].ToString());
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows[0][0].ToString() == "1")
                    {
                        Response.Redirect("~/Login/Login_Profile_Image.aspx");
                    }
                }
            }
            if (Session["std_id"] == null && Session["fct_id"] != null)
            {
                DataSet ds = new DataSet();
                ds = business_function.registered_fct(Session["fct_id"].ToString());
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows[0][0].ToString() == "1")
                    {
                        Response.Redirect("~/Login/Login_Profile_Image.aspx");
                    }
                }
            }
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (Session["std_id"] != null && Session["fct_id"] == null)
            {
                DataSet ds = new DataSet();
                ds = business_function.first_login_std(Session["std_id"].ToString(), txt_username.Text, txt_password.Text);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows[0][0].ToString() == Session["std_id"].ToString())
                    {
                        Response.Redirect("~/Login/Login_Profile_Image.aspx");
                    }
                }
                else if (ds.Tables.Count == 0)
                {
                    lbl_username_exists.Visible = true;
                }
                else
                {
                    Response.Redirect("~/Home/College_Home.aspx");
                }
            }
            if (Session["std_id"] == null && Session["fct_id"] != null)
            {
                DataSet ds = new DataSet();
                ds = business_function.first_login_fct(Session["fct_id"].ToString(), txt_username.Text, txt_password.Text);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows[0][0].ToString() == Session["fct_id"].ToString())
                    {
                        Response.Redirect("~/Login/Login_Profile_Image.aspx");
                    }
                }
                else if (ds.Tables.Count == 0)
                {
                    lbl_username_exists.Visible = true;
                }
                else
                {
                    Response.Redirect("~/Home/College_Home.aspx");
                }
            }
        }
    }
}