using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
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
            cmd = new SqlCommand("sp_page_detail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@page_url", SqlDbType.NVarChar, page_url.Length).Value = page_url;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        internal static DataSet label_tag(string lbl_id, string page_id)
        {
            cmd = new SqlCommand("sp_label_detail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@page_id", SqlDbType.Int, page_id.Length).Value = page_id;
            cmd.Parameters.Add("@lbl_id", SqlDbType.NVarChar, lbl_id.Length).Value = lbl_id;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        internal static DataSet dropdown_tag(string ddl_id)
        {
            cmd = new SqlCommand("sp_dropdown_detail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ddl_id", SqlDbType.NVarChar, ddl_id.Length).Value = ddl_id;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        internal static DataSet dropdown_tag_selected_value(string ddl_id, string selected_value)
        {
            cmd = new SqlCommand("sp_dropdown_detail_selected_value", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ddl_id", SqlDbType.NVarChar, ddl_id.Length).Value = ddl_id;
            cmd.Parameters.Add("@selected_value", SqlDbType.NVarChar, selected_value.Length).Value = selected_value;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        internal static DataSet watermark_tag(string wm_id)
        {
            cmd = new SqlCommand("sp_watermark_detail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@wm_id", SqlDbType.NVarChar, wm_id.Length).Value = wm_id;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        internal static DataSet btn_tag(string btn_id, string page_id)
        {
            cmd = new SqlCommand("sp_button_detail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@page_id", SqlDbType.Int, page_id.Length).Value = page_id;
            cmd.Parameters.Add("@btn_id", SqlDbType.NVarChar, btn_id.Length).Value = btn_id;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet register_member(string txt_first_name, string txt_middle_name, string txt_last_name, string txt_gr_no, string txt_roll_no, string ddl_gender, string ddl_division,
            string ddl_program, string ddl_stream, string ddl_passing_year, string ddl_campus, string txt_dob, string ddl_relationship_status, string txt_company_name,
            string txt_designation, string txt_email, string txt_mobile, string txt_landline, string txt_country, string txt_line1, string txt_line2, string txt_city, string txt_state, string txt_pincode)
        {
            cmd = new SqlCommand("sp_register_member", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@txt_first_name", SqlDbType.NVarChar, txt_first_name.Length).Value = txt_first_name;
            cmd.Parameters.Add("@txt_middle_name", SqlDbType.NVarChar, txt_middle_name.Length).Value = txt_middle_name;
            cmd.Parameters.Add("@txt_last_name", SqlDbType.NVarChar, txt_last_name.Length).Value = txt_last_name;
            cmd.Parameters.Add("@txt_gr_no", SqlDbType.NVarChar, txt_gr_no.Length).Value = txt_gr_no;
            cmd.Parameters.Add("@txt_roll_no", SqlDbType.NVarChar, txt_roll_no.Length).Value = txt_roll_no;
            cmd.Parameters.Add("@ddl_gender", SqlDbType.NVarChar, ddl_gender.Length).Value = ddl_gender;
            cmd.Parameters.Add("@ddl_division", SqlDbType.NVarChar, ddl_division.Length).Value = ddl_division;
            cmd.Parameters.Add("@ddl_program", SqlDbType.NVarChar, ddl_program.Length).Value = ddl_program;
            cmd.Parameters.Add("@ddl_stream", SqlDbType.NVarChar, ddl_stream.Length).Value = ddl_stream;
            cmd.Parameters.Add("@ddl_passing_year", SqlDbType.NVarChar, ddl_passing_year.Length).Value = ddl_passing_year;
            cmd.Parameters.Add("@ddl_campus", SqlDbType.NVarChar, ddl_campus.Length).Value = ddl_campus;
            cmd.Parameters.Add("@txt_dob", SqlDbType.NVarChar, txt_dob.Length).Value = txt_dob;
            cmd.Parameters.Add("@ddl_relationship_status", SqlDbType.NVarChar, ddl_relationship_status.Length).Value = ddl_relationship_status;
            cmd.Parameters.Add("@txt_company_name", SqlDbType.NVarChar, txt_company_name.Length).Value = txt_company_name;
            cmd.Parameters.Add("@txt_designation", SqlDbType.NVarChar, txt_designation.Length).Value = txt_designation;
            cmd.Parameters.Add("@txt_email", SqlDbType.NVarChar, txt_email.Length).Value = txt_email;
            cmd.Parameters.Add("@txt_mobile", SqlDbType.NVarChar, txt_mobile.Length).Value = txt_mobile;
            cmd.Parameters.Add("@txt_landline", SqlDbType.NVarChar, txt_landline.Length).Value = txt_landline;
            cmd.Parameters.Add("@txt_country", SqlDbType.NVarChar, txt_country.Length).Value = txt_country;
            cmd.Parameters.Add("@txt_line1", SqlDbType.NVarChar, txt_line1.Length).Value = txt_line1;
            cmd.Parameters.Add("@txt_line2", SqlDbType.NVarChar, txt_line2.Length).Value = txt_line2;
            cmd.Parameters.Add("@txt_city", SqlDbType.NVarChar, txt_city.Length).Value = txt_city;
            cmd.Parameters.Add("@txt_state", SqlDbType.NVarChar, txt_state.Length).Value = txt_state;
            cmd.Parameters.Add("@txt_pincode", SqlDbType.NVarChar, txt_pincode.Length).Value = txt_pincode;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet Excel_Upload(string ddl_gr_no, string ddl_roll_no, string ddl_first_name, string ddl_middle_name, string ddl_last_name, string ddl_program,
            string ddl_stream, string ddl_division, string ddl_passing_year, string ddl_campus)
        {
            cmd = new SqlCommand("sp_excel_upload", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ddl_gr_no", SqlDbType.NVarChar, ddl_gr_no.Length).Value = ddl_gr_no;
            cmd.Parameters.Add("@ddl_roll_no", SqlDbType.NVarChar, ddl_roll_no.Length).Value = ddl_roll_no;
            cmd.Parameters.Add("@ddl_first_name", SqlDbType.NVarChar, ddl_first_name.Length).Value = ddl_first_name;
            cmd.Parameters.Add("@ddl_middle_name", SqlDbType.NVarChar, ddl_middle_name.Length).Value = ddl_middle_name;
            cmd.Parameters.Add("@ddl_last_name", SqlDbType.NVarChar, ddl_last_name.Length).Value = ddl_last_name;
            cmd.Parameters.Add("@ddl_program", SqlDbType.NVarChar, ddl_program.Length).Value = ddl_program;
            cmd.Parameters.Add("@ddl_stream", SqlDbType.NVarChar, ddl_stream.Length).Value = ddl_stream;
            cmd.Parameters.Add("@ddl_division", SqlDbType.NVarChar, ddl_division.Length).Value = ddl_division;
            cmd.Parameters.Add("@ddl_passing_year", SqlDbType.NVarChar, ddl_passing_year.Length).Value = ddl_passing_year;
            cmd.Parameters.Add("@ddl_campus", SqlDbType.NVarChar, ddl_campus.Length).Value = ddl_campus;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet excel_save(string filename, byte[] filebytes, int success, int failed)
        {
            cmd = new SqlCommand("sp_save_excel", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@filename", SqlDbType.NVarChar, filename.Length).Value = filename;
            cmd.Parameters.Add("@filebytes", SqlDbType.VarBinary, filebytes.Length).Value = filebytes;
            cmd.Parameters.Add("@success", SqlDbType.Int, filename.Length).Value = success;
            cmd.Parameters.Add("@failed", SqlDbType.Int, filename.Length).Value = failed;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet add_faculty(string ddl_title, string txt_first_name, string txt_middle_name, string txt_last_name, string txt_sap_id, string ddl_department, string txt_designation, string txt_domain,
            string txt_current_research, string txt_email, string txt_mobile)
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
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }


        public static DataSet login(string txt_username, string txt_password)
        {
            cmd = new SqlCommand("sp_login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@txt_username", SqlDbType.NVarChar, txt_username.Length).Value = txt_username;
            cmd.Parameters.Add("@txt_password", SqlDbType.NVarChar, txt_password.Length).Value = txt_password;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet view_member_grid()
        {
            cmd = new SqlCommand("sp_view_members", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet member_detail(string std_id)
        {
            cmd = new SqlCommand("sp_member_detail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet first_login_fct(string fct_id, string txt_username, string txt_password)
        {
            cmd = new SqlCommand("sp_first_login_fct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            cmd.Parameters.Add("@txt_username", SqlDbType.NVarChar, txt_username.Length).Value = txt_username;
            cmd.Parameters.Add("@txt_password", SqlDbType.NVarChar, txt_password.Length).Value = txt_password;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;

        }

        public static DataSet first_login_std(string std_id, string txt_username, string txt_password)
        {
            cmd = new SqlCommand("sp_first_login_std", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            cmd.Parameters.Add("@txt_username", SqlDbType.NVarChar, txt_username.Length).Value = txt_username;
            cmd.Parameters.Add("@txt_password", SqlDbType.NVarChar, txt_password.Length).Value = txt_password;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet registered_std(string std_id)
        {
            cmd = new SqlCommand("sp_registered_std", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet registered_fct(string fct_id)
        {
            cmd = new SqlCommand("sp_registered_fct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet login_cookie_faculty(string username, string password, string fct_id)
        {
            cmd = new SqlCommand("sp_login_cookie_faculty", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, username.Length).Value = username;
            cmd.Parameters.Add("@password", SqlDbType.NVarChar, password.Length).Value = password;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet login_cookie_student(string username, string password, string std_id)
        {
            cmd = new SqlCommand("sp_login_cookie_student", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, username.Length).Value = username;
            cmd.Parameters.Add("@password", SqlDbType.NVarChar, password.Length).Value = password;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet login_faculty_val(string fct_id)
        {
            cmd = new SqlCommand("sp_login_faculty_val", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet login_faculty_detail(string txt_domain, string txt_current_research, string txt_email, string txt_mobile, string fct_id)
        {
            cmd = new SqlCommand("sp_login_faculty_detail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            cmd.Parameters.Add("@txt_domain", SqlDbType.NVarChar, txt_domain.Length).Value = txt_domain;
            cmd.Parameters.Add("@txt_current_research", SqlDbType.NVarChar, txt_current_research.Length).Value = txt_current_research;
            cmd.Parameters.Add("@txt_email", SqlDbType.NVarChar, txt_email.Length).Value = txt_email;
            cmd.Parameters.Add("@txt_mobile", SqlDbType.NVarChar, txt_mobile.Length).Value = txt_mobile;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet login_student_val(string std_id)
        {
            cmd = new SqlCommand("sp_login_student_val", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet login_student_detail(string std_id, string ddl_gender, string txt_email, string txt_mobile, string txt_landline, string txt_dob, string txt_country, string txt_line1, string txt_line2, string txt_city, string txt_state, string txt_pincode, string ddl_relationship_status, string txt_company_name, string txt_designation)
        {
            cmd = new SqlCommand("sp_login_student_detail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            cmd.Parameters.Add("@ddl_gender", SqlDbType.NVarChar, ddl_gender.Length).Value = ddl_gender;
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
            cmd.Parameters.Add("@ddl_relationship_status", SqlDbType.NVarChar, ddl_relationship_status.Length).Value = ddl_relationship_status;
            cmd.Parameters.Add("@txt_company_name", SqlDbType.NVarChar, txt_company_name.Length).Value = txt_company_name;
            cmd.Parameters.Add("@txt_designation", SqlDbType.NVarChar, txt_designation.Length).Value = txt_designation;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet login_std_profile_image(string std_id, string filename, byte[] filebytes)
        {
            cmd = new SqlCommand("sp_login_std_profile_image", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            cmd.Parameters.Add("@filename", SqlDbType.NVarChar, filename.Length).Value = filename;
            cmd.Parameters.Add("@filebytes", SqlDbType.VarBinary, filebytes.Length).Value = filebytes;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet login_fct_profile_image(string fct_id, string filename, byte[] filebytes)
        {
            cmd = new SqlCommand("sp_login_fct_profile_image", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            cmd.Parameters.Add("@filename", SqlDbType.NVarChar, filename.Length).Value = filename;
            cmd.Parameters.Add("@filebytes", SqlDbType.VarBinary, filebytes.Length).Value = filebytes;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet forgot_password(string txt_username)
        {
            cmd = new SqlCommand("sp_forgot_password", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@txt_username", SqlDbType.NVarChar, txt_username.Length).Value = txt_username;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet forgot_username(string txt_email)
        {
            cmd = new SqlCommand("sp_forgot_username", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@txt_email", SqlDbType.NVarChar, txt_email.Length).Value = txt_email;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet forgot_std_reset_password(string fct_id, string txt_password, string txt_new_password)
        {
            cmd = new SqlCommand("sp_forgot_fct_reset_password", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            cmd.Parameters.Add("@txt_password", SqlDbType.NVarChar, txt_password.Length).Value = txt_password;
            cmd.Parameters.Add("@txt_new_password", SqlDbType.NVarChar, txt_new_password.Length).Value = txt_new_password;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet forgot_fct_reset_password(string std_id, string txt_password, string txt_new_password)
        {
            cmd = new SqlCommand("sp_forgot_std_reset_password", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            cmd.Parameters.Add("@txt_password", SqlDbType.NVarChar, txt_password.Length).Value = txt_password;
            cmd.Parameters.Add("@txt_new_password", SqlDbType.NVarChar, txt_new_password.Length).Value = txt_new_password;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet forgot_std_reset_username(string std_id, string txt_username, string txt_new_username)
        {

            cmd = new SqlCommand("sp_forgot_std_reset_username", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@std_id", SqlDbType.BigInt, std_id.Length).Value = std_id;
            cmd.Parameters.Add("@txt_username", SqlDbType.NVarChar, txt_username.Length).Value = txt_username;
            cmd.Parameters.Add("@txt_new_username", SqlDbType.NVarChar, txt_new_username.Length).Value = txt_new_username;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet forgot_fct_reset_username(string fct_id, string txt_username, string txt_new_username)
        {
            cmd = new SqlCommand("sp_forgot_fct_reset_username", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@fct_id", SqlDbType.BigInt, fct_id.Length).Value = fct_id;
            cmd.Parameters.Add("@txt_username", SqlDbType.NVarChar, txt_username.Length).Value = txt_username;
            cmd.Parameters.Add("@txt_new_username", SqlDbType.NVarChar, txt_new_username.Length).Value = txt_new_username;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet create_newsletter_group(string passing_year, string campus, string program, string stream, string division)
        {
            cmd = new SqlCommand("sp_create_newsletter_group", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@passing_year", SqlDbType.NVarChar, passing_year.Length).Value = passing_year;
            cmd.Parameters.Add("@campus", SqlDbType.NVarChar, campus.Length).Value = campus;
            cmd.Parameters.Add("@program", SqlDbType.NVarChar, program.Length).Value = program;
            cmd.Parameters.Add("@stream", SqlDbType.NVarChar, stream.Length).Value = stream;
            cmd.Parameters.Add("@division", SqlDbType.NVarChar, division.Length).Value = division;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet create_newsletter_ace(string prefixText)
        {
            cmd = new SqlCommand("sp_create_newsletter_ace", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@prefixText", SqlDbType.NVarChar, prefixText.Length).Value = prefixText;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }

        public static DataSet create_newsletter_individual(string gr_no)
        {
            cmd = new SqlCommand("sp_create_newsletter_individual", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@gr_no", SqlDbType.NVarChar, gr_no.Length).Value = gr_no;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds = new DataSet());
            return ds;
        }
    }
}