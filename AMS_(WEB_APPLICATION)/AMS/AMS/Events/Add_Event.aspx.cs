using CN.Business;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Events_Add_Event : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        string filename = "";
        byte[] filebytes = null;
        if (fu_event_poster.HasFile)
        {
            filename = fu_event_poster.FileName;
            filebytes = fu_event_poster.FileBytes;
            DataSet ds = new DataSet();
            ds = business_function.add_event_detail(txt_committee_name.Text, txt_event_name.Text, txt_event_description.Text, txt_event_date_from.Text,
                txt_event_date_to.Text, txt_coordinator1_name.Text, txt_coordinator2_name.Text, txt_coordinator1_email.Text, txt_coordinator2_email.Text,
                txt_coordinator1_mobile.Text, txt_coordinator2_mobile.Text, filename, filebytes, txt_event_from_time.Text, txt_event_to_time.Text);
            message(ds);

        }
        else
        {
            DataSet ds = new DataSet();
            ds = business_function.add_event_detail_without_poster(txt_committee_name.Text, txt_event_name.Text, txt_event_description.Text, txt_event_date_from.Text,
                txt_event_date_to.Text, txt_coordinator1_name.Text, txt_coordinator2_name.Text, txt_coordinator1_email.Text, txt_coordinator2_email.Text,
                txt_coordinator1_mobile.Text, txt_coordinator2_mobile.Text, txt_event_from_time.Text, txt_event_to_time.Text);
            message(ds);
        }

    }

    private void message(DataSet ds)
    {
        if (ds.Tables.Count > 0)
        {
            if (ds.Tables[0].Rows.Count > 0)
            {
                lbl_error.Text = "Event Added";
            }
            else
            {
                lbl_error.Text = "Event Not Added";
            }
        }
    }
}