using CN.Business;
using CN.Tags;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gallery_Add_Album : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tag_function.ddl_bind(ddl_album_visibility);
            rfv_album_visibility.InitialValue = ddl_album_visibility.SelectedValue;
        }
    }
    protected void btn_add_album_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            lbl_add_album_error.Visible = false;
            DataSet ds = new DataSet();
            ds = business_function.add_album(txt_album_name.Text, ddl_album_visibility.SelectedItem.Text);
            if (ds.Tables.Count > 0)
            {
                lbl_add_album_error.Visible = true;
                lbl_add_album_error.Text = "New Album Name Added";
            }
            else if (ds.Tables.Count == 0)
            {

                lbl_add_album_error.Visible = true;
                lbl_add_album_error.Text = " Album Name Already Exists";
            }
        }
    }
}