using CN.Business;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Login_Profile_Image : System.Web.UI.Page
{
    static string filename;
    static byte[] filebytes;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            img_profile_image.ImageUrl = "~/images/Icon-user.png";
        }
    }
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if (fu_profile_image.HasFile)
        {
            filename = fu_profile_image.FileName;
            filebytes = fu_profile_image.FileBytes;
            if (Session["std_id"] != null && Session["fct_id"] == null)
            {
                //student
                DataSet ds = new DataSet();
                ds = business_function.login_std_profile_image(Session["std_id"].ToString(),filename,filebytes);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count == 1)
                    {
                        if (ds.Tables[1].Rows[0][0].ToString() == "0")
                        {
                            Response.Redirect("~/Home/College_Home.aspx");
                        }
                    }
                }
            }
            if (Session["std_id"] == null && Session["fct_id"] != null)
            {
                //faculty
                DataSet ds = new DataSet();
                ds = business_function.login_fct_profile_image(Session["fct_id"].ToString(), filename, filebytes);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count == 1)
                    {
                        if (ds.Tables[1].Rows[0][0].ToString() == "0")
                        {
                            Response.Redirect("~/Home/College_Home.aspx");
                        }
                    }
                }
            }

        }
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
                        Response.Redirect("~/Home/College_Home.aspx");
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
                        Response.Redirect("~/Home/College_Home.aspx");
                    }
                }
            }
        }
    }
}