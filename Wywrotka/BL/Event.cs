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
        public string ImgType { get; set; }

       
    }
}