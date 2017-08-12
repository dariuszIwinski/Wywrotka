using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Wywrotka
{
    public partial class Administration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoginIn_Click(object sender, EventArgs e)
        {
            string login = "adminWywrotka";
            string pass = "XS{w8&dAcXYX8Dzp";

            rowLogin.Visible = false;

            if (!(txtLogin.Text == login && txtPassword.Text == pass))
            {
                rowLogin.Visible = true;
                rowFailedLogin.Visible = true;
                rowAdminJobs.Visible = false;

            }
            else
            {
                rowLogin.Visible = false;
                rowFailedLogin.Visible = false;
                rowAdminJobs.Visible = true;
            }

        }

        protected void btnDeleteEvent_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddEvent_Click(object sender, EventArgs e)
        {

        }

        protected void btnDeletePictures_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddPictures_Click(object sender, EventArgs e)
        {

        }
    }
}