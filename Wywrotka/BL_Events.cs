using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Wywrotka
{
    public static class BL_Events
    {

        public static DataTable GetEvents()
        {
            DataTable events = new DataTable();

            string query = "SELECT * FROM [didevelopmentDB].[endus].[dbo.wywrotkaEvents] WHERE EventOld = 0;";
            try
            {
                string ConnectionString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(query, con);
                    dataAdapter.Fill(events);
                }
            }
            catch (Exception)
            {

                events = null;
            }
           

            return events;
        }


    }
}