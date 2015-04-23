<%@ WebHandler Language="C#" Class="ImageHandler" %>

using System;
using System.Web;

public class ImageHandler : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        //faculty
        if (context.Request.QueryString["fct_id"] != null)
        {
            CN.Images.images_function.login_profile_image_faculty(context);
        }

        //student
        if (context.Request.QueryString["std_id"] != null)
        {
            CN.Images.images_function.login_profile_image_student(context);
        }

        //event_poster
        if (context.Request.QueryString["event_id"] != null)
        {
            CN.Images.images_function.event_poster(context);
        }

    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}