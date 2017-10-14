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
            DataTable dtEVents = DAL.GetEventsFromDB();

            foreach (DataRow row in dtEVents.Rows)
            {
                string ID = row["ID"].ToString();
                string startTime = ((DateTime)row["StartTime"]).ToString("dd-MM-yy <br> HH:mm");
                string endTime = ((DateTime)row["EndTime"]).ToString("dd-MM-yy <br> HH:mm");

                string title = row["Title"].ToString();
                string description = row["Description"].ToString();

                LiteralControl litEventHtml = new LiteralControl();
                litEventHtml.Text = "<div class=\"row no-gutters mt-5\">" +
                                            "<div class=\"col-3 p-0 pr-2\">" +
                                                "<div class=\"row no-gutters\">" +
                                                    "<div class=\"col-12\">" +
                                                        "<img class=\"img-fluid\" src=\""  +"img/rollers.jpg" + "\"/>" + //zmienic na generic handler
                                                    "</div>" +
                                                "</div>" +
                                                "<div class=\"row no-gutters\">" +
                                                    "<div class=\"col-12 text-center\">"+
                                                         "<h3>" + startTime + "</h3>" +
                                                    "</div>" +
                                                       "<div class=\"col-12 text-center\">" +
                                                         "<h3>" + endTime + "</h3>" +
                                                    "</div>" +
                                                "</div>" +
                                            "</div>" +
                                            "<div class=\"col-9\">" +
                                                "<h2>" + title + "</h2>" +
                                                "<p class=\"text-justify\">" + description + "</p>" +
                                           "</div>" +
                                       "</div>";

                PanelEvents.Controls.Add(litEventHtml);
            }


        }

    }
}