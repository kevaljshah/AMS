using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CN.Business;
using System.Data;
using CN.Cryptography;

public partial class Message_Sent_Message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["std_id"] != null && Session["fct_id"] == null)
        {
            DataSet ds = new DataSet();
            ds = business_function.sent_message_grid_student(Session["std_id"].ToString());
            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                ds.Tables[0].Columns.Add("page_name");
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
                    {
                        if (ds.Tables[0].Columns[j].ColumnName.Contains("sap_id"))
                        {
                            ds.Tables[0].Rows[i][j] = cryptography_function.encrypt(ds.Tables[0].Rows[i][j].ToString());
                        }
                        if (ds.Tables[0].Columns[j].ColumnName.Contains("msg_text"))
                        {
                            ds.Tables[0].Rows[i][j] = ds.Tables[0].Rows[i][j].ToString().Replace("<br/>", " ").Replace("&nbsp;", " ");
                        }
                        if (ds.Tables[0].Columns[j].ColumnName.Contains("page_name"))
                        {
                            ds.Tables[0].Rows[i][j] = cryptography_function.encrypt("sent");
                        }
                    }
                }
                gv_sent_message.DataSource = ds.Tables[0];
                gv_sent_message.DataBind();
            }
            else
            {
                lbl_no_message.Text = "Your Sent-box is empty";
            }
        }
        //faculty
        else if (Session["std_id"] == null && Session["fct_id"] != null)
        {
            DataSet ds = new DataSet();
            ds = business_function.sent_message_grid_faculty(Session["fct_id"].ToString());
            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                ds.Tables[0].Columns.Add("page_name");
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
                    {
                        if (ds.Tables[0].Columns[j].ColumnName.Contains("sap_id"))
                        {
                            ds.Tables[0].Rows[i][j] = cryptography_function.encrypt(ds.Tables[0].Rows[i][j].ToString());
                        }
                        if (ds.Tables[0].Columns[j].ColumnName.Contains("msg_text"))
                        {
                            ds.Tables[0].Rows[i][j] = ds.Tables[0].Rows[i][j].ToString().Replace("<br/>", " ").Replace("&nbsp;", " ");
                        }
                        if (ds.Tables[0].Columns[j].ColumnName.Contains("page_name"))
                        {
                            ds.Tables[0].Rows[i][j] = cryptography_function.encrypt("sent");
                        }
                    }
                }
                gv_sent_message.DataSource = ds.Tables[0];
                gv_sent_message.DataBind();
            }
            else
            {
                lbl_no_message.Text = "Your Sent-box is empty";
            }
        }
    }
    protected void gv_sent_message_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_sent_message.PageIndex = e.NewPageIndex;
        gv_sent_message.DataBind();
    }
}