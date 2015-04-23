using CN.Business;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["username"] != null && Request.Cookies["password"] != null && Request.Cookies["fct_id"] != null)
        {
            DataSet ds = new DataSet();
            ds = business_function.login_cookie_faculty(Request.Cookies["username"].Value.ToString(), Request.Cookies["password"].Value.ToString(), Request.Cookies["fct_id"].Value.ToString());
            if (ds.Tables.Count > 0)
            {
                faculty_session(ds);
                Response.Redirect("~/Home/College_Home.aspx");
            }
        }
        else if (Request.Cookies["username"] != null && Request.Cookies["password"] != null && Request.Cookies["std_id"] != null)
        {
            DataSet ds = new DataSet();
            ds = business_function.login_cookie_student(Request.Cookies["username"].Value.ToString(), Request.Cookies["password"].Value.ToString(), Request.Cookies["std_id"].Value.ToString());
            if (ds.Tables.Count > 0)
            {
                student_session(ds);
                Response.Redirect("~/Home/College_Home.aspx");
            }
        }

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = business_function.login(txt_username.Text, txt_username.Text);
        if (ds.Tables.Count > 0)
        {
            if (ckb_remember.Checked)
            {
                Response.Cookies["username"].Value = txt_username.Text.ToString();
                Response.Cookies["username"].Expires = DateTime.Now.AddDays(1);
                Response.Cookies["password"].Value = txt_password.Text;
                Response.Cookies["password"].Expires = DateTime.Now.AddDays(1);
            }
            if (ds.Tables[0].Columns[0].ToString() == "fct_id")
            {
                if (ckb_remember.Checked)
                {
                    Response.Cookies["fct_id"].Value = ds.Tables[0].Rows[0][0].ToString();
                    Response.Cookies["fct_id"].Expires = DateTime.Now.AddDays(1);
                }
                faculty_session(ds);
            }
            else if (ds.Tables[0].Columns[0].ToString() == "std_id")
            {
                if (ckb_remember.Checked)
                {
                    Response.Cookies["std_id"].Value = ds.Tables[0].Rows[0][0].ToString();
                    Response.Cookies["std_id"].Expires = DateTime.Now.AddDays(1);
                }
                student_session(ds);
            }
            else
            {
                lbl_error.Text = "Invalid";
            }
        }
        else
        {
            lbl_error.Text = "INVALID USER";
        }
    }
    private void faculty_session(DataSet ds)
    {
        if (ds.Tables[0].Rows[0][2].ToString() == "3")
        {
            Session["fct_id"] = ds.Tables[0].Rows[0][0].ToString();
            Session["mem_id"] = ds.Tables[0].Rows[0]["mem_id"].ToString();
            Response.Redirect("~/Login/Login_Faculty_Detail.aspx");
        }
        if (ds.Tables[0].Rows[0][2].ToString() == "2")
        {
            Session["fct_id"] = ds.Tables[0].Rows[0][0].ToString();
            Session["mem_id"] = ds.Tables[0].Rows[0]["mem_id"].ToString();
            Response.Redirect("~/Login/First_Login.aspx");
        }
        if (ds.Tables[0].Rows[0][2].ToString() == "1")
        {
            Session["fct_id"] = ds.Tables[0].Rows[0][0].ToString();
            Session["mem_id"] = ds.Tables[0].Rows[0]["mem_id"].ToString();
            Response.Redirect("~/Login/Login_Profile_Image.aspx");
        }
        if (ds.Tables[0].Rows[0][2].ToString() == "0")
        {
            Session["fct_id"] = ds.Tables[0].Rows[0][0].ToString();
            Session["mem_id"] = ds.Tables[0].Rows[0]["mem_id"].ToString();
            Response.Redirect("~/Home/College_Home.aspx");
        }
    }
    private void student_session(DataSet ds)
    {
        if (ds.Tables[0].Rows[0][2].ToString() == "3")
        {
            Session["std_id"] = ds.Tables[0].Rows[0][0].ToString();
            Session["mem_id"] = ds.Tables[0].Rows[0]["mem_id"].ToString();
            Response.Redirect("~/Login/Login_Student_Detail.aspx");
        }
        if (ds.Tables[0].Rows[0][2].ToString() == "2")
        {
            Session["std_id"] = ds.Tables[0].Rows[0][0].ToString();
            Session["mem_id"] = ds.Tables[0].Rows[0]["mem_id"].ToString();
            Response.Redirect("~/Login/First_Login.aspx");
        }
        if (ds.Tables[0].Rows[0][2].ToString() == "1")
        {
            Session["std_id"] = ds.Tables[0].Rows[0][0].ToString();
            Session["mem_id"] = ds.Tables[0].Rows[0]["mem_id"].ToString();
            Response.Redirect("~/Login/Login_Profile_Image.aspx");
        }
        if (ds.Tables[0].Rows[0][2].ToString() == "0")
        {
            Session["std_id"] = ds.Tables[0].Rows[0][0].ToString();
            Session["mem_id"] = ds.Tables[0].Rows[0]["mem_id"].ToString();
            Response.Redirect("~/Home/College_Home.aspx");
        }
    }
}