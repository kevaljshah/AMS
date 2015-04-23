using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CN.Cryptography;
using System.Data;
using CN.Business;

public partial class Message_Reply_Message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["std_id"] != null && Session["fct_id"] == null && Request.QueryString["sap_id"] != null && Request.QueryString["page_name"] != null)
            {
                txt_new_message_body.Text = "";
                send_message_history_student();
            }
            else if (Session["std_id"] == null && Session["fct_id"] != null && Request.QueryString["sap_id"] != null && Request.QueryString["page_name"] != null)
            {
                txt_new_message_body.Text = "";
                send_message_history_faculty();
            }
            else if (Request.QueryString["sap_id"] == null || Request.QueryString["page_name"] == null)
            {
                Response.Redirect("~/mobile/Message/Inbox_Message.aspx");
            }
        }
    }
    private void send_message_history_faculty()
    {
        DataSet ds = new DataSet();
        ds = business_function.send_message_history_faculty(Session["fct_id"].ToString(), cryptography_function.decrypt(Request.QueryString["sap_id"].ToString()));
        if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            div_message_history.Visible = true;
            dl_message_history.DataSource = ds.Tables[0];
            dl_message_history.DataBind();
        }
    }
    private void send_message_history_student()
    {
        DataSet ds = new DataSet();
        ds = business_function.send_message_history_student(Session["std_id"].ToString(), cryptography_function.decrypt(Request.QueryString["sap_id"].ToString()));
        if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            div_message_history.Visible = true;
            dl_message_history.DataSource = ds.Tables[0];
            dl_message_history.DataBind();
        }
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        if (IsPostBack && txt_new_message_body.Text != "" && Request.QueryString["sap_id"] != null && Request.QueryString["page_name"] != null)
        {
            //student
            if (Session["std_id"] != null && Session["fct_id"] == null)
            {
                DataSet ds = new DataSet();
                ds = business_function.send_message_send_student(Session["std_id"].ToString(), cryptography_function.decrypt(Request.QueryString["sap_id"].ToString()), txt_new_message_body.Text.ToString().Replace(Environment.NewLine, "<br/>").Replace(" ", "&nbsp;").ToString());
                if (ds.Tables.Count > 0)
                {
                    lbl_error.Visible = false;
                    txt_new_message_body.Text = "";
                    send_message_history_student();
                }
            }
            //faculty
            else if (Session["std_id"] == null && Session["fct_id"] != null)
            {
                DataSet ds = new DataSet();
                ds = business_function.send_message_send_faculty(Session["fct_id"].ToString(), cryptography_function.decrypt(Request.QueryString["sap_id"].ToString()), txt_new_message_body.Text.ToString().Replace(Environment.NewLine, "<br/>").Replace(" ", "&nbsp;").ToString());
                if (ds.Tables.Count > 0)
                {
                    lbl_error.Visible = false;
                    txt_new_message_body.Text = "";
                    send_message_history_faculty();
                }
            }
        }
        else if (txt_new_message_body.Text == "")
        {
            lbl_error.Visible = true;
            lbl_error.Text = "Please enter a text message";
        }
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        if (IsPostBack && Request.QueryString["sap_id"] != null && Request.QueryString["page_name"] != null)
        {
            if (cryptography_function.decrypt(Request.QueryString["page_name"].ToString()).Equals("inbox"))
            {
                Response.Redirect("~/mobile/Message/Inbox_Message.aspx");
            }
            else if (cryptography_function.decrypt(Request.QueryString["page_name"].ToString()).Equals("sent"))
            {
                Response.Redirect("~/mobile/Message/Sent_Message.aspx");
            }
            else
            {
                Response.Redirect("~/mobile/Message/Inbox_Message.aspx");
            }
        }
    }
}