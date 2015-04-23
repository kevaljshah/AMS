using CN.Business;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Events_Event_Detail : System.Web.UI.Page
{
    static string event_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["event_id"] == null)
        {
            Response.Redirect("~/Events/View_Event.aspx");
        }
        else
        {
            event_id = Request.QueryString["event_id"].ToString();
        }
        DataSet ds = new DataSet();
        ds = business_function.event_detail(event_id);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lbl_event_name_val.Text = ds.Tables[0].Rows[0]["event_name"].ToString();
            lbl_committee_name_val.Text = ds.Tables[0].Rows[0]["event_committee_name"].ToString();
            lbl_event_date_val.Text = ds.Tables[1].Rows[0]["event_date"].ToString();
            lbl_event_time_val.Text = ds.Tables[2].Rows[0]["event_time"].ToString();
            lbl_event_description_val.Text = ds.Tables[0].Rows[0]["event_description"].ToString();
            lbl_event_coordinaotr1_name_val.Text = ds.Tables[0].Rows[0]["coordinator1_name"].ToString();
            lbl_event_coordinaotr1_contact_val.Text = ds.Tables[0].Rows[0]["coordinator1_contact"].ToString();
            lbl_event_coordinaotr2_name_val.Text = ds.Tables[0].Rows[0]["coordinator2_name"].ToString();
            lbl_event_coordinaotr2_contact_val.Text = ds.Tables[0].Rows[0]["coordinator2_contact"].ToString();
            if (ds.Tables[0].Rows[0]["event_poster_filename"].ToString() != "")
            {
                img_event_poster.Visible = true;
                img_event_poster.ImageUrl = "~/Handler/ImageHandler.ashx?event_id=" + event_id;
            }
            if (lbl_event_coordinaotr2_contact_val.Text == "(mobile: email:)")
            {
                lbl_event_coordinaotr2_contact_val.Visible = false;
            }

        }
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {

    }
}