using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Wywrotka.Site.Admin
{
    /// <summary>
    /// Summary description for ByteToImgEventsHandler
    /// </summary>
    public class ByteToImgEventsHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string connectionString = DAL.GetConnectionString("local");

            string evntId = context.Request.QueryString["evntId"];
            string imgType = context.Request.QueryString["imgType"];

            string query = "SELECT ImgBits FROM dbo.events WHERE id = @evntId";


            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@evntId", evntId);

                conn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    context.Response.ContentType = "image/" + imgType;
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