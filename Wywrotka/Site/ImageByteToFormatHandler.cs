using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Wywrotka
{
    /// <summary>
    /// Summary description for ImageByteToFormatHandler
    /// </summary>
    public class ByteToImgEventsHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string imageId = context.Request.QueryString["evntId"];
            string imgFormat = context.Request.QueryString["imgFormat"];

            string query = "SELECT ImgBits FROM dbo.events WHERE id = @eventId";


            using (SqlConnection conn = new SqlConnection(DAL.GetConnectionString("local")))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@eventId", imageId);

                conn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    context.Response.ContentType = "image/" + imgFormat;
                    context.Response.BinaryWrite((byte[])rdr["ImgBits"]);
                }
                if (rdr != null)
                    rdr.Close();
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}