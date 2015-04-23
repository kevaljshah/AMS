using CN.Business;
using CN.Tags;
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
        if (IsPostBack)
        {
            Session.Clear();
        }
        if (!IsPostBack)
        {
            tag_function.watermark(wm_username);
            //tag_function.watermark(wm_password);
            //txt_password.Attributes.Add("oninput", "password(this)");
            if (Request.Cookies["username"] != null && Request.Cookies["password"] != null && Request.Cookies["fct_id"] != null)
            {
                DataSet ds = new DataSet();
                ds = business_function.login_cookie_faculty(Request.Cookies["username"].Value.ToString(), Request.Cookies["password"].Value.ToString(), Request.Cookies["fct_id"].Value.ToString());
                if (ds.Tables.Count > 0)
                {
                    faculty_session(ds);
                    Response.Redirect(login_redirect(ds.Tables[0].Rows[0]["mem_id"].ToString()));
                }
            }
            else if (Request.Cookies["username"] != null && Request.Cookies["password"] != null && Request.Cookies["std_id"] != null)
            {
                DataSet ds = new DataSet();
                ds = business_function.login_cookie_student(Request.Cookies["username"].Value.ToString(), Request.Cookies["password"].Value.ToString(), Request.Cookies["std_id"].Value.ToString());
                if (ds.Tables.Count > 0)
                {
                    student_session(ds);
                    Response.Redirect(login_redirect(ds.Tables[0].Rows[0]["mem_id"].ToString()));
                }
            }
            else if (Request.Cookies["username"] != null && Request.Cookies["password"] != null && Request.Cookies["std_id"] == null)
            {
                txt_username.Text = Request.Cookies["username"].Value.ToString();
            }
        }
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = business_function.login(txt_username.Text, txt_password.Value);
            if (ds.Tables.Count > 0)
            {
                if (ckb_remember.Checked)
                {
                    Response.Cookies["username"].Value = txt_username.Text.ToString();
                    Response.Cookies["username"].Expires = DateTime.Now.AddMonths(1);
                    Response.Cookies["password"].Value = txt_password.Value;
                    Response.Cookies["password"].Expires = DateTime.Now.AddMonths(1);
                }
                if (ds.Tables[0].Columns[0].ToString() == "fct_id")
                {
                    if (ckb_remember.Checked)
                    {
                        Response.Cookies["fct_id"].Value = ds.Tables[0].Rows[0]["fct_id"].ToString();
                        Response.Cookies["fct_id"].Expires = DateTime.Now.AddMonths(1);
                    }
                    faculty_session(ds);
                }
                else if (ds.Tables[0].Columns[0].ToString() == "std_id")
                {
                    if (ckb_remember.Checked)
                    {
                        Response.Cookies["std_id"].Value = ds.Tables[0].Rows[0]["std_id"].ToString();
                        Response.Cookies["std_id"].Expires = DateTime.Now.AddMonths(1);
                    }
                    student_session(ds);
                }
                else
                {
                    lbl_error.Visible = true;
                    lbl_error.Text = "Invalid ID or password.";
                }
            }
            else
            {
                lbl_error.Visible = true;
                lbl_error.Text = "Invalid ID or password.";
            }
        }
    }
    private void faculty_session(DataSet ds)
    {
        if (ds.Tables[0].Rows[0]["fct_registered"].ToString() == "3")
        {
            Session["fct_id"] = ds.Tables[0].Rows[0]["fct_id"].ToString();
            Response.Redirect("~/mobile/Login/Login_Faculty_Detail.aspx");
        }
        if (ds.Tables[0].Rows[0]["fct_registered"].ToString() == "2")
        {
            Session["fct_id"] = ds.Tables[0].Rows[0]["fct_id"].ToString();
            Response.Redirect("~/mobile/Login/First_Login.aspx");
        }
        if (ds.Tables[0].Rows[0]["fct_registered"].ToString() == "1")
        {
            Session["fct_id"] = ds.Tables[0].Rows[0]["fct_id"].ToString();
            Response.Redirect("~/mobile/Login/Login_Profile_Image.aspx");
        }
        if (ds.Tables[0].Rows[0]["fct_registered"].ToString() == "0")
        {
            Session["fct_id"] = ds.Tables[0].Rows[0]["fct_id"].ToString();
            Response.Redirect(login_redirect(ds.Tables[0].Rows[0]["mem_id"].ToString()));
        }
    }

    private void student_session(DataSet ds)
    {
        if (ds.Tables[0].Rows[0]["std_registered"].ToString() == "3")
        {
            Session["std_id"] = ds.Tables[0].Rows[0]["std_id"].ToString();
            Response.Redirect("~/mobile/Login/Login_Student_Detail.aspx");
        }
        if (ds.Tables[0].Rows[0]["std_registered"].ToString() == "2")
        {
            Session["std_id"] = ds.Tables[0].Rows[0]["std_id"].ToString();
            Response.Redirect("~/mobile/Login/First_Login.aspx");
        }
        if (ds.Tables[0].Rows[0]["std_registered"].ToString() == "1")
        {
            Session["std_id"] = ds.Tables[0].Rows[0]["std_id"].ToString();
            Response.Redirect("~/mobile/Login/Login_Profile_Image.aspx");
        }
        if (ds.Tables[0].Rows[0]["std_registered"].ToString() == "0")
        {
            Session["std_id"] = ds.Tables[0].Rows[0]["std_id"].ToString();

            Response.Redirect("~/mobile/Home/Default.aspx");
        }
    }
    //protected void txt_password_PreRender(object sender, EventArgs e)
    //{
    //    txt_password.Value= "";
    //}

    private string login_redirect(string mem_id)
    {
        DataSet ds = new DataSet();
        ds = business_function.login_redirect(mem_id);
        return ds.Tables[0].Rows[0]["post_back_url"].ToString();
    }
}