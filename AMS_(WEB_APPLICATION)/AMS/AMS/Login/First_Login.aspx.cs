using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CN.Business;
using CN.Tags;

public partial class Login_First_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txt_password.Attributes.Add("oninput", "password(this)");
            txt_confirm_password.Attributes.Add("oninput", "password(this)");
            tag_function.watermark(wm_username);
            tag_function.watermark(wm_password);
            tag_function.watermark(wm_confirm_password);
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
                else
                {
                    lbl_username_exists.Visible = true;
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
                else
                {
                    lbl_username_exists.Visible = true;
                }
            }
        }
    }
    protected void txt_password_PreRender(object sender, EventArgs e)
    {
        txt_password.Text = "";
        txt_confirm_password.Text = "";
    }
}