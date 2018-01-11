using System.Web;

namespace Wywrotka
{
    public class Picture
    {
        public int ID { get; set; }
        public string Type { get; set; }
        public HttpPostedFile Image { get; set; }
        public int Column { get; set; }
        public int GalleryId { get; set; }
        public string Description { get; set; }
    }
}