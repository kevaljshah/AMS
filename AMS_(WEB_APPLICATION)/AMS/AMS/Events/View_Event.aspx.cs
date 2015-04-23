using CN.Business;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Events_View_Event : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds_upcoming = new DataSet();
            ds_upcoming = business_function.view_event_upcoming_grid();
            gv_view_upcoming_events.DataSource = ds_upcoming.Tables[0];
            gv_view_upcoming_events.DataBind();
            gv_view_upcoming_events.Visible = true;
        }
    }
    protected void lb_upcoming_events_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            DataSet ds_upcoming = new DataSet();
            ds_upcoming = business_function.view_event_upcoming_grid();
            gv_view_upcoming_events.DataSource = ds_upcoming.Tables[0];
            gv_view_upcoming_events.DataBind();
            gv_view_upcoming_events.Visible = true;
        }
    }
    protected void lb_past_events_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            DataSet ds_past = new DataSet();
            ds_past = business_function.view_event_past_grid();
            gv_view_upcoming_events.DataSource = ds_past.Tables[0];
            gv_view_upcoming_events.DataBind();
            gv_view_past_events.Visible = true;
        }
    }
    protected void gv_view_upcoming_events_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_view_upcoming_events.PageIndex = e.NewPageIndex;
        gv_view_upcoming_events.DataBind();

    }
    protected void gv_view_past_events_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_view_past_events.PageIndex = e.NewPageIndex;
        gv_view_past_events.DataBind();
    }
}