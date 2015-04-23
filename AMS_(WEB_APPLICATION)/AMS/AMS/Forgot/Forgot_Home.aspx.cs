using CN.Business;
using CN.Email;
using CN.Tags;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CN.Cryptography;

public partial class Forgot_Forgot_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tag_function.watermark(wm_email);
            tag_function.watermark(wm_username);
        }
    }
    protected void btn_continue_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (accordion.SelectedIndex == 0)
            {
                DataSet ds = new DataSet();
                ds = business_function.forgot_password(txt_username.Text);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Columns.Contains("fct_id"))
                    {
                        bool status = email_function.forgot_password(ds.Tables[0].Rows[0]["email_id"].ToString(), ds.Tables[0].Rows[0]["name"].ToString(), ConfigurationManager.AppSettings["domain_name"].ToString() + "/Forgot/Forgot_Password.aspx?fct_id=" + cryptography_function.encrypt(ds.Tables[0].Rows[0]["fct_id"].ToString()) + "&new_password=" + cryptography_function.encrypt(ds.Tables[0].Rows[0]["new_password"].ToString()));
                        if (status == true)
                        {
                            lbl_error_sending_fail.Text = "Please check your mail";
                            btn_continue.Visible = false;
                            btn_back.Visible = true;
                        }
                        else if (status == false)
                        {
                            lbl_error_sending_fail.Text = "Email Sending Failed";
                        }
                    }
                    else if (ds.Tables[0].Columns.Contains("std_id"))
                    {
                        bool status = email_function.forgot_password(ds.Tables[0].Rows[0]["email_id"].ToString(), ds.Tables[0].Rows[0]["name"].ToString(), ConfigurationManager.AppSettings["domain_name"].ToString() + "/Forgot/Forgot_Password.aspx?std_id=" + cryptography_function.encrypt(ds.Tables[0].Rows[0]["std_id"].ToString()) + "&new_password=" + cryptography_function.encrypt(ds.Tables[0].Rows[0]["new_password"].ToString()));
                        if (status == true)
                        {
                            lbl_error_sending_fail.Text = "Please check your mail";
                            btn_continue.Visible = false;
                            btn_back.Visible = true;
                        }
                        else if (status == false)
                        {
                            lbl_error_sending_fail.Text = "Email Sending Failed";
                        }
                    }
                }
                else
                {
                    lbl_error_username.Text = "*Invalid Username";
                }
            }
            if (accordion.SelectedIndex == 1)
            {
                DataSet ds = new DataSet();
                ds = business_function.forgot_username(txt_email.Text);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Columns.Contains("fct_id"))
                    {
                        bool status = email_function.forgot_username(ds.Tables[0].Rows[0]["email_id"].ToString(), ds.Tables[0].Rows[0]["name"].ToString(), ConfigurationManager.AppSettings["domain_name"].ToString() + "/Forgot/Forgot_Username.aspx?fct_id=" + cryptography_function.encrypt(ds.Tables[0].Rows[0]["fct_id"].ToString()) + "&new_username=" + cryptography_function.encrypt(ds.Tables[0].Rows[0]["new_username"].ToString()), ds.Tables[0].Rows[0]["current_username"].ToString());
                        if (status == true)
                        {
                            lbl_error_sending_fail.Text = "Please check your mail";
                            btn_continue.Visible = false;
                            btn_back.Visible = true;
                        }
                        else if (status == false)
                        {
                            lbl_error_sending_fail.Text = "Email Sending Failed";
                        }
                    }
                    else if (ds.Tables[0].Columns.Contains("std_id"))
                    {
                        bool status = email_function.forgot_username(ds.Tables[0].Rows[0]["email_id"].ToString(), ds.Tables[0].Rows[0]["name"].ToString(), ConfigurationManager.AppSettings["domain_name"].ToString() + "/Forgot/Forgot_Username.aspx?std_id=" + cryptography_function.encrypt(ds.Tables[0].Rows[0]["std_id"].ToString()) + "&new_username=" + cryptography_function.encrypt(ds.Tables[0].Rows[0]["new_username"].ToString()), ds.Tables[0].Rows[0]["current_username"].ToString());
                        if (status == true)
                        {
                            lbl_error_sending_fail.Text = "Please check your mail";
                            btn_continue.Visible = false;
                            btn_back.Visible = true;
                        }
                        else if (status == false)
                        {
                            lbl_error_sending_fail.Text = "Email Sending Failed";
                        }
                    }
                }
                else
                {
                    lbl_error_email.Text = "*Email Address Not Registered";
                }
            }
        }
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Response.Redirect("~/Login/Login.aspx");
        }
    }
}