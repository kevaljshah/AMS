using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CN.Business;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace CN.Images
{
    public class images_function
    {
        public static void login_profile_image_student(HttpContext context)
        {
            DataSet ds = new DataSet();
            ds = business_function.student_profile_image(context.Request.QueryString["std_id"].ToString());
            if (ds.Tables.Count > 0 && context.Request.QueryString["std_id"].ToString() == ds.Tables[0].Rows[0]["std_id"].ToString())
            {
                context.Response.BinaryWrite((Byte[])ds.Tables[0].Rows[0]["img_filebytes"]);
                context.Response.End();
            }
        }

        public static void login_profile_image_faculty(HttpContext context)
        {
            DataSet ds = new DataSet();
            ds = business_function.faculty_profile_image(context.Request.QueryString["fct_id"].ToString());
            if (ds.Tables.Count > 0 && context.Request.QueryString["fct_id"].ToString() == ds.Tables[0].Rows[0]["fct_id"].ToString())
            {
                context.Response.BinaryWrite((Byte[])ds.Tables[0].Rows[0]["img_filebytes"]);
                context.Response.End();
            }
        }

        public static void event_poster(HttpContext context)
        {
            DataSet ds = new DataSet();
            ds = business_function.event_poster(context.Request.QueryString["event_id"].ToString());
            if (ds.Tables.Count > 0 && context.Request.QueryString["event_id"].ToString() == ds.Tables[0].Rows[0]["event_id"].ToString())
            {
                context.Response.BinaryWrite((Byte[])ds.Tables[0].Rows[0]["event_poster_bytes"]);
                context.Response.End();
            }
        }
    }
}