using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Wywrotka
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            string email = txtContactEmail.Text.Trim();
            string name = txtContactName.Text.Trim();

            var toAddress = new MailAddress(email, name);
            var fromAddress = new MailAddress("wwwywrotka@gmail.com", "Wwwywrotka");
            string fromPassword = "wwwywrotkaaa";
            string subject = "Msg from " + name + " on wywrotka.eu site";
            string body = name + " ( " + email + " )  pisze: " + txtContactMessage.Text.Trim();
            txtContactEmail.Text = "";
            txtContactMessage.Text = "";
            txtContactName.Text = "";
            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                Timeout = 20000
            };
            using (var message = new MailMessage(fromAddress, fromAddress)
            {
                Subject = subject,
                Body = body,
                IsBodyHtml = true
            })

                try
                {
                    smtp.Send(message);

                }
                catch (Exception)
                {

                }
        }
    }
}