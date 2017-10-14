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
    public class ImageByteToFormatHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string connectionString = DAL.GetConnectionString("local");

            string imageId = context.Request.QueryString["imgId"];
            string imgFormat = context.Request.QueryString["imgFormat"];

            string query = "SELECT Bits FROM dbo.images WHERE id = @imageId";


            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@imageId", imageId);

                conn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    context.Response.ContentType = "image/" + imgFormat;
                    context.Response.BinaryWrite((byte[])rdr["Bits"]);
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