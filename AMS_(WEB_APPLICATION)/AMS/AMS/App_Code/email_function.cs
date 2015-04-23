using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Configuration;
using System.Net.Mail;
using System.Web;
using System.Web.UI.WebControls;

namespace CN.Email
{
    public class email_function
    {
        static SmtpSection smtpsettings = (SmtpSection)ConfigurationManager.GetSection("system.net/mailSettings/smtp");
        public static bool send_email(string body, string subject, string email_id)
        {
            try
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.To.Add(email_id);
                mailMessage.From = new MailAddress(smtpsettings.From);
                mailMessage.Subject = subject;
                mailMessage.Body = body;
                mailMessage.IsBodyHtml = true;
                SmtpClient smtpClient = new SmtpClient();
                smtpClient.Credentials = new NetworkCredential(smtpsettings.From, smtpsettings.Network.Password);
                smtpClient.EnableSsl = smtpsettings.Network.EnableSsl;
                smtpClient.Send(mailMessage);
                return true;
            }
            catch (Exception ex)
            {
                string s = ex.Message;
                return false;
            }
        }

        public static bool forgot_password(string email_id, string name, string url)
        {
            string subject = "New Password Generated";
            string body = "<p><span> Dear <b>" + name + "</b>,</span><span> <br><br></span></p> <p><span> We have received your request to generate your new password. </span><span>To reset your password, click this link.</span><span><br> </span><a href=" + url + ">" + url + "</a><span><br> <br> <span>Please note:&nbsp;</span><br> <span>If you cannot access this link, copy and paste the entire URL into your browser.</span> </span><span>Your username remains the same.<br> <br> Regards,<br> <b>MPSTME AMS Team</b><br> <br> Note: This is a system generated e-mail, please do not reply to it.<br> *** This message is intended only for the person or entity to which it is addressed and may contain confidential and/or privileged information. If you have received this message in error, please notify the sender immediately and delete this message from your system ***</span><span></span></p>";
            return send_email(body, subject, email_id);
        }

        public static bool forgot_username(string email_id, string name, string url, string current_username)
        {
            string subject = "Username Reset Email";
            string body = "<p><span>Dear <b>" + name + "</b>,</span><span><br><br></span></p> <p><span>We have received your request </span><span>to reset your password. Your current username is <b>" + current_username + "</b>.<br><br><br> If you wish to reset your username, please click the link below.</span></p> <p><a href=" + url + ">" + url + "</a><span><br> <br> <span>Please note:&nbsp;</span><br> <span>If you cannot access this link, copy and paste the entire URL into your browser.</span> </span><span>Your password remains the same.<br> <br> Regards,<br> <b>MPSTME AMS Team</b><br> <br> Note: This is a system generated e-mail, please do not reply to it.<br> *** This message is intended only for the person or entity to which it is addressed and may contain confidential and/or privileged information. If you have received this message in error, please notify the sender immediately and delete this message from your system ***</span><span></span></p><p>";
            return send_email(body, subject, email_id);
        }

    }
}