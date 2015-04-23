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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fu_profile_image.Attributes.Add("onchange", "image_preview(this)");
            if (Session["std_id"] != null && Session["fct_id"] == null)
            {
                //student
                img_profile_image.ImageUrl = "~/Handler/ImageHandler.ashx?std_id=" + Session["std_id"].ToString();
            }
            else if (Session["std_id"] == null && Session["fct_id"] != null)
            {
                //faculty
                img_profile_image.ImageUrl = "~/Handler/ImageHandler.ashx?fct_id=" + Session["fct_id"].ToString();
            }
            else
            {
                Response.Redirect("~/mobile/Login/Login.aspx");
            }

        }
    }
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (fu_profile_image.HasFile)
            {
                if (Session["std_id"] != null && Session["fct_id"] == null)
                {
                    //student
                    DataSet ds = new DataSet();
                    ds = business_function.login_std_profile_image(Session["std_id"].ToString(), fu_profile_image.FileName, fu_profile_image.FileBytes);
                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count == 1)
                        {
                            if (ds.Tables[1].Rows[0]["std_registered"].ToString() == "0")
                            {
                                Response.Redirect(login_redirect(ds.Tables[1].Rows[0]["mem_id"].ToString()));
                            }
                        }
                    }
                }
                if (Session["std_id"] == null && Session["fct_id"] != null)
                {
                    //faculty
                    DataSet ds = new DataSet();
                    ds = business_function.login_fct_profile_image(Session["fct_id"].ToString(), fu_profile_image.FileName, fu_profile_image.FileBytes);
                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count == 1)
                        {
                            if (ds.Tables[1].Rows[0]["fct_registered"].ToString() == "0")
                            {
                                Response.Redirect(login_redirect(ds.Tables[1].Rows[0]["mem_id"].ToString()));
                            }
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
                    if (ds.Tables[0].Rows[0]["std_registered"].ToString() == "0")
                    {
                        Response.Redirect(login_redirect(ds.Tables[0].Rows[0]["mem_id"].ToString()));
                    }
                }
            }
            if (Session["std_id"] == null && Session["fct_id"] != null)
            {
                DataSet ds = new DataSet();
                ds = business_function.registered_fct(Session["fct_id"].ToString());
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["fct_registered"].ToString() == "0")
                    {
                        Response.Redirect(login_redirect(ds.Tables[0].Rows[0]["mem_id"].ToString()));
                    }
                }
            }
        }
    }
    private string login_redirect(string mem_id)
    {
        DataSet ds = new DataSet();
        ds = business_function.login_redirect(mem_id);
        return ds.Tables[0].Rows[0]["post_back_url"].ToString();
    }

}