using CN.Business;
using CN.Email;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forgot_Forgot_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
                    bool status = email_function.forgot_password(ds.Tables[0].Rows[0][0].ToString(), ds.Tables[0].Rows[0][1].ToString());
                    if (status == true)
                    {
                        if (ds.Tables[0].Columns[2].ColumnName == "fct_id")
                        {
                            Response.Redirect("~/Forgot/Forgot_Password.aspx?fct_id=" + ds.Tables[0].Rows[0][2].ToString());
                        }
                        else if (ds.Tables[0].Columns[2].ColumnName == "std_id")
                        {
                            Response.Redirect("~/Forgot/Forgot_Password.aspx?std_id=" + ds.Tables[0].Rows[0][2].ToString());
                        }
                    }
                    else if (status == false)
                    {
                        lbl_error.Text = "Email Sending Failed";
                    }
                }
                else
                {
                    lbl_error.Text = "*Invalid Username";
                }
            }
            if (accordion.SelectedIndex == 1)
            {
                DataSet ds = new DataSet();
                ds = business_function.forgot_username(txt_email.Text);
                if (ds.Tables.Count > 0)
                {
                    bool status = email_function.forgot_username(ds.Tables[0].Rows[0][0].ToString(), ds.Tables[0].Rows[0][1].ToString());
                    if (status == true)
                    {
                        if (ds.Tables[0].Columns[2].ColumnName == "fct_id")
                        {
                            Response.Redirect("~/Forgot/Forgot_Username.aspx?fct_id=" + ds.Tables[0].Rows[0][2].ToString());
                        }
                        else if (ds.Tables[0].Columns[2].ColumnName == "std_id")
                        {
                            Response.Redirect("~/Forgot/Forgot_Username.aspx?std_id=" + ds.Tables[0].Rows[0][2].ToString());
                        }
                    }
                    else if (status == false)
                    {
                        lbl_error.Text = "Email Sending Failed";
                    }
                }
                else
                {
                    lbl_error.Text = "*Invalid Email-ID";
                }
            }
        }
    }
}