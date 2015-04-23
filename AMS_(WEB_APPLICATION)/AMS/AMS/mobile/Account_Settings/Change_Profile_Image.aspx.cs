using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CN.Tags;
using System.Data;
using CN.Business;

public partial class Members_Add_Member : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["std_id"] != null || Session["fct_id"] != null)
            {
                //student
                if (Session["std_id"] != null && Session["fct_id"] == null)
                {
                    img_profile_image.ImageUrl = "~/Handler/ImageHandler.ashx?std_id=" + Session["std_id"].ToString();
                }
                //faculty
                else if (Session["std_id"] == null && Session["fct_id"] != null)
                {
                    img_profile_image.ImageUrl = "~/Handler/ImageHandler.ashx?std_id=" + Session["std_id"].ToString();
                }
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
                    ds = business_function.change_profile_image_student_upload(Session["std_id"].ToString(), fu_profile_image.FileName, fu_profile_image.FileBytes);
                    if (ds.Tables.Count > 0)
                    {
                        lbl_error.Text = "Profile Image Changed";
                    }
                }
                if (Session["std_id"] == null && Session["fct_id"] != null)
                {
                    //faculty
                    DataSet ds = new DataSet();
                    ds = business_function.change_profile_image_faculty_upload(Session["fct_id"].ToString(), fu_profile_image.FileName, fu_profile_image.FileBytes);
                    if (ds.Tables.Count > 0)
                    {
                        lbl_error.Text = "Profile Image Changed";
                    }
                }
            }
        }
    }
    protected void btn_remove_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (Session["std_id"] != null && Session["fct_id"] == null)
            {
                //student
                DataSet ds = new DataSet();
                ds = business_function.change_profile_image_student_remove(Session["std_id"].ToString());
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables.Count == 2)
                    {
                        lbl_error.Text = "Profile Image Removed";
                    }
                    else if (ds.Tables.Count == 1)
                    {
                        lbl_error.Text = "You haven't set your profile image";
                    }
                }
            }
            if (Session["std_id"] == null && Session["fct_id"] != null)
            {
                //faculty
                DataSet ds = new DataSet();
                ds = business_function.change_profile_image_faculty_remove(Session["fct_id"].ToString());
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables.Count == 2)
                    {
                        lbl_error.Text = "Profile Image Removed";
                    }
                    else if (ds.Tables.Count == 1)
                    {
                        lbl_error.Text = "You haven't set your profile image";
                    }
                }
            }
        }
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/mobile/Home/Default.aspx");
    }
}