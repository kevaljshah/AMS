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

public partial class Message_Send_Message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        if (IsPostBack && hf_send_message_to.Value.ToString() != "" && txt_new_message_body.Text != "" && txt_send_message_to.Text != "")
        {
            //student
            if (Session["std_id"] != null && Session["fct_id"] == null)
            {
                DataSet ds = new DataSet();
                ds = business_function.send_message_send_student(Session["std_id"].ToString(), hf_send_message_to.Value, txt_new_message_body.Text.ToString().Replace(Environment.NewLine, "<br/>").Replace(" ", "&nbsp;").ToString());
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
                ds = business_function.send_message_send_faculty(Session["fct_id"].ToString(), hf_send_message_to.Value, txt_new_message_body.Text.ToString().Replace(Environment.NewLine, "<br/>").Replace(" ", "&nbsp;").ToString());
                if (ds.Tables.Count > 0)
                {
                    lbl_error.Visible = false;
                    txt_new_message_body.Text = "";
                    send_message_history_faculty();
                }
            }
        }
        else if (hf_send_message_to.Value.ToString() == "")
        {
            lbl_error.Visible = true;
            lbl_error.Text = "Please search a member to send message";
        }
        else if (txt_new_message_body.Text == "")
        {
            lbl_error.Visible = true;
            lbl_error.Text = "Please enter a text message";
        }
    }


    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string[] GetCompletionList(string prefixText, int count, string contextKey)
    {
        DataSet ds = business_function.send_message_ace(prefixText);
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
                returnData.Add(AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(ds.Tables[0].Rows[i]["name"].ToString() + " " + ds.Tables[0].Rows[i]["branch"].ToString(), ds.Tables[0].Rows[i]["sap_id"].ToString()));
            }
        }
        return returnData.ToArray();
    }
    protected void txt_send_message_to_TextChanged(object sender, EventArgs e)
    {
        if (IsPostBack && hf_send_message_to.Value.ToString() != "")
        {
            //student
            if (Session["std_id"] != null && Session["fct_id"] == null)
            {
                send_message_history_student();
            }
            //faculty
            else if (Session["std_id"] == null && Session["fct_id"] != null)
            {
                send_message_history_faculty();
            }
        }
    }
    private void send_message_history_faculty()
    {
        DataSet ds = new DataSet();
        ds = business_function.send_message_history_faculty(Session["fct_id"].ToString(), hf_send_message_to.Value.ToString());
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
        ds = business_function.send_message_history_student(Session["std_id"].ToString(), hf_send_message_to.Value.ToString());
        if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            div_message_history.Visible = true;
            dl_message_history.DataSource = ds.Tables[0];
            dl_message_history.DataBind();
        }
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/mobile/Message/Message_Home.aspx");
    }
}