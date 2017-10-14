using System;
using System.Web;

namespace Wywrotka
{
    public class Event
    {
        public string Title { get; set; }
        public DateTime? EndTime { get; set; }
        public DateTime? StartTime { get; set; }
        public string Description { get; set; }
        public int ID { get; set; }
        public HttpPostedFile Image { get; set; }

        public Event()
        {

        }

        public Event(int id, string title)
        {
            ID = id;
            Title = title;
        }

        public Event(int id, string title, string description, DateTime startTime, DateTime endTime)
        {
            ID = id;
            Title = title;
            Description = description;
            StartTime = startTime;
            EndTime = endTime;
        }
    }
}