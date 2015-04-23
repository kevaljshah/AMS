using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace CN.Business
{
    public class business_function
    {
        static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
        static SqlCommand cmd;
        static SqlDataAdapter da;
        static DataSet ds;

        public static DataSet page_detail(string page_url)
        {
            try
            {
                cmd = new SqlCommand("sp_page_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@page_url", SqlDbType.NVarChar, page_url.Length).Value = page_url;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        internal static DataSet label_tag(string lbl_id, string page_id)
        {
            try
            {
                cmd = new SqlCommand("sp_label_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@page_id", SqlDbType.Int, page_id.Length).Value = page_id;
                cmd.Parameters.Add("@lbl_id", SqlDbType.NVarChar, lbl_id.Length).Value = lbl_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        internal static DataSet dropdown_tag(string ddl_id)
        {
            try
            {
                cmd = new SqlCommand("sp_dropdown_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ddl_id", SqlDbType.NVarChar, ddl_id.Length).Value = ddl_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        internal static DataSet dropdown_tag_selected_value(string ddl_id, string selected_value)
        {
            try
            {
                cmd = new SqlCommand("sp_dropdown_detail_selected_value", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ddl_id", SqlDbType.NVarChar, ddl_id.Length).Value = ddl_id;
                cmd.Parameters.Add("@selected_value", SqlDbType.NVarChar, selected_value.Length).Value = selected_value;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        internal static DataSet watermark_tag(string wm_id)
        {
            try
            {
                cmd = new SqlCommand("sp_watermark_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@wm_id", SqlDbType.NVarChar, wm_id.Length).Value = wm_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        internal static DataSet btn_tag(string btn_id, string page_id)
        {
            try
            {
                cmd = new SqlCommand("sp_button_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@page_id", SqlDbType.Int, page_id.Length).Value = page_id;
                cmd.Parameters.Add("@btn_id", SqlDbType.NVarChar, btn_id.Length).Value = btn_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet add_member(string txt_first_name, string txt_middle_name, string txt_last_name, string txt_gr_no, string txt_roll_no, string ddl_gender, string ddl_division,
            string ddl_program, string ddl_stream, string ddl_passing_year, string ddl_campus, string txt_dob, string ddl_relationship_status, string txt_company_name,
            string txt_designation, string txt_email, string txt_mobile, string txt_landline, string txt_country, string txt_line1, string txt_line2, string txt_city, string txt_state, string txt_pincode)
        {
            try
            {
                cmd = new SqlCommand("sp_add_member", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@txt_first_name", SqlDbType.NVarChar, txt_first_name.Length).Value = txt_first_name;
                cmd.Parameters.Add("@txt_middle_name", SqlDbType.NVarChar, txt_middle_name.Length).Value = txt_middle_name;
                cmd.Parameters.Add("@txt_last_name", SqlDbType.NVarChar, txt_last_name.Length).Value = txt_last_name;
                cmd.Parameters.Add("@txt_gr_no", SqlDbType.NVarChar, txt_gr_no.Length).Value = txt_gr_no;
                cmd.Parameters.Add("@txt_roll_no", SqlDbType.NVarChar, txt_roll_no.Length).Value = txt_roll_no;
                cmd.Parameters.Add("@ddl_gender", SqlDbType.Int, ddl_gender.Length).Value = ddl_gender;
                cmd.Parameters.Add("@ddl_division", SqlDbType.Int, ddl_division.Length).Value = ddl_division;
                cmd.Parameters.Add("@ddl_program", SqlDbType.Int, ddl_program.Length).Value = ddl_program;
                cmd.Parameters.Add("@ddl_stream", SqlDbType.Int, ddl_stream.Length).Value = ddl_stream;
                cmd.Parameters.Add("@ddl_passing_year", SqlDbType.Int, ddl_passing_year.Length).Value = ddl_passing_year;
                cmd.Parameters.Add("@ddl_campus", SqlDbType.Int, ddl_campus.Length).Value = ddl_campus;
                cmd.Parameters.Add("@txt_dob", SqlDbType.NVarChar, txt_dob.Length).Value = txt_dob;
                cmd.Parameters.Add("@ddl_relationship_status", SqlDbType.Int, ddl_relationship_status.Length).Value = ddl_relationship_status;
                cmd.Parameters.Add("@txt_company_name", SqlDbType.NVarChar, txt_company_name.Length).Value = txt_company_name;
                cmd.Parameters.Add("@txt_designation", SqlDbType.NVarChar, txt_designation.Length).Value = txt_designation;
                cmd.Parameters.Add("@txt_email", SqlDbType.NVarChar, txt_email.Length).Value = txt_email;
                cmd.Parameters.Add("@txt_mobile", SqlDbType.NVarChar, txt_mobile.Length).Value = txt_mobile;
                cmd.Parameters.Add("@txt_landline", SqlDbType.NVarChar, txt_landline.Length).Value = txt_landline;
                cmd.Parameters.Add("@ddl_country", SqlDbType.Int, txt_country.Length).Value = txt_country;
                cmd.Parameters.Add("@txt_line1", SqlDbType.NVarChar, txt_line1.Length).Value = txt_line1;
                cmd.Parameters.Add("@txt_line2", SqlDbType.NVarChar, txt_line2.Length).Value = txt_line2;
                cmd.Parameters.Add("@txt_city", SqlDbType.NVarChar, txt_city.Length).Value = txt_city;
                cmd.Parameters.Add("@txt_state", SqlDbType.NVarChar, txt_state.Length).Value = txt_state;
                cmd.Parameters.Add("@txt_pincode", SqlDbType.NVarChar, txt_pincode.Length).Value = txt_pincode;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet excel_Upload(string ddl_gr_no, string ddl_roll_no, string ddl_first_name, string ddl_middle_name, string ddl_last_name, string ddl_program,
            string ddl_stream, string ddl_division, string ddl_passing_year, string ddl_campus)
        {
            try
            {
                cmd = new SqlCommand("sp_excel_upload", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ddl_gr_no", SqlDbType.NVarChar, ddl_gr_no.Length).Value = ddl_gr_no;
                cmd.Parameters.Add("@ddl_roll_no", SqlDbType.NVarChar, ddl_roll_no.Length).Value = ddl_roll_no;
                cmd.Parameters.Add("@ddl_first_name", SqlDbType.NVarChar, ddl_first_name.Length).Value = ddl_first_name;
                cmd.Parameters.Add("@ddl_middle_name", SqlDbType.NVarChar, ddl_middle_name.Length).Value = ddl_middle_name;
                cmd.Parameters.Add("@ddl_last_name", SqlDbType.NVarChar, ddl_last_name.Length).Value = ddl_last_name;
                cmd.Parameters.Add("@ddl_program", SqlDbType.Int, ddl_program.Length).Value = ddl_program;
                cmd.Parameters.Add("@ddl_stream", SqlDbType.Int, ddl_stream.Length).Value = ddl_stream;
                cmd.Parameters.Add("@ddl_division", SqlDbType.Int, ddl_division.Length).Value = ddl_division;
                cmd.Parameters.Add("@ddl_passing_year", SqlDbType.Int, ddl_passing_year.Length).Value = ddl_passing_year;
                cmd.Parameters.Add("@ddl_campus", SqlDbType.Int, ddl_campus.Length).Value = ddl_campus;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet excel_save(string filename, byte[] filebytes, int success, int failed)
        {
            try
            {
                cmd = new SqlCommand("sp_save_excel", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@filename", SqlDbType.NVarChar, filename.Length).Value = filename;
                cmd.Parameters.Add("@filebytes", SqlDbType.VarBinary, filebytes.Length).Value = filebytes;
                cmd.Parameters.Add("@success", SqlDbType.Int, filename.Length).Value = success;
                cmd.Parameters.Add("@failed", SqlDbType.Int, filename.Length).Value = failed;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet add_faculty(string ddl_title, string txt_first_name, string txt_middle_name, string txt_last_name, string txt_sap_id, string ddl_department, string txt_designation, string txt_domain,
            string txt_current_research, string txt_email, string txt_mobile, string ddl_gender)
        {
            try
            {
                cmd = new SqlCommand("sp_add_faculty", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ddl_title", SqlDbType.NVarChar, ddl_title.Length).Value = ddl_title;
                cmd.Parameters.Add("@txt_first_name", SqlDbType.NVarChar, txt_first_name.Length).Value = txt_first_name;
                cmd.Parameters.Add("@txt_middle_name", SqlDbType.NVarChar, txt_middle_name.Length).Value = txt_middle_name;
                cmd.Parameters.Add("@txt_last_name", SqlDbType.NVarChar, txt_last_name.Length).Value = txt_last_name;
                cmd.Parameters.Add("@txt_sap_id", SqlDbType.NVarChar, txt_sap_id.Length).Value = txt_sap_id;
                cmd.Parameters.Add("@ddl_department", SqlDbType.NVarChar, ddl_department.Length).Value = ddl_department;
                cmd.Parameters.Add("@txt_designation", SqlDbType.NVarChar, txt_designation.Length).Value = txt_designation;
                cmd.Parameters.Add("@txt_domain", SqlDbType.NVarChar, txt_domain.Length).Value = txt_domain;
                cmd.Parameters.Add("@txt_current_research", SqlDbType.NVarChar, txt_current_research.Length).Value = txt_current_research;
                cmd.Parameters.Add("@txt_email", SqlDbType.NVarChar, txt_email.Length).Value = txt_email;
                cmd.Parameters.Add("@txt_mobile", SqlDbType.NVarChar, txt_mobile.Length).Value = txt_mobile;
                cmd.Parameters.Add("@ddl_gender", SqlDbType.NVarChar, ddl_gender.Length).Value = ddl_gender;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }


        public static DataSet login(string txt_username, string txt_password)
        {
            try
            {
                cmd = new SqlCommand("sp_login", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@txt_username", SqlDbType.NVarChar, txt_username.Length).Value = txt_username;
                cmd.Parameters.Add("@txt_password", SqlDbType.NVarChar, txt_password.Length).Value = txt_password;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet view_members_grid(string passing_year, string campus, string program, string stream, string registration_status)
        {
            try
            {
                cmd = new SqlCommand("sp_view_members_grid", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@passing_year", SqlDbType.NVarChar, passing_year.Length).Value = passing_year;
                cmd.Parameters.Add("@campus", SqlDbType.NVarChar, campus.Length).Value = campus;
                cmd.Parameters.Add("@program", SqlDbType.NVarChar, program.Length).Value = program;
                cmd.Parameters.Add("@stream", SqlDbType.NVarChar, stream.Length).Value = stream;
                //cmd.Parameters.Add("@division", SqlDbType.NVarChar, division.Length).Value = division;
                cmd.Parameters.Add("@registration_status    ", SqlDbType.NVarChar, registration_status.Length).Value = registration_status;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet member_detail(string std_id)
        {
            try
            {
                cmd = new SqlCommand("sp_member_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet first_login_fct(string fct_id, string txt_username, string txt_password)
        {
            try
            {
                cmd = new SqlCommand("sp_first_login_fct", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
                cmd.Parameters.Add("@txt_username", SqlDbType.NVarChar, txt_username.Length).Value = txt_username;
                cmd.Parameters.Add("@txt_password", SqlDbType.NVarChar, txt_password.Length).Value = txt_password;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet first_login_std(string std_id, string txt_username, string txt_password)
        {
            try
            {
                cmd = new SqlCommand("sp_first_login_std", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@txt_username", SqlDbType.NVarChar, txt_username.Length).Value = txt_username;
                cmd.Parameters.Add("@txt_password", SqlDbType.NVarChar, txt_password.Length).Value = txt_password;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet registered_std(string std_id)
        {
            try
            {
                cmd = new SqlCommand("sp_registered_std", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet registered_fct(string fct_id)
        {
            try
            {
                cmd = new SqlCommand("sp_registered_fct", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet login_cookie_faculty(string username, string password, string fct_id)
        {
            try
            {
                cmd = new SqlCommand("sp_login_cookie_faculty", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
                cmd.Parameters.Add("@username", SqlDbType.NVarChar, username.Length).Value = username;
                cmd.Parameters.Add("@password", SqlDbType.NVarChar, password.Length).Value = password;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet login_cookie_student(string username, string password, string std_id)
        {
            try
            {
                cmd = new SqlCommand("sp_login_cookie_student", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@username", SqlDbType.NVarChar, username.Length).Value = username;
                cmd.Parameters.Add("@password", SqlDbType.NVarChar, password.Length).Value = password;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet faculty_val(string fct_id)
        {
            try
            {
                cmd = new SqlCommand("sp_faculty_val", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet login_faculty_detail(string txt_domain, string txt_current_research, string txt_email, string txt_mobile, string fct_id,
            string ddl_gender, string ddl_title, string ddl_department, string txt_designation)
        {
            try
            {
                cmd = new SqlCommand("sp_login_faculty_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
                cmd.Parameters.Add("@txt_domain", SqlDbType.NVarChar, txt_domain.Length).Value = txt_domain;
                cmd.Parameters.Add("@txt_current_research", SqlDbType.NVarChar, txt_current_research.Length).Value = txt_current_research;
                cmd.Parameters.Add("@txt_email", SqlDbType.NVarChar, txt_email.Length).Value = txt_email;
                cmd.Parameters.Add("@txt_mobile", SqlDbType.NVarChar, txt_mobile.Length).Value = txt_mobile;
                cmd.Parameters.Add("@ddl_gender", SqlDbType.Int, ddl_gender.Length).Value = ddl_gender;
                cmd.Parameters.Add("@ddl_title", SqlDbType.Int, ddl_title.Length).Value = ddl_title;
                cmd.Parameters.Add("@ddl_department", SqlDbType.Int, ddl_department.Length).Value = ddl_department;
                cmd.Parameters.Add("@txt_designation", SqlDbType.NVarChar, txt_designation.Length).Value = txt_designation;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet student_val(string std_id)
        {
            try
            {
                cmd = new SqlCommand("sp_student_val", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet login_student_detail(string std_id, string ddl_gender, string txt_email, string txt_mobile, string txt_landline, string txt_dob, string txt_country, string txt_line1, string txt_line2, string txt_city, string txt_state, string txt_pincode, string ddl_relationship_status, string txt_company_name, string txt_designation)
        {
            try
            {
                cmd = new SqlCommand("sp_login_student_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@ddl_gender", SqlDbType.Int, ddl_gender.Length).Value = ddl_gender;
                cmd.Parameters.Add("@txt_email", SqlDbType.NVarChar, txt_email.Length).Value = txt_email;
                cmd.Parameters.Add("@txt_mobile", SqlDbType.NVarChar, txt_mobile.Length).Value = txt_mobile;
                cmd.Parameters.Add("@txt_landline", SqlDbType.NVarChar, txt_landline.Length).Value = txt_landline;
                cmd.Parameters.Add("@txt_dob", SqlDbType.NVarChar, txt_dob.Length).Value = txt_dob;
                cmd.Parameters.Add("@txt_country", SqlDbType.NVarChar, txt_country.Length).Value = txt_country;
                cmd.Parameters.Add("@txt_line1", SqlDbType.NVarChar, txt_line1.Length).Value = txt_line1;
                cmd.Parameters.Add("@txt_line2", SqlDbType.NVarChar, txt_line2.Length).Value = txt_line2;
                cmd.Parameters.Add("@txt_city", SqlDbType.NVarChar, txt_city.Length).Value = txt_city;
                cmd.Parameters.Add("@txt_state", SqlDbType.NVarChar, txt_state.Length).Value = txt_state;
                cmd.Parameters.Add("@txt_pincode", SqlDbType.NVarChar, txt_pincode.Length).Value = txt_pincode;
                cmd.Parameters.Add("@ddl_relationship_status", SqlDbType.Int, ddl_relationship_status.Length).Value = ddl_relationship_status;
                cmd.Parameters.Add("@txt_company_name", SqlDbType.NVarChar, txt_company_name.Length).Value = txt_company_name;
                cmd.Parameters.Add("@txt_designation", SqlDbType.NVarChar, txt_designation.Length).Value = txt_designation;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet login_std_profile_image(string std_id, string filename, byte[] filebytes)
        {
            try
            {
                cmd = new SqlCommand("sp_login_std_profile_image", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@filename", SqlDbType.NVarChar, filename.Length).Value = filename;
                cmd.Parameters.Add("@filebytes", SqlDbType.VarBinary, filebytes.Length).Value = filebytes;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet login_fct_profile_image(string fct_id, string filename, byte[] filebytes)
        {
            try
            {
                cmd = new SqlCommand("sp_login_fct_profile_image", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
                cmd.Parameters.Add("@filename", SqlDbType.NVarChar, filename.Length).Value = filename;
                cmd.Parameters.Add("@filebytes", SqlDbType.VarBinary, filebytes.Length).Value = filebytes;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet forgot_password(string txt_username)
        {
            try
            {
                cmd = new SqlCommand("sp_forgot_password", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@txt_username", SqlDbType.NVarChar, txt_username.Length).Value = txt_username;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet forgot_username(string txt_email)
        {
            try
            {
                cmd = new SqlCommand("sp_forgot_username", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@txt_email", SqlDbType.NVarChar, txt_email.Length).Value = txt_email;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet forgot_fct_reset_password(string fct_id, string txt_mailed_password, string txt_new_password)
        {
            try
            {
                cmd = new SqlCommand("sp_forgot_fct_reset_password", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
                cmd.Parameters.Add("@txt_mailed_password", SqlDbType.NVarChar, txt_mailed_password.Length).Value = txt_mailed_password;
                cmd.Parameters.Add("@txt_new_password", SqlDbType.NVarChar, txt_new_password.Length).Value = txt_new_password;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet forgot_std_reset_password(string std_id, string txt_mailed_password, string txt_new_password)
        {
            try
            {
                cmd = new SqlCommand("sp_forgot_std_reset_password", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@txt_mailed_password", SqlDbType.NVarChar, txt_mailed_password.Length).Value = txt_mailed_password;
                cmd.Parameters.Add("@txt_new_password", SqlDbType.NVarChar, txt_new_password.Length).Value = txt_new_password;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet forgot_std_reset_username(string std_id, string @txt_mailed_username, string txt_new_username)
        {
            try
            {
                cmd = new SqlCommand("sp_forgot_std_reset_username", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@txt_mailed_username", SqlDbType.NVarChar, @txt_mailed_username.Length).Value = @txt_mailed_username;
                cmd.Parameters.Add("@txt_new_username", SqlDbType.NVarChar, txt_new_username.Length).Value = txt_new_username;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet forgot_fct_reset_username(string fct_id, string txt_mailed_username, string txt_new_username)
        {
            try
            {
                cmd = new SqlCommand("sp_forgot_fct_reset_username", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
                cmd.Parameters.Add("@txt_mailed_username", SqlDbType.NVarChar, txt_mailed_username.Length).Value = txt_mailed_username;
                cmd.Parameters.Add("@txt_new_username", SqlDbType.NVarChar, txt_new_username.Length).Value = txt_new_username;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet create_newsletter_group(string passing_year, string campus, string program, string stream, string division)
        {
            try
            {
                cmd = new SqlCommand("sp_create_newsletter_group", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@passing_year", SqlDbType.NVarChar, passing_year.Length).Value = passing_year;
                cmd.Parameters.Add("@campus", SqlDbType.NVarChar, campus.Length).Value = campus;
                cmd.Parameters.Add("@program", SqlDbType.NVarChar, program.Length).Value = program;
                cmd.Parameters.Add("@stream", SqlDbType.NVarChar, stream.Length).Value = stream;
                cmd.Parameters.Add("@division", SqlDbType.NVarChar, division.Length).Value = division;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet create_newsletter_ace(string prefixText)
        {
            try
            {
                cmd = new SqlCommand("sp_create_newsletter_ace", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@prefixText", SqlDbType.NVarChar, prefixText.Length).Value = prefixText;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet create_newsletter_individual(string gr_no)
        {
            try
            {
                cmd = new SqlCommand("sp_create_newsletter_individual", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@gr_no", SqlDbType.NVarChar, gr_no.Length).Value = gr_no;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet create_newsletter_detail(string txt_subject, string txt_body)
        {
            try
            {
                cmd = new SqlCommand("sp_create_newsletter_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@txt_subject", SqlDbType.NVarChar, txt_subject.Length).Value = txt_subject;
                cmd.Parameters.Add("@txt_body", SqlDbType.NVarChar, txt_body.Length).Value = txt_body;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet create_newsletter_success(string std_id, string nwt_id)
        {
            try
            {
                cmd = new SqlCommand("sp_create_newsletter_success", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@nwt_id", SqlDbType.Int, nwt_id.Length).Value = nwt_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet view_faculty_grid()
        {
            try
            {
                cmd = new SqlCommand("sp_view_faculty_grid", con);
                cmd.CommandType = CommandType.StoredProcedure;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet faculty_detail(string fct_id)
        {
            try
            {
                cmd = new SqlCommand("sp_faculty_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet master_page_student(string std_id, string folder, string page_name)
        {
            try
            {
                cmd = new SqlCommand("sp_master_page_student", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@folder", SqlDbType.NVarChar, folder.Length).Value = folder;
                cmd.Parameters.Add("@page_name", SqlDbType.NVarChar, page_name.Length).Value = page_name;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet master_page_faculty(string fct_id, string folder, string page_name)
        {
            try
            {
                cmd = new SqlCommand("sp_master_page_faculty", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
                cmd.Parameters.Add("@folder", SqlDbType.NVarChar, folder.Length).Value = folder;
                cmd.Parameters.Add("@page_name", SqlDbType.NVarChar, page_name.Length).Value = page_name;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet add_event_detail(string txt_committee_name, string txt_event_name, string txt_event_description, string txt_event_date_from, string txt_event_date_to, string txt_coordinator1_name, string txt_coordinator2_name, string txt_coordinator1_email, string txt_coordinator2_email, string txt_coordinator1_mobile, string txt_coordinator2_mobile, string filename, byte[] filebytes, string txt_event_from_time, string txt_event_to_time)
        {
            try
            {
                cmd = new SqlCommand("sp_add_event_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@event_name", SqlDbType.NVarChar, txt_event_name.Length).Value = txt_event_name;
                cmd.Parameters.Add("@event_committee_name", SqlDbType.NVarChar, txt_committee_name.Length).Value = txt_committee_name;
                cmd.Parameters.Add("@event_description", SqlDbType.NVarChar, txt_event_description.Length).Value = txt_event_description;
                cmd.Parameters.Add("@event_from_date", SqlDbType.NVarChar, txt_event_date_from.Length).Value = txt_event_date_from;
                cmd.Parameters.Add("@event_to_date", SqlDbType.NVarChar, txt_event_date_to.Length).Value = txt_event_date_to;
                cmd.Parameters.Add("@coordinator1_name", SqlDbType.NVarChar, txt_coordinator1_name.Length).Value = txt_coordinator1_name;
                cmd.Parameters.Add("@coordinator2_name", SqlDbType.NVarChar, txt_coordinator2_name.Length).Value = txt_coordinator2_name;
                cmd.Parameters.Add("@coordinator1_mobile", SqlDbType.NVarChar, txt_coordinator1_mobile.Length).Value = txt_coordinator1_mobile;
                cmd.Parameters.Add("@coordinator2_mobile", SqlDbType.NVarChar, txt_coordinator2_mobile.Length).Value = txt_coordinator2_mobile;
                cmd.Parameters.Add("@coordinator1_email", SqlDbType.NVarChar, txt_coordinator1_email.Length).Value = txt_coordinator1_email;
                cmd.Parameters.Add("@coordinator2_email", SqlDbType.NVarChar, txt_coordinator2_email.Length).Value = txt_coordinator2_email;
                cmd.Parameters.Add("@event_poster_bytes", SqlDbType.VarBinary, filebytes.Length).Value = filebytes;
                cmd.Parameters.Add("@event_poster_filename", SqlDbType.NVarChar, filename.Length).Value = filename;
                cmd.Parameters.Add("@event_from_time", SqlDbType.NVarChar, txt_event_from_time.Length).Value = txt_event_from_time;
                cmd.Parameters.Add("@event_to_time", SqlDbType.NVarChar, txt_event_to_time.Length).Value = txt_event_to_time;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet view_event_upcoming_grid()
        {
            try
            {
                cmd = new SqlCommand("sp_view_event_upcoming_grid", con);
                cmd.CommandType = CommandType.StoredProcedure;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet view_event_past_grid()
        {
            try
            {
                cmd = new SqlCommand("sp_view_event_past_grid", con);
                cmd.CommandType = CommandType.StoredProcedure;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet event_detail(string event_id)
        {
            try
            {
                cmd = new SqlCommand("sp_event_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@event_id", SqlDbType.NVarChar, event_id.Length).Value = event_id;
                do
                {
                    da = new SqlDataAdapter(cmd);
                } while (cmd.Connection.State.ToString() != "Closed");
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet add_event_detail_without_poster(string txt_committee_name, string txt_event_name, string txt_event_description, string txt_event_date_from, string txt_event_date_to, string txt_coordinator1_name, string txt_coordinator2_name, string txt_coordinator1_email, string txt_coordinator2_email, string txt_coordinator1_mobile, string txt_coordinator2_mobile, string txt_event_from_time, string txt_event_to_time)
        {
            try
            {
                cmd = new SqlCommand("sp_add_event_detail_without_poster", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@event_name", SqlDbType.NVarChar, txt_event_name.Length).Value = txt_event_name;
                cmd.Parameters.Add("@event_committee_name", SqlDbType.NVarChar, txt_committee_name.Length).Value = txt_committee_name;
                cmd.Parameters.Add("@event_description", SqlDbType.NVarChar, txt_event_description.Length).Value = txt_event_description;
                cmd.Parameters.Add("@event_from_date", SqlDbType.NVarChar, txt_event_date_from.Length).Value = txt_event_date_from;
                cmd.Parameters.Add("@event_to_date", SqlDbType.NVarChar, txt_event_date_to.Length).Value = txt_event_date_to;
                cmd.Parameters.Add("@coordinator1_name", SqlDbType.NVarChar, txt_coordinator1_name.Length).Value = txt_coordinator1_name;
                cmd.Parameters.Add("@coordinator2_name", SqlDbType.NVarChar, txt_coordinator2_name.Length).Value = txt_coordinator2_name;
                cmd.Parameters.Add("@coordinator1_mobile", SqlDbType.NVarChar, txt_coordinator1_mobile.Length).Value = txt_coordinator1_mobile;
                cmd.Parameters.Add("@coordinator2_mobile", SqlDbType.NVarChar, txt_coordinator2_mobile.Length).Value = txt_coordinator2_mobile;
                cmd.Parameters.Add("@coordinator1_email", SqlDbType.NVarChar, txt_coordinator1_email.Length).Value = txt_coordinator1_email;
                cmd.Parameters.Add("@coordinator2_email", SqlDbType.NVarChar, txt_coordinator2_email.Length).Value = txt_coordinator2_email;
                cmd.Parameters.Add("@event_from_time", SqlDbType.NVarChar, txt_event_from_time.Length).Value = txt_event_from_time;
                cmd.Parameters.Add("@event_to_time", SqlDbType.NVarChar, txt_event_to_time.Length).Value = txt_event_to_time;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet login_master_register_student(string std_id)
        {
            try
            {
                cmd = new SqlCommand("sp_login_master_register_student", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet login_master_register_faculty(string fct_id)
        {
            try
            {
                cmd = new SqlCommand("sp_login_master_register_faculty", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet faculty_profile_image(string fct_id)
        {
            try
            {
                cmd = new SqlCommand("sp_faculty_profile_image", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
                do
                {
                    da = new SqlDataAdapter(cmd);
                } while (cmd.Connection.State.ToString() != "Closed");
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }
        public static DataSet student_profile_image(string std_id)
        {
            try
            {
                cmd = new SqlCommand("sp_student_profile_image", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                do
                {
                    da = new SqlDataAdapter(cmd);
                } while (cmd.Connection.State.ToString() != "Closed");
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet event_poster(string event_id)
        {
            try
            {
                cmd = new SqlCommand("sp_event_poster", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@event_id", SqlDbType.Int, event_id.Length).Value = event_id;
                do
                {
                    da = new SqlDataAdapter(cmd);
                } while (cmd.Connection.State.ToString() != "Closed");
            }
            finally
            {
                da.Fill(ds = new DataSet());
                con.Close();
            }
            return ds;
        }

        public static DataSet add_menu_detail(string txt_menu_name, string ddl_menu_visibility, string ddl_show_on_menu_bar, string txt_menu_text)
        {
            try
            {
                cmd = new SqlCommand("sp_add_menu_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@txt_menu_name", SqlDbType.NVarChar, txt_menu_name.Length).Value = txt_menu_name;
                cmd.Parameters.Add("@ddl_menu_visibility", SqlDbType.NVarChar, ddl_menu_visibility.Length).Value = ddl_menu_visibility;
                cmd.Parameters.Add("@ddl_show_on_menu_bar", SqlDbType.NVarChar, ddl_show_on_menu_bar.Length).Value = ddl_show_on_menu_bar;
                cmd.Parameters.Add("@txt_menu_text", SqlDbType.NVarChar, txt_menu_text.Length).Value = txt_menu_text;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet add_page_details(string ddl_menu_name, string txt_page_name, string txt_page_title, string ddl_visibility, string txt_submenu_text, string ddl_page_linked)
        {
            try
            {
                cmd = new SqlCommand("sp_add_page_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ddl_menu_name", SqlDbType.Int, ddl_menu_name.Length).Value = ddl_menu_name;
                cmd.Parameters.Add("@txt_page_name", SqlDbType.NVarChar, txt_page_name.Length).Value = txt_page_name;
                cmd.Parameters.Add("@txt_page_title", SqlDbType.NVarChar, txt_page_title.Length).Value = txt_page_title;
                cmd.Parameters.Add("@ddl_visibility", SqlDbType.NVarChar, ddl_visibility.Length).Value = ddl_visibility;
                cmd.Parameters.Add("@txt_submenu_text", SqlDbType.NVarChar, txt_submenu_text.Length).Value = txt_submenu_text;
                cmd.Parameters.Add("@ddl_page_linked", SqlDbType.NVarChar, ddl_page_linked.Length).Value = ddl_page_linked;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet role_management_parent_val()
        {
            try
            {
                cmd = new SqlCommand("sp_role_management_tree_parent_val", con);
                cmd.CommandType = CommandType.StoredProcedure;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet role_management_child_val(string menu_id)
        {
            try
            {
                cmd = new SqlCommand("sp_role_management_tree_child_val", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@menu_id", SqlDbType.Int, menu_id.Length).Value = menu_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet tree_view_selected_role(string ddl_select_role, string tn_parent, string tn_child)
        {
            try
            {
                cmd = new SqlCommand("sp_tree_view_selected_role", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ddl_select_role", SqlDbType.Int, ddl_select_role.Length).Value = ddl_select_role;
                cmd.Parameters.Add("@tn_parent", SqlDbType.Int, tn_parent.Length).Value = tn_parent;
                cmd.Parameters.Add("@tn_child", SqlDbType.Int, tn_child.Length).Value = tn_child;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet assign_role(string tn_parent, string tn_child, string tn_child_visible, string ddl_select_role)
        {
            try
            {
                cmd = new SqlCommand("sp_assign_role", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@tn_parent", SqlDbType.Int, tn_parent.Length).Value = tn_parent;
                cmd.Parameters.Add("@tn_child", SqlDbType.Int, tn_child.Length).Value = tn_child;
                cmd.Parameters.Add("@tn_child_visible", SqlDbType.Bit, tn_child_visible.Length).Value = tn_child_visible;
                cmd.Parameters.Add("@ddl_select_role", SqlDbType.Int, ddl_select_role.Length).Value = ddl_select_role;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet add_default_selected_role_parent(string ddl_select_role)
        {
            try
            {
                cmd = new SqlCommand("sp_add_default_selected_role_parent", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ddl_select_role", SqlDbType.Int, ddl_select_role.Length).Value = ddl_select_role;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet assign_default_page(string tn_parent, string tn_child, string ddl_select_role)
        {
            try
            {
                cmd = new SqlCommand("sp_assign_default_page", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@tn_parent", SqlDbType.Int, tn_parent.Length).Value = tn_parent;
                cmd.Parameters.Add("@tn_child", SqlDbType.Int, tn_child.Length).Value = tn_child;
                cmd.Parameters.Add("@ddl_select_role", SqlDbType.Int, ddl_select_role.Length).Value = ddl_select_role;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet add_default_selected_role_child(string tn_parent, string ddl_select_role)
        {
            try
            {
                cmd = new SqlCommand("sp_add_default_selected_role_child", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@tn_parent", SqlDbType.Int, tn_parent.Length).Value = tn_parent;
                cmd.Parameters.Add("@ddl_select_role", SqlDbType.Int, ddl_select_role.Length).Value = ddl_select_role;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet master_page_menu(string mem_id, string folder, string page_name)
        {
            try
            {
                cmd = new SqlCommand("sp_master_page_menu", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@mem_id", SqlDbType.Int, mem_id.Length).Value = mem_id;
                cmd.Parameters.Add("@folder", SqlDbType.NVarChar, folder.Length).Value = folder;
                cmd.Parameters.Add("@page_name", SqlDbType.NVarChar, page_name.Length).Value = page_name;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet login_default_selected_role(string selected_role)
        {
            try
            {
                cmd = new SqlCommand("sp_login_default_selected_role", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@selected_role", SqlDbType.Int, selected_role.Length).Value = selected_role;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet login_assign_default(string ddl_select_role, string ddl_page_name)
        {
            try
            {
                cmd = new SqlCommand("sp_login_assign_default", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ddl_select_role", SqlDbType.Int, ddl_select_role.Length).Value = ddl_select_role;
                cmd.Parameters.Add("@ddl_page_name", SqlDbType.Int, ddl_page_name.Length).Value = ddl_page_name;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet login_redirect(string mem_id)
        {
            try
            {
                cmd = new SqlCommand("sp_login_redirect", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@mem_id", SqlDbType.Int, mem_id.Length).Value = mem_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet change_role_ace(string prefixText)
        {
            try
            {
                cmd = new SqlCommand("sp_change_role_ace", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@prefixText", SqlDbType.NVarChar, prefixText.Length).Value = prefixText;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet order_pages_menu_grid(string ddl_select_role)
        {
            try
            {
                cmd = new SqlCommand("sp_order_pages_menu_grid", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ddl_select_role", SqlDbType.Int, ddl_select_role.Length).Value = ddl_select_role;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet change_role_ace_selected_text(string hf_change_role_sap_id)
        {
            try
            {
                cmd = new SqlCommand("sp_change_role_ace_selected_text", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@hf_change_role_sap_id", SqlDbType.NVarChar, hf_change_role_sap_id.Length).Value = hf_change_role_sap_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet change_role(string hf_change_role_sap_id, string ddl_select_role)
        {
            try
            {
                cmd = new SqlCommand("sp_change_role", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@hf_change_role_sap_id", SqlDbType.NVarChar, hf_change_role_sap_id.Length).Value = hf_change_role_sap_id;
                cmd.Parameters.Add("@ddl_select_role", SqlDbType.NVarChar, ddl_select_role.Length).Value = ddl_select_role;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet order_pages_sub_menu_grid(string ddl_select_role)
        {
            try
            {
                cmd = new SqlCommand("sp_order_pages_sub_menu_grid", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ddl_select_role", SqlDbType.Int, ddl_select_role.Length).Value = ddl_select_role;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet order_page_menu_update(string ddl_select_role, string hf_menu_id, string txt_menu_order)
        {
            try
            {
                cmd = new SqlCommand("sp_order_page_menu_update", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ddl_select_role", SqlDbType.Int, ddl_select_role.Length).Value = ddl_select_role;
                cmd.Parameters.Add("@hf_menu_id", SqlDbType.Int, hf_menu_id.Length).Value = hf_menu_id;
                cmd.Parameters.Add("@txt_menu_order", SqlDbType.Int, txt_menu_order.Length).Value = txt_menu_order;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet order_page_submenu_update(string ddl_select_role, string hf_assigned_role_id, string txt_submenu_order)
        {
            try
            {
                cmd = new SqlCommand("sp_order_page_submenu_update", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ddl_select_role", SqlDbType.Int, ddl_select_role.Length).Value = ddl_select_role;
                cmd.Parameters.Add("@hf_assigned_role_id", SqlDbType.Int, hf_assigned_role_id.Length).Value = hf_assigned_role_id;
                cmd.Parameters.Add("@txt_submenu_order", SqlDbType.Int, txt_submenu_order.Length).Value = txt_submenu_order;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet edit_member_ace(string prefixText)
        {
            try
            {
                cmd = new SqlCommand("sp_edit_member_ace", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@prefixText", SqlDbType.NVarChar, prefixText.Length).Value = prefixText;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet edit_member_page_student_val(string std_id)
        {
            try
            {
                cmd = new SqlCommand("sp_edit_member_page_student_val", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet edit_member_details(string txt_first_name, string txt_middle_name, string txt_last_name, string txt_gr_no, string txt_roll_no, string ddl_gender, string ddl_division,
            string ddl_program, string ddl_stream, string ddl_passing_year, string ddl_campus, string txt_dob, string ddl_relationship_status, string txt_company_name,
            string txt_designation, string txt_email, string txt_mobile, string txt_landline, string txt_country, string txt_line1, string txt_line2, string txt_city, string txt_state, string txt_pincode, string std_id)
        {
            try
            {
                cmd = new SqlCommand("sp_edit_member_details", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@txt_first_name", SqlDbType.NVarChar, txt_first_name.Length).Value = txt_first_name;
                cmd.Parameters.Add("@txt_middle_name", SqlDbType.NVarChar, txt_middle_name.Length).Value = txt_middle_name;
                cmd.Parameters.Add("@txt_last_name", SqlDbType.NVarChar, txt_last_name.Length).Value = txt_last_name;
                cmd.Parameters.Add("@txt_gr_no", SqlDbType.NVarChar, txt_gr_no.Length).Value = txt_gr_no;
                cmd.Parameters.Add("@txt_roll_no", SqlDbType.NVarChar, txt_roll_no.Length).Value = txt_roll_no;
                cmd.Parameters.Add("@ddl_gender", SqlDbType.Int, ddl_gender.Length).Value = ddl_gender;
                cmd.Parameters.Add("@ddl_division", SqlDbType.Int, ddl_division.Length).Value = ddl_division;
                cmd.Parameters.Add("@ddl_program", SqlDbType.Int, ddl_program.Length).Value = ddl_program;
                cmd.Parameters.Add("@ddl_stream", SqlDbType.Int, ddl_stream.Length).Value = ddl_stream;
                cmd.Parameters.Add("@ddl_passing_year", SqlDbType.Int, ddl_passing_year.Length).Value = ddl_passing_year;
                cmd.Parameters.Add("@ddl_campus", SqlDbType.Int, ddl_campus.Length).Value = ddl_campus;
                cmd.Parameters.Add("@txt_dob", SqlDbType.NVarChar, txt_dob.Length).Value = txt_dob;
                cmd.Parameters.Add("@ddl_relationship_status", SqlDbType.Int, ddl_relationship_status.Length).Value = ddl_relationship_status;
                cmd.Parameters.Add("@txt_company_name", SqlDbType.NVarChar, txt_company_name.Length).Value = txt_company_name;
                cmd.Parameters.Add("@txt_designation", SqlDbType.NVarChar, txt_designation.Length).Value = txt_designation;
                cmd.Parameters.Add("@txt_email", SqlDbType.NVarChar, txt_email.Length).Value = txt_email;
                cmd.Parameters.Add("@txt_mobile", SqlDbType.NVarChar, txt_mobile.Length).Value = txt_mobile;
                cmd.Parameters.Add("@txt_landline", SqlDbType.NVarChar, txt_landline.Length).Value = txt_landline;
                cmd.Parameters.Add("@ddl_country", SqlDbType.Int, txt_country.Length).Value = txt_country;
                cmd.Parameters.Add("@txt_line1", SqlDbType.NVarChar, txt_line1.Length).Value = txt_line1;
                cmd.Parameters.Add("@txt_line2", SqlDbType.NVarChar, txt_line2.Length).Value = txt_line2;
                cmd.Parameters.Add("@txt_city", SqlDbType.NVarChar, txt_city.Length).Value = txt_city;
                cmd.Parameters.Add("@txt_state", SqlDbType.NVarChar, txt_state.Length).Value = txt_state;
                cmd.Parameters.Add("@txt_pincode", SqlDbType.NVarChar, txt_pincode.Length).Value = txt_pincode;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet change_student_detail_val(string std_id)
        {
            try
            {
                cmd = new SqlCommand("sp_change_student_detail_val", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet student_personal_detail(string std_id, string txt_first_name, string txt_middle_name, string txt_last_name, string txt_dob, string ddl_gender, string ddl_relationship_status, string txt_company_name, string txt_designation)
        {
            try
            {
                cmd = new SqlCommand("sp_student_personal_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@txt_first_name", SqlDbType.NVarChar, txt_first_name.Length).Value = txt_first_name;
                cmd.Parameters.Add("@txt_middle_name", SqlDbType.NVarChar, txt_middle_name.Length).Value = txt_middle_name;
                cmd.Parameters.Add("@txt_last_name", SqlDbType.NVarChar, txt_last_name.Length).Value = txt_last_name;
                cmd.Parameters.Add("@txt_dob", SqlDbType.NVarChar, txt_dob.Length).Value = txt_dob;
                cmd.Parameters.Add("@ddl_gender", SqlDbType.Int, ddl_gender.Length).Value = ddl_gender;
                cmd.Parameters.Add("@ddl_relationship_status", SqlDbType.Int, ddl_relationship_status.Length).Value = ddl_relationship_status;
                cmd.Parameters.Add("@txt_company_name", SqlDbType.NVarChar, txt_company_name.Length).Value = txt_company_name;
                cmd.Parameters.Add("@txt_designation", SqlDbType.NVarChar, txt_designation.Length).Value = txt_designation;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet student_mailing_detail(string std_id, string ddl_country, string txt_line1, string txt_line2, string txt_city, string txt_state, string txt_pincode)
        {
            try
            {
                cmd = new SqlCommand("sp_student_mailing_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@ddl_country", SqlDbType.Int, ddl_country.Length).Value = ddl_country;
                cmd.Parameters.Add("@txt_line1", SqlDbType.NVarChar, txt_line1.Length).Value = txt_line1;
                cmd.Parameters.Add("@txt_line2", SqlDbType.NVarChar, txt_line2.Length).Value = txt_line2;
                cmd.Parameters.Add("@txt_city", SqlDbType.NVarChar, txt_city.Length).Value = txt_city;
                cmd.Parameters.Add("@txt_state", SqlDbType.NVarChar, txt_state.Length).Value = txt_state;
                cmd.Parameters.Add("@txt_pincode", SqlDbType.NVarChar, txt_pincode.Length).Value = txt_pincode;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet student_contact_detail(string std_id, string txt_email, string txt_mobile, string txt_landline)
        {
            try
            {
                cmd = new SqlCommand("sp_student_contact_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@txt_email", SqlDbType.NVarChar, txt_email.Length).Value = txt_email;
                cmd.Parameters.Add("@txt_mobile", SqlDbType.NVarChar, txt_mobile.Length).Value = txt_mobile;
                cmd.Parameters.Add("@txt_landline", SqlDbType.NVarChar, txt_landline.Length).Value = txt_landline;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet student_username_detail(string std_id, string txt_username)
        {
            try
            {
                cmd = new SqlCommand("sp_student_contact_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@txt_username", SqlDbType.NVarChar, txt_username.Length).Value = txt_username;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet student_password_detail(string std_id, string txt_current_password, string txt_new_password)
        {
            try
            {
                cmd = new SqlCommand("sp_student_password_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@txt_current_password", SqlDbType.NVarChar, txt_current_password.Length).Value = txt_current_password;
                cmd.Parameters.Add("@txt_new_password", SqlDbType.NVarChar, txt_new_password.Length).Value = txt_new_password;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet change_profile_image_student_upload(string std_id, string filename, byte[] filebytes)
        {
            try
            {
                cmd = new SqlCommand("sp_change_profile_image_student_upload", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@filename", SqlDbType.NVarChar, filename.Length).Value = filename;
                cmd.Parameters.Add("@filebytes", SqlDbType.VarBinary, filebytes.Length).Value = filebytes;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet change_profile_image_faculty_upload(string fct_id, string filename, byte[] filebytes)
        {
            try
            {
                cmd = new SqlCommand("sp_change_profile_image_faculty_upload", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
                cmd.Parameters.Add("@filename", SqlDbType.NVarChar, filename.Length).Value = filename;
                cmd.Parameters.Add("@filebytes", SqlDbType.VarBinary, filebytes.Length).Value = filebytes;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet change_profile_image_student_remove(string std_id)
        {
            try
            {
                cmd = new SqlCommand("sp_change_profile_image_student_remove", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet change_profile_image_faculty_remove(string fct_id)
        {
            try
            {
                cmd = new SqlCommand("sp_change_profile_image_faculty_remove", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet search_members_count(string ddl_passing_year, string ddl_campus, string ddl_program, string ddl_stream, string ddl_registration_status)
        {
            try
            {
                cmd = new SqlCommand("sp_search_members_count", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ddl_passing_year", SqlDbType.NVarChar, ddl_passing_year.Length).Value = ddl_passing_year;
                cmd.Parameters.Add("@ddl_campus", SqlDbType.NVarChar, ddl_campus.Length).Value = ddl_campus;
                cmd.Parameters.Add("@ddl_program", SqlDbType.NVarChar, ddl_program.Length).Value = ddl_program;
                cmd.Parameters.Add("@ddl_stream", SqlDbType.NVarChar, ddl_stream.Length).Value = ddl_stream;
                //cmd.Parameters.Add("@ddl_division", SqlDbType.NVarChar, ddl_division.Length).Value = ddl_division;
                cmd.Parameters.Add("@ddl_registration_status", SqlDbType.NVarChar, ddl_registration_status.Length).Value = ddl_registration_status;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet edit_faculty_ace(string prefixText)
        {
            try
            {
                cmd = new SqlCommand("sp_edit_faculty_ace", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@prefixText", SqlDbType.NVarChar, prefixText.Length).Value = prefixText;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet edit_faculty_page_faculty_val(string fct_id)
        {
            try
            {
                cmd = new SqlCommand("sp_edit_faculty_page_faculty_val", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet edit_faculty_details(string fct_id, string ddl_title, string txt_first_name, string txt_middle_name, string txt_last_name, string txt_sap_id,
            string ddl_gender, string txt_email, string txt_mobile, string ddl_department, string txt_designation, string txt_domain, string txt_current_research)
        {
            try
            {
                cmd = new SqlCommand("sp_edit_faculty_details", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
                cmd.Parameters.Add("@ddl_title", SqlDbType.Int, ddl_title.Length).Value = ddl_title;
                cmd.Parameters.Add("@txt_first_name", SqlDbType.NVarChar, txt_first_name.Length).Value = txt_first_name;
                cmd.Parameters.Add("@txt_middle_name", SqlDbType.NVarChar, txt_middle_name.Length).Value = txt_middle_name;
                cmd.Parameters.Add("@txt_last_name", SqlDbType.NVarChar, txt_last_name.Length).Value = txt_last_name;
                cmd.Parameters.Add("@txt_sap_id", SqlDbType.NVarChar, txt_sap_id.Length).Value = txt_sap_id;
                cmd.Parameters.Add("@ddl_gender", SqlDbType.Int, ddl_gender.Length).Value = ddl_gender;
                cmd.Parameters.Add("@txt_email", SqlDbType.NVarChar, txt_email.Length).Value = txt_email;
                cmd.Parameters.Add("@txt_mobile", SqlDbType.NVarChar, txt_mobile.Length).Value = txt_mobile;
                cmd.Parameters.Add("@ddl_department", SqlDbType.Int, ddl_department.Length).Value = ddl_department;
                cmd.Parameters.Add("@txt_designation", SqlDbType.NVarChar, txt_designation.Length).Value = txt_designation;
                cmd.Parameters.Add("@txt_domain", SqlDbType.NVarChar, txt_domain.Length).Value = txt_domain;
                cmd.Parameters.Add("@txt_current_research", SqlDbType.NVarChar, txt_current_research.Length).Value = txt_current_research;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet send_message_ace(string prefixText)
        {
            try
            {
                cmd = new SqlCommand("sp_send_message_ace", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@prefixText", SqlDbType.NVarChar, prefixText.Length).Value = prefixText;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet send_message_send_student(string msg_from, string msg_to, string msg_text)
        {
            try
            {
                cmd = new SqlCommand("sp_send_message_send_student", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@msg_from", SqlDbType.BigInt, msg_from.Length).Value = msg_from;
                cmd.Parameters.Add("@msg_to", SqlDbType.NVarChar, msg_to.Length).Value = msg_to;
                cmd.Parameters.Add("@msg_text", SqlDbType.NVarChar, msg_text.Length).Value = msg_text;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet send_message_send_faculty(string msg_from, string msg_to, string msg_text)
        {
            try
            {
                cmd = new SqlCommand("sp_send_message_send_faculty", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@msg_from", SqlDbType.BigInt, msg_from.Length).Value = msg_from;
                cmd.Parameters.Add("@msg_to", SqlDbType.NVarChar, msg_to.Length).Value = msg_to;
                cmd.Parameters.Add("@msg_text", SqlDbType.NVarChar, msg_text.Length).Value = msg_text;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet inbox_message_grid_student(string std_id)
        {
            try
            {
                cmd = new SqlCommand("sp_inbox_message_grid_student", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet sent_message_grid_student(string std_id)
        {
            try
            {
                cmd = new SqlCommand("sp_sent_message_grid_student", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet sent_message_grid_faculty(string fct_id)
        {
            try
            {
                cmd = new SqlCommand("sp_sent_message_grid_faculty", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet send_message_history_student(string msg_from, string msg_to)
        {
            try
            {
                cmd = new SqlCommand("sp_send_message_history_student", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@msg_from", SqlDbType.BigInt, msg_from.Length).Value = msg_from;
                cmd.Parameters.Add("@msg_to", SqlDbType.NVarChar, msg_to.Length).Value = msg_to;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet send_message_history_faculty(string msg_from, string msg_to)
        {
            try
            {
                cmd = new SqlCommand("sp_send_message_history_faculty", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@msg_from", SqlDbType.BigInt, msg_from.Length).Value = msg_from;
                cmd.Parameters.Add("@msg_to", SqlDbType.NVarChar, msg_to.Length).Value = msg_to;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet inbox_message_grid_faculty(string fct_id)
        {
            try
            {
                cmd = new SqlCommand("sp_inbox_message_grid_faculty", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet forgot_password_fct_check(string fct_id, string new_password)
        {
            try
            {
                cmd = new SqlCommand("sp_forgot_password_fct_check", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
                cmd.Parameters.Add("@new_password", SqlDbType.NVarChar, new_password.Length).Value = new_password;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet forgot_password_std_check(string std_id, string new_password)
        {
            try
            {
                cmd = new SqlCommand("sp_forgot_password_std_check", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@new_password", SqlDbType.NVarChar, new_password.Length).Value = new_password;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet forgot_username_fct_check(string fct_id, string new_username)
        {
            try
            {
                cmd = new SqlCommand("sp_forgot_username_fct_check", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
                cmd.Parameters.Add("@new_username", SqlDbType.NVarChar, new_username.Length).Value = new_username;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet forgot_username_std_check(string std_id, string new_username)
        {
            try
            {
                cmd = new SqlCommand("sp_forgot_username_std_check", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
                cmd.Parameters.Add("@new_username", SqlDbType.NVarChar, new_username.Length).Value = new_username;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet add_album(string txt_album_name, string ddl_album_visibility)
        {
            try
            {
                cmd = new SqlCommand("sp_add_album", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@txt_album_name", SqlDbType.NVarChar, txt_album_name.Length).Value = txt_album_name;
                cmd.Parameters.Add("@ddl_album_visibility", SqlDbType.NVarChar, ddl_album_visibility.Length).Value = ddl_album_visibility;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet add_album_images(string album_id, string filename, string filebytes)
        {
            try
            {
                cmd = new SqlCommand("sp_add_album_images", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@album_id", SqlDbType.BigInt, album_id.Length).Value = album_id;
                cmd.Parameters.Add("@filename", SqlDbType.NVarChar, filename.Length).Value = filename;
                cmd.Parameters.Add("@filebytes", SqlDbType.NVarChar, filebytes.Length).Value = filebytes;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }

        public static DataSet view_album()
        {
            try
            {
                cmd = new SqlCommand("sp_view_album", con);
                cmd.CommandType = CommandType.StoredProcedure;
            }
            finally
            {
                da = new SqlDataAdapter(cmd);
                da.Fill(ds = new DataSet());
            }
            return ds;
        }
    }
}