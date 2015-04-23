using CN.Business;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_View_Faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = business_function.view_faculty_grid();
            gv_view_faculty.DataSource = ds.Tables[0];
            gv_view_faculty.DataBind();
        }
    }
    protected void gv_view_faculty_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_view_faculty.PageIndex = e.NewPageIndex;
        gv_view_faculty.DataBind();
    }
}