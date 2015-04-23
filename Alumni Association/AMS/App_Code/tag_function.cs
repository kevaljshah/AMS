using CN.Business;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace CN.Tags
{
    public class tag_function
    {
        public static void label_bind(Label label_id, string page_id)
        {
            DataSet ds = business_function.label_tag(label_id.ID.ToString(), page_id);
            label_id.Text = ds.Tables[0].Rows[0]["lbl_text"].ToString();
            label_id.Visible = (bool)ds.Tables[0].Rows[0]["lbl_visible"];
        }

        public static void ddl_bind(DropDownList ddl_id)
        {
            DataSet ds = business_function.dropdown_tag(ddl_id.ID.ToString());
            ddl_id.DataSource = ds.Tables[0];
            ddl_id.DataTextField = "ddl_text";
            ddl_id.DataValueField = "ddl_tag_id";
            ddl_id.Visible = (bool)ds.Tables[0].Rows[0]["ddl_visible"];
            ddl_id.DataBind();
            ds.Clear();
            ddl_id.Dispose();
        }

        public static void ddl_bind_selected_value(DropDownList ddl_id, string selected_value)
        {
            DataSet ds = business_function.dropdown_tag_selected_value(ddl_id.ID.ToString(), selected_value);
            ddl_id.DataSource = ds.Tables[0];
            ddl_id.DataTextField = "ddl_text";
            ddl_id.DataValueField = "ddl_tag_id";
            ddl_id.DataBind();
        }

        public static void watermark(AjaxControlToolkit.TextBoxWatermarkExtender wm_id)
        {
            DataSet ds = business_function.watermark_tag(wm_id.ID.ToString());
            wm_id.WatermarkText = ds.Tables[0].Rows[0]["wm_text"].ToString();
        }

        public static void btn_bind(Button btn_id, string page_id)
        {
            DataSet ds = business_function.btn_tag(btn_id.ID.ToString(), page_id);
            btn_id.Text = ds.Tables[0].Rows[0]["btn_text"].ToString();
            btn_id.Visible = (bool)ds.Tables[0].Rows[0]["btn_visible"];
            btn_id.CausesValidation = (bool)ds.Tables[0].Rows[0]["btn_causesvalidation"];
        }
    }
}