using CN.Business;
using CN.Email;
using CN.Tags;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class Newsletter_Create_Newsletter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tag_function.ddl_bind(ddl_passing_year);
            tag_function.ddl_bind(ddl_campus);
            tag_function.ddl_bind(ddl_program);
            tag_function.ddl_bind(ddl_stream);
            tag_function.ddl_bind(ddl_division);
        }
    }

    protected void ddl_program_TextChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            tag_function.ddl_bind_selected_value(ddl_stream, ddl_program.SelectedValue);
        }
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (accordion.SelectedIndex == 0)
            {
                string passing_year, campus, program, stream, division;
                if (ddl_passing_year.SelectedIndex == 0)
                {
                    passing_year = "";
                }
                else
                {
                    passing_year = ddl_passing_year.SelectedItem.ToString();
                }

                if (ddl_campus.SelectedIndex == 0)
                {
                    campus = "";
                }
                else
                {
                    campus = ddl_campus.SelectedItem.ToString();
                }

                if (ddl_program.SelectedIndex == 0)
                {
                    program = "";
                }
                else
                {
                    program = ddl_program.SelectedItem.ToString();
                }

                if (ddl_stream.SelectedIndex == 0)
                {
                    stream = "";
                }
                else
                {
                    stream = ddl_stream.SelectedItem.ToString();
                }

                if (ddl_division.SelectedIndex == 0)
                {
                    division = "";
                }
                else
                {
                    division = ddl_division.SelectedItem.ToString();
                }

                DataSet ds = new DataSet();
                ds = business_function.create_newsletter_group(passing_year, campus, program, stream, division);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        DataTable dt_success = new DataTable();
                        dt_success.Columns.Add("email_id");
                        dt_success.Columns.Add("gr_no");
                        dt_success.Columns.Add("name");
                        DataTable dt_fail = new DataTable();
                        dt_fail.Columns.Add("gr_no");
                        dt_fail.Columns.Add("email_id");
                        dt_fail.Columns.Add("name");
                        int success = 0, fail = 0;
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            bool status = email_function.send_email(ds.Tables[0].Rows[i][0].ToString(), txt_subject.Text, txt_body.Text);
                            if (status == true)
                            {
                                dt_success.Rows.Add(ds.Tables[0].Rows[i][0].ToString(), ds.Tables[0].Rows[i][1].ToString(), ds.Tables[0].Rows[i][2].ToString() + " " + ds.Tables[0].Rows[i][3].ToString() + "" + ds.Tables[0].Rows[i][4].ToString());
                                success++;
                            }
                            else if (status == false)
                            {
                                dt_fail.Rows.Add(ds.Tables[0].Rows[i][0].ToString(), ds.Tables[0].Rows[i][1].ToString(), ds.Tables[0].Rows[i][2].ToString() + " " + ds.Tables[0].Rows[i][3].ToString() + "" + ds.Tables[0].Rows[i][4].ToString());
                                fail++;
                            }
                        }
                        if (success > 0)
                        {
                            Table1.Visible = false;
                            Table3.Visible = true;
                            gv_success.DataSource = dt_success;
                            gv_success.DataBind();
                        }
                        if (fail > 0)
                        {
                            Table1.Visible = false;
                            Table4.Visible = true;
                            gv_fail.DataSource = dt_fail;
                            gv_fail.DataBind();
                        }
                    }
                }
            }
            else if (accordion.SelectedIndex == 1)
            {
                int success = 0, fail = 0;
                DataTable dt_success = new DataTable();
                dt_success.Columns.Add("email_id");
                dt_success.Columns.Add("gr_no");
                dt_success.Columns.Add("name");
                DataTable dt_fail = new DataTable();
                dt_fail.Columns.Add("gr_no");
                dt_fail.Columns.Add("email_id");
                dt_fail.Columns.Add("name");
                string[] gr_no = txt_to.Text.ToString().Split(',');
                foreach (string a in gr_no)
                {
                    if (Regex.Match(a, @"\d+").Value.Length == 11)
                    {
                        DataSet ds = new DataSet();
                        ds = business_function.create_newsletter_individual(Regex.Match(a, @"\d+").Value.ToString());
                        if (ds.Tables.Count > 0)
                        {
                            bool status = email_function.send_email(ds.Tables[0].Rows[0][0].ToString(), txt_subject.Text, txt_body.Text);
                            if (status == true)
                            {
                                dt_success.Rows.Add(ds.Tables[0].Rows[0][0].ToString(), ds.Tables[0].Rows[0][1].ToString(), ds.Tables[0].Rows[0][2].ToString() + " " + ds.Tables[0].Rows[0][3].ToString() + "" + ds.Tables[0].Rows[0][4].ToString());
                                success++;
                            }
                            if (status == false)
                            {
                                dt_fail.Rows.Add(ds.Tables[0].Rows[0][0].ToString(), ds.Tables[0].Rows[0][1].ToString(), ds.Tables[0].Rows[0][2].ToString() + " " + ds.Tables[0].Rows[0][3].ToString() + "" + ds.Tables[0].Rows[0][4].ToString());
                                fail++;
                            }
                        }
                    }
                }
            }
            else
            {
                Response.Write(@"<script>alert('Select input type');</script>");
            }
        }
    }

    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Newsletter/Create_Newsletter.aspx");
    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string[] GetCompletionList(string prefixText, int count, string contextKey)
    {
        DataSet ds = business_function.create_newsletter_ace(prefixText);
        List<string> returnData = new List<string>();
        if (ds.Tables.Count > 0)
        {
            int view_count;
            if (ds.Tables[0].Rows.Count < count)
            {
                view_count = ds.Tables[0].Rows.Count;
            }
            else
                view_count = count;
            for (int i = 0; i < view_count; i++)
            {
                returnData.Add(AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(ds.Tables[0].Rows[i]["std_first_name"].ToString() + " " + ds.Tables[0].Rows[i]["std_middle_name"].ToString() + " " + ds.Tables[0].Rows[i]["std_last_name"].ToString() + " (" + ds.Tables[0].Rows[i]["std_gr_no"].ToString() + ")", ds.Tables[0].Rows[i]["std_id"].ToString()));
            }
        }
        return returnData.ToArray();
    }
}