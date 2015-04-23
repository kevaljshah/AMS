using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CN.Business;
using System.Data;
using CN.Tags;
using CN.Cryptography;

public partial class Members_View_Members : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tag_function.ddl_bind(ddl_passing_year);
            rfv_passing_year.InitialValue = ddl_passing_year.SelectedValue;
            ddl_passing_year.Items.Insert(1, "ALL");

            tag_function.ddl_bind(ddl_campus);
            rfv_campus.InitialValue = ddl_campus.SelectedValue;
            ddl_campus.Items.Insert(1, "ALL");

            tag_function.ddl_bind(ddl_program);
            rfv_program.InitialValue = ddl_program.SelectedValue;
            ddl_program.Items.Insert(1, "ALL");

            tag_function.ddl_bind(ddl_stream);
            rfv_stream.InitialValue = ddl_stream.SelectedValue;

            //tag_function.ddl_bind(ddl_division);
            //rfv_division.InitialValue = ddl_division.SelectedValue;
            //ddl_division.Items.Insert(1, "ALL");

            tag_function.ddl_bind(ddl_registration_status);
            rfv_registration_status.InitialValue = ddl_registration_status.SelectedValue;
            ddl_registration_status.Items.Insert(1, "BOTH");

            if (cryptography_function.decrypt(Request.QueryString["passing_year"]) != null && cryptography_function.decrypt(Request.QueryString["campus"]) != null && cryptography_function.decrypt(Request.QueryString["program"]) != null && cryptography_function.decrypt(Request.QueryString["stream"]) != null && cryptography_function.decrypt(Request.QueryString["registration_status"]) != null)
            {
                try
                {
                    ddl_passing_year.SelectedValue = cryptography_function.decrypt(Request.QueryString["passing_year"]).ToString();
                    ddl_campus.SelectedValue = cryptography_function.decrypt(Request.QueryString["campus"].ToString());
                    ddl_program.SelectedValue = cryptography_function.decrypt(Request.QueryString["program"].ToString());
                    dropdown_program_selected();
                    ddl_stream.SelectedValue = cryptography_function.decrypt(Request.QueryString["stream"].ToString());
                    //ddl_division.SelectedValue = cryptography_function.decrypt(Request.QueryString["division"].ToString());
                    ddl_registration_status.SelectedValue = cryptography_function.decrypt(Request.QueryString["registration_status"].ToString());
                    Context.RewritePath(Request.FilePath);
                }
                catch
                {
                    Response.Redirect("/Members/Search_Members.aspx");
                }
            }
        }
    }
    protected void ddl_program_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            dropdown_program_selected();
        }
    }

    private void dropdown_program_selected()
    {
        if (ddl_program.SelectedIndex != 0 && ddl_program.SelectedIndex != 1)
        {
            tag_function.ddl_bind_selected_value(ddl_stream, ddl_program.SelectedValue);
            rfv_stream.InitialValue = ddl_stream.SelectedValue;
            ddl_stream.Items.Insert(1, "ALL");
        }
        else if (ddl_program.SelectedIndex == 1)
        {
            ddl_stream.Items.Clear();
            ddl_stream.Items.Add("ALL");
        }
    }
    protected void btn_serach_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = business_function.search_members_count(ddl_passing_year.SelectedValue.ToString(), ddl_campus.SelectedValue.ToString(), ddl_program.SelectedValue.ToString(), ddl_stream.SelectedValue.ToString(), ddl_registration_status.SelectedValue.ToString());
            if (ds.Tables.Count > 0)
            {
                if (ds.Tables[0].Rows.Count > 0 && int.Parse(ds.Tables[0].Rows[0]["std_count"].ToString()) > 0)
                {
                    Response.Redirect("~/Members/View_Members.aspx?passing_year=" + cryptography_function.encrypt(ddl_passing_year.SelectedValue.ToString()) + "&campus=" + cryptography_function.encrypt(ddl_campus.SelectedValue.ToString()) + "&program=" + cryptography_function.encrypt(ddl_program.SelectedValue.ToString()) + "&stream=" + cryptography_function.encrypt(ddl_stream.SelectedValue.ToString()) + "&registration_status=" + cryptography_function.encrypt(ddl_registration_status.SelectedValue.ToString()));
                }
                else
                {
                    lbl_error.Text = "No entries found";
                }
            }
        }
    }
}