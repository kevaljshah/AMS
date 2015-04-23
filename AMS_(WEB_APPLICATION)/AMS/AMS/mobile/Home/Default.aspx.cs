using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_Home_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_AccSet_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/mobile/Events/View_Event.aspx");
    }
    protected void btn_AccSet_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/mobile/Account_Settings/Change_Student_Details.aspx");
    }
    protected void btn_changeprofilepic_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/mobile/Account_Settings/Change_Profile_Image.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/mobile/Message/Message_Home.aspx");
    }
}