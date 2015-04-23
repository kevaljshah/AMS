using CN.Business;
using CN.Tags;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gallery_Add_Images : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tag_function.ddl_bind(ddl_album_name);
            rfv_album_name.InitialValue = ddl_album_name.SelectedValue;
        }
    }
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            for (int i = 0; i < fu_image.PostedFiles.Count; i++)
            {
                DataSet ds = new DataSet();
                ds = business_function.add_album_images(ddl_album_name.SelectedValue.ToString(), fu_image.PostedFiles[i].FileName, fu_image.PostedFiles[i].ContentLength.ToString());
            }
        }
    }
}