using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CN.Business;
using CN.Tags;

public partial class Login_Login_Faculty_Detail : System.Web.UI.Page
{
    static string fct_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["fct_id"] != null)
            {
                fct_id = Session["fct_id"].ToString();
                DataSet ds = new DataSet();
                ds = business_function.login_faculty_val(fct_id);
                if (ds.Tables.Count > 0)
                {
                    lbl_name_val.Text = ds.Tables[0].Rows[0]["fct_first_name"].ToString() + " " + ds.Tables[0].Rows[0]["fct_middle_name"].ToString() + " " + ds.Tables[0].Rows[0]["fct_last_name"].ToString();
                }

                tag_function.watermark(wm_email);
                tag_function.watermark(wm_mobile);
            }
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = business_function.login_faculty_detail(txt_domain.Text, txt_current_research.Text, txt_email.Text, txt_mobile.Text, fct_id);
            if (ds.Tables.Count > 0)
            {
                if (ds.Tables[0].Rows[0][0].ToString() == "2")
                {
                    Response.Redirect("~/Login/First_Login.aspx");
                }
            }
            else
            {
                lbl_error.Text = "Email or mobile already exists";
            }
        }
    }
}