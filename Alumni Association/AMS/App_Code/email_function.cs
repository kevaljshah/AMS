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
            catch
            {
                return false;
            }
        }

        public static bool forgot_password(string email_id, string password)
        {
            string subject = "Password Reset Email";
            string body = "Dear Recipient,<div><br>We have received your request to reset password.</div><div><br>Your new password is: <b>" + password + "</b></div><div>&nbsp;</div><div>Please Note that your username remains the same.<br><br>Regards,<br><b>MPSTME AMS Team</b><br><br>Note: This is a system generated e-mail, please do not reply to it.<br>*** This message is intended only for the person or entity to which it is addressed and may contain confidential and/or privileged information. If you have received this message in error, please notify the sender immediately and delete this message from your system ***</div>";
            return send_email(body, subject, email_id);
        }

        public static bool forgot_username(string email_id, string username)
        {
            string subject = "Username Reset Email";
            string body = "Dear Recipient,<div><br>We have received your request to reset password.</div><div><br>Your new password is: <b>" + username + "</b></div><div>&nbsp;</div><div>Please Note that your username remains the same.<br><br>Regards,<br><b>MPSTME AMS Team</b><br><br>Note: This is a system generated e-mail, please do not reply to it.<br>*** This message is intended only for the person or entity to which it is addressed and may contain confidential and/or privileged information. If you have received this message in error, please notify the sender immediately and delete this message from your system ***</div>";
            return send_email(body, subject, email_id);
        }

    }
}