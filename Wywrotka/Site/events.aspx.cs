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

            List<Event> events = GetEvents();

            if (events.Count > 0)
            {
                foreach (Event eventInstance in events)
                {
                    LiteralControl litEventHtml = new LiteralControl();
                    string startTime = FormatDates(eventInstance.StartTime);
                    string endTime = FormatDates(eventInstance.EndTime);

                    litEventHtml.Text = $"<div class=\"row no-gutters mt-5\"><div class=\"col-3 p-0 pr-2\"><div class=\"row no-gutters\"><div class=\"col-12\"><img class=\"img-fluid\" src=\"Admin/ByteToImgEventsHandler.ashx?evntId={eventInstance.ID}&imgType={eventInstance.ImgType}\"/></div></div><div class=\"row mt-5\"></div></div><div class=\"col-9\"><h2>{eventInstance.Title}</h2><div class=\"row\"><div class=\"col-12 col-md-4\"><span class=\"pr-2 font-weight-bold\">Start: {startTime}</span></div><div class=\"col-12 col-md-4\"><span class=\"pr-2 font-weight-bold\">Koniec: {endTime}</span></div></div><p class=\"text-justify\">{eventInstance.Description}</p></div></div>";

                    PanelEvents.Controls.Add(litEventHtml);
                }
            }
            else
            {
                LiteralControl litEventHtml = new LiteralControl();
                litEventHtml.Text = $"<div class=\"row no-gutters mt-5\"><div class=\"col-12\">Niestety nie ma eventów.</div></div>";
                PanelEvents.Controls.Add(litEventHtml);
            }
           


        }

        private List<Event> GetEvents()
        {
            DataTable dtEVents = DAL.GetEventsFromDB();

            List<Event> events = new List<Event>();

            foreach (DataRow row in dtEVents.Rows)
            {
                Event eventInstance = new Event();

                eventInstance.ID = Convert.ToInt32(row["ID"]);
                eventInstance.Title = row["Title"].ToString();

                if (!String.IsNullOrWhiteSpace(row["StartTime"].ToString()))
                {
                    DateTime startTimeDT = new DateTime();
                    DateTime.TryParse((row["StartTime"]).ToString(), out startTimeDT);
                    eventInstance.StartTime = startTimeDT;
                }
                else
                {
                    eventInstance.StartTime = null;
                }

                if (!String.IsNullOrWhiteSpace(row["EndTime"].ToString()))
                {
                    DateTime endTimeDT = new DateTime();
                    DateTime.TryParse((row["EndTime"]).ToString(), out endTimeDT);
                    eventInstance.EndTime = endTimeDT;
                }
                else
                {
                    eventInstance.EndTime = null;
                }

                if (row["Description"] != null)
                {
                    eventInstance.Description = (row["Description"]).ToString();
                }
                else
                {
                    eventInstance.Description = "";
                }

                if (row["ImgType"] != null)
                {
                    eventInstance.ImgType = (row["ImgType"]).ToString();
                }
                else
                {
                    eventInstance.ImgType = "";
                }

                events.Add(eventInstance);
               
            }
            return events;
        }
         
        private string FormatDates(DateTime? timeToFormat)
        {
            string timeFormated;
            if (timeToFormat != null)
            {
                timeFormated = Convert.ToDateTime(timeToFormat).ToString("yyyy-MM-dd hh:mm");
            }
            else
            {
                timeFormated = "";
            }

            return timeFormated;
        }
    }
}