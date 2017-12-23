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
                string title = row["Title"].ToString();

                string startTime;
                if (!String.IsNullOrWhiteSpace(row["StartTime"].ToString()))
                {
                    startTime = (row["StartTime"]).ToString();
                    DateTime startTimeDT = new DateTime();
                    DateTime.TryParse(startTime, out startTimeDT);
                    startTime = startTimeDT.ToString("dd-MM-yyyy HH:mm");
                }
                else
                {
                    startTime = "";
                }

                string endTime;
                if (!String.IsNullOrWhiteSpace(row["EndTime"].ToString()))
                {
                    endTime = (row["StartTime"]).ToString();
                    DateTime endTimeDT = new DateTime();
                    DateTime.TryParse(endTime, out endTimeDT);
                    endTime = endTimeDT.ToString("dd-MM-yyyy  HH:mm");
                }
                else
                {
                    endTime = "";
                }

                string description;
                if (row["Description"] != null)
                {
                    description = (row["Description"]).ToString();
                }
                else
                {
                    description = "";
                }

                string imgType;
                if (row["ImgType"] != null)
                {
                    imgType = (row["ImgType"]).ToString();
                }
                else
                {
                    imgType = "";
                }

                LiteralControl litEventHtml = new LiteralControl();
                litEventHtml.Text = "<div class=\"row no-gutters mt-5\">" +
                                            "<div class=\"col-3 p-0 pr-2\">" +
                                                "<div class=\"row no-gutters\">" +
                                                    "<div class=\"col-12\">" +
                                                        "<img class=\"img-fluid\" src=\"" + "Admin/ByteToImgEventsHandler.ashx?evntId=" + ID +"&imgType="+ imgType +"\"/>" +
                                                    "</div>" +
                                                "</div>" +
                                                "<div class=\"row mt-5\">" +
                                                    "<div class=\"col-12 text-center\">"+
                                                         "<p>" + startTime + "</p>" +
                                                    "</div>" +
                                                       "<div class=\"col-12 text-center\">" +
                                                         "<p>" + endTime + "</p>" +
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