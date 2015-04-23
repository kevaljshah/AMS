using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CN.Tags;
using CN.Business;
using System.Data.OleDb;
using System.Collections;
using System.Data.SqlClient;
using System.IO;

public partial class Excel_Upload : System.Web.UI.Page
{
    static string page_id;
    static string filename;
    static byte[] filebytes;
    static string SourceConstr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = business_function.page_detail(Convert.ToString(Request.Url.LocalPath));
            if (ds.Tables[0].Rows.Count > 0)
            {
                page_id = ds.Tables[0].Rows[0]["page_id"].ToString();
            }
            tag_function.label_bind(lbl_choose_file, page_id);
            tag_function.label_bind(lbl_sheet_name, page_id);
            tag_function.label_bind(lbl_gr_no, page_id);
            tag_function.label_bind(lbl_roll_no, page_id);
            tag_function.label_bind(lbl_firt_name, page_id);
            tag_function.label_bind(lbl_middle_name, page_id);
            tag_function.label_bind(lbl_last_name, page_id);
            tag_function.label_bind(lbl_program, page_id);
            tag_function.label_bind(lbl_stream, page_id);
            tag_function.label_bind(lbl_division, page_id);
            tag_function.label_bind(lbl_passing_year, page_id);
            tag_function.label_bind(lbl_campus, page_id);

            rfv_sheet.InitialValue = ddl_sheet.SelectedValue;
            rfv_gr_no.InitialValue = ddl_gr_no.SelectedValue;
            rfv_roll_no.InitialValue = ddl_roll_no.SelectedValue;
            rfv_first_name.InitialValue = ddl_first_name.SelectedValue;
            rfv_middle_name.InitialValue = ddl_middle_name.SelectedValue;
            rfv_last_name.InitialValue = ddl_last_name.SelectedValue;


            tag_function.ddl_bind(ddl_program);
            rfv_program.InitialValue = ddl_program.SelectedValue;
            tag_function.ddl_bind(ddl_stream);
            rfv_stream.InitialValue = ddl_stream.SelectedValue;
            tag_function.ddl_bind(ddl_division);
            rfv_division.InitialValue = ddl_division.SelectedValue;
            tag_function.ddl_bind(ddl_passing_year);
            rfv_passing_year.InitialValue = ddl_passing_year.SelectedValue;
            tag_function.ddl_bind(ddl_campus);
            rfv_campus.InitialValue = ddl_campus.SelectedValue;

            tag_function.ddl_bind(ddl_sheet);
            tag_function.ddl_bind(ddl_gr_no);
            tag_function.ddl_bind(ddl_roll_no);
            tag_function.ddl_bind(ddl_first_name);
            tag_function.ddl_bind(ddl_middle_name);
            tag_function.ddl_bind(ddl_last_name);

            tag_function.btn_bind(btn_save, page_id);
            tag_function.btn_bind(btn_save_file, page_id);
            tag_function.btn_bind(btn_cancel, page_id);
        }
    }
    protected void ddl_program_TextChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            tag_function.ddl_bind_selected_value(ddl_stream, ddl_program.SelectedValue);
        }
    }
    protected void btn_save_file_Click(object sender, EventArgs e)
    {
        if (fu_upload.HasFile)
        {
            filename = fu_upload.FileName;
            filebytes = fu_upload.FileBytes;
            fu_upload.SaveAs(@"C:\Program Files (x86)\Common Files\Microsoft Shared\DevServer\11.0\" + filename);
            SourceConstr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + filename + ";Excel 12.0 Macro;HDR=YES;IMEX=1";
            OleDbConnection oledb_con = new OleDbConnection(SourceConstr);
            oledb_con.Open();
            String[] restrictions1 = { null, null, null, null };
            DataTable dt = oledb_con.GetOleDbSchemaTable(OleDbSchemaGuid.Columns, restrictions1);
            DataView dw = new DataView(dt);
            DataTable dt1 = dw.ToTable(true, "Table_Name");
            oledb_con.Close();
            ddl_databind(ddl_sheet, dt1, "Table_Name");
            rfv_sheet.InitialValue = ddl_sheet.SelectedValue;
        }
    }
    private void ddl_databind(DropDownList ddl_id, DataTable dt, string column_name)
    {
        DataTable dt1 = new DataTable();
        dt1.Columns.Add("ddl_tag_id");
        dt1.Columns.Add("ddl_text");
        if (column_name == "Table_Name")
        {
            dt1.Rows.Add(0, "Select Table Name");
        }
        else
        {
            dt1.Rows.Add(0, "Select Column Name");
        }
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            dt1.Rows.Add(i + 1, dt.Rows[i][column_name].ToString());
        }
        ddl_id.DataSource = dt1;
        ddl_id.DataTextField = "ddl_text";
        ddl_id.DataValueField = "ddl_tag_id";
        ddl_id.DataBind();
    }
    protected void ddl_sheet_TextChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            ddl_sheet_selected(ddl_sheet.SelectedValue);
        }
    }

    private void ddl_sheet_selected(string ddl_sheet_selected_value)
    {
        if (IsPostBack)
        {
            OleDbConnection oledb_con = new OleDbConnection(SourceConstr);
            oledb_con.Open();
            String[] restrictions1 = { null, null, ddl_sheet.SelectedItem.Text, null };
            DataTable dt = oledb_con.GetOleDbSchemaTable(OleDbSchemaGuid.Columns, restrictions1);
            oledb_con.Close();
            ddl_databind(ddl_gr_no, dt, "Column_Name");
            rfv_gr_no.InitialValue = ddl_gr_no.SelectedValue;
            ddl_databind(ddl_roll_no, dt, "Column_Name");
            rfv_roll_no.InitialValue = ddl_roll_no.SelectedValue;
            ddl_databind(ddl_first_name, dt, "Column_Name");
            rfv_first_name.InitialValue = ddl_first_name.SelectedValue;
            ddl_databind(ddl_middle_name, dt, "Column_Name");
            rfv_middle_name.InitialValue = ddl_middle_name.SelectedValue;
            ddl_databind(ddl_last_name, dt, "Column_Name");
            rfv_last_name.InitialValue = ddl_last_name.SelectedValue;
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        if (IsPostBack && File.Exists(filename))
        {
            OleDbConnection oledb_con = new OleDbConnection(SourceConstr);
            OleDbCommand oledb_cmd = new OleDbCommand(@"SELECT * FROM [" + ddl_sheet.SelectedItem.Text + "]", oledb_con);
            OleDbDataAdapter oledb_da = new OleDbDataAdapter(oledb_cmd);
            DataTable dt = new DataTable();
            oledb_da.Fill(dt);
            DataSet ds = new DataSet();
            int success = 0, failed = 0;
            DataTable dt_success = new DataTable();
            dt_success.Columns.Add("std_gr_no");
            dt_success.Columns.Add("std_roll_no");
            dt_success.Columns.Add("std_first_name");
            dt_success.Columns.Add("std_middle_name");
            dt_success.Columns.Add("std_last_name");
            dt_success.Columns.Add("std_program");
            dt_success.Columns.Add("std_stream");
            dt_success.Columns.Add("std_division");
            dt_success.Columns.Add("std_passing_year");
            dt_success.Columns.Add("std_campus");
            DataTable dt_fail = new DataTable();
            dt_fail.Columns.Add("gr_no_fail");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ds = business_function.Excel_Upload(dt.Rows[i][ddl_gr_no.SelectedItem.Text].ToString(), dt.Rows[i][ddl_roll_no.SelectedItem.Text].ToString(), dt.Rows[i][ddl_first_name.SelectedItem.Text].ToString(),
                     dt.Rows[i][ddl_middle_name.SelectedItem.Text].ToString(), dt.Rows[i][ddl_last_name.SelectedItem.Text].ToString(), ddl_program.SelectedItem.Text,
                     ddl_stream.SelectedItem.Text, ddl_division.SelectedItem.Text, ddl_passing_year.SelectedItem.Text, ddl_campus.SelectedItem.Text);
                if (ds.Tables.Count == 2)
                {
                    dt_success.Rows.Add(ds.Tables[1].Rows[0]["std_gr_no"].ToString(), ds.Tables[1].Rows[0]["std_roll_no"].ToString(), ds.Tables[1].Rows[0]["std_first_name"].ToString(),
                        ds.Tables[1].Rows[0]["std_middle_name"].ToString(), ds.Tables[1].Rows[0]["std_last_name"].ToString(), ds.Tables[1].Rows[0]["std_program"].ToString(),
                        ds.Tables[1].Rows[0]["std_stream"].ToString(), ds.Tables[1].Rows[0]["std_division"].ToString(), ds.Tables[1].Rows[0]["std_passing_year"].ToString(),
                        ds.Tables[1].Rows[0]["std_campus"].ToString());
                    success++;
                }
                else
                {
                    dt_fail.Rows.Add(dt.Rows[i][ddl_gr_no.SelectedItem.Text].ToString());
                    failed++;
                }
            }

            if (success > 0)
            {
                Table1.Visible = false;
                Table3.Visible = true;
                lbl_success_count.Text = "Successfull Count:" + success.ToString() ;
                gv_success.DataSource = dt_success;
                gv_success.DataBind();
            }
            if (failed > 0)
            {
                Table1.Visible = false;
                Table4.Visible = true;
                lbl_failed_count.Text ="Unsuccessfull Count:" + failed.ToString();
                gv_failed.DataSource = dt_fail;
                gv_failed.DataBind();
            }
            if (success > 0)
            {
                ds = business_function.excel_save(filename, filebytes, success, failed);
                if (ds.Tables.Count == 1)
                {
                    lbl_excel_save.Text = "Excel Saved";
                }
            }
            File.Delete(filename);
        }
        else
        {
            lbl_error.Text = "Please Save A Excel File";
        }
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        if (filename != null)
        {
            File.Delete(filename);
        }
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Members/Excel_Upload.aspx");
    }
}