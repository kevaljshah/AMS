using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CN.Business;
using System.Data;

public partial class Members_View_Members : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = business_function.view_member_grid();
        gv_view_members.DataSource = ds.Tables[0];
        gv_view_members.DataBind();
    }
    protected void gv_view_members_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_view_members.PageIndex = e.NewPageIndex;
        gv_view_members.DataBind();
    }
}