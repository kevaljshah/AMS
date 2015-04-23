using CN.Business;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master_Pages_Login_Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["std_id"] != null && Session["fct_id"] == null)
        {
            DataSet ds = new DataSet();
            ds = business_function.login_master_register_student(Session["std_id"].ToString());
            if (ds.Tables.Count > 0)
            {
                redirect_page(ds);
            }
        }
        else if (Session["fct_id"] != null && Session["std_id"] == null)
        {
            DataSet ds = new DataSet();
            ds = business_function.login_master_register_faculty(Session["fct_id"].ToString());
            if (ds.Tables.Count > 0)
            {
                redirect_page(ds);
            }
        }

    }

    private void redirect_page(DataSet ds)
    {
        if (ds.Tables[0].Rows[0][0].ToString() == "0")
        {
            Response.Redirect(login_redirect(ds.Tables[0].Rows[0]["mem_id"].ToString()));
        }
    }

    private string login_redirect(string mem_id)
    {
        DataSet ds = new DataSet();
        ds = business_function.login_redirect(mem_id);
        return ds.Tables[0].Rows[0]["post_back_url"].ToString();
    }
}
