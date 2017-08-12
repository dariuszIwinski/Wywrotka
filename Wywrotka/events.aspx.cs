using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Wywrotka
{
    public partial class events : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtEVents = BL_Events.GetEvents();

            foreach (DataRow row in dtEVents.Rows)
            {
                string ID = row["ID"].ToString();
                string date = ((DateTime)row["EventDate"]).ToString("dd-MM-yy <br> HH:mm");
                string title = row["EventTitle"].ToString();
                string descrShort = row["EventShortDescription"].ToString();
                string descrLong = row["EventLongDescription"].ToString();
                string image = row["EventImage"].ToString();


                string eventHtmlStart = "<div class=\"row no-gutters mt-5\"><div class=\"col-3 p-0 pr-2\"><div class=\"row no-gutters\"><div class=\"col-12\">" +
                    "<img class=\"img-fluid\" src=\""  +"img/rollers.jpg" + "\"/></div></div><div class=\"row no-gutters\"><div class=\"col-12 text-center\">"+
                    "<h3>" + date + "</h3></div></div></div><div class=\"col-9\">" +
                   "<h2>" + title + "</h2><p class=\"text-justify\">" +
                   descrShort + "</p><p class=\"text-justify\">" +
                   descrLong + "<p><a href = \"\"> więcej...</a></p></div></div>";

                LiteralControl literal = new LiteralControl();
                literal.Text = eventHtmlStart;

                PanelEvents.Controls.Add(literal);
            }


        }

    }
}