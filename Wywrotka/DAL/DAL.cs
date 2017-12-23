using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.IO;
using System.Drawing.Imaging;
using System.Drawing;

namespace Wywrotka
{
    public static class DAL
    {
        public static string GetConnectionString(string localOrProduction)
        {
            string connString = "";

            if (localOrProduction == "local")
            {
                connString = ConfigurationManager.ConnectionStrings["WywrotkaDBLocal"].ConnectionString;
            }
            else if (localOrProduction == "production")
            {
                connString = ConfigurationManager.ConnectionStrings["WywrotkaDBProduction"].ConnectionString;
            }

            return connString;
        }

        public static DataTable GetGalleriesFromDB()
        {
            DataTable galleries = new DataTable();
            galleries.Columns.Add("ID");
            galleries.Columns.Add("Name");
            try
            {
                string connString = GetConnectionString("local");

                string queryGetGaleries = "SELECT ID, Name FROM dbo.galleries WITH(NOLOCK)";

                using (SqlConnection conn = new SqlConnection(connString))
                {
                    SqlDataAdapter adpt = new SqlDataAdapter(queryGetGaleries, conn);
                    adpt.Fill(galleries);
                }
            }
            catch (Exception)
            {
                galleries = null;
            }

            return galleries;
        }

        public static DataTable GetImagesHeadersFromDB()
        {
            DataTable imagesHeaders = new DataTable();
            imagesHeaders.Columns.Add("ID");
            imagesHeaders.Columns.Add("GalleryID");
            imagesHeaders.Columns.Add("Type");
            imagesHeaders.Columns.Add("ColumnNo");
            imagesHeaders.Columns.Add("Description");

            try
            {
                string connString = GetConnectionString("local");

                string queryGetImagesHeaders = "SELECT ID, GalleryID, Type, ColumnNo, Description FROM dbo.images WITH(NOLOCK)";

                using (SqlConnection conn = new SqlConnection(connString))
                {
                    SqlDataAdapter adpt = new SqlDataAdapter(queryGetImagesHeaders, conn);
                    adpt.Fill(imagesHeaders);
                }
            }
            catch (Exception)
            {
                imagesHeaders = null;
            }

            return imagesHeaders;
        }

        public static DataTable GetPicturesFromGallery(int galleryID)
        {
            DataTable pictures = new DataTable();
            pictures.Columns.Add("ID");
            pictures.Columns.Add("Description");
            try
            {
                string connString = GetConnectionString("local");

                string queryGetPicturesFromGallery = "SELECT ID, Description FROM dbo.images WITH(NOLOCK) WHERE GalleryID = @galleryId";

                using (SqlConnection conn = new SqlConnection(connString))
                {
                    SqlDataAdapter adpt = new SqlDataAdapter(queryGetPicturesFromGallery, conn);
                    adpt.SelectCommand.Parameters.AddWithValue("@galleryId", galleryID.ToString());
                    adpt.Fill(pictures);
                }
            }
            catch (Exception)
            {
                pictures = null;
            }

            return pictures;

        }

        public static bool DeletePictureFromDB(int pictureId)
        {
            bool result = false;

            string queryDeletePicFromGalleryAndDB = "DELETE FROM dbo.images WHERE id = @imageId";

            using (SqlConnection conn = new SqlConnection(GetConnectionString("local")))
            {
                SqlCommand cmd = new SqlCommand(queryDeletePicFromGalleryAndDB, conn);
                SqlParameter paramImageId = new SqlParameter();
                paramImageId.Value = pictureId;
                paramImageId.ParameterName = "@imageId";
                cmd.Parameters.Add(paramImageId);
                cmd.CommandTimeout = 600;
                conn.Open();
                int deletedRows = cmd.ExecuteNonQuery();
                if (deletedRows == 1)
                {
                    result = true;
                }
            }

            return result;
        }

        public static bool DeleteGalleryFromDB(int galleryId)
        {
            bool result = false;

            //deleteing pictures from the gallery
            List<string> pictureInGalleryIdList = GetPicturesFromGallery(galleryId).AsEnumerable().Select(row => row.Field<string>("ID")).ToList();

            foreach (string pictureId in pictureInGalleryIdList.Reverse<string>())
            {
                bool isDeleted = DeletePictureFromDB(Convert.ToInt32(pictureId));
                if (isDeleted == true)
                {
                    pictureInGalleryIdList.Remove(pictureId);
                }
            }

            if (pictureInGalleryIdList.Count == 0)
            {
                string queryDeleteGalleryFromDB = "DELETE FROM dbo.galleries WHERE id = @galleryId";

                using (SqlConnection conn = new SqlConnection(GetConnectionString("local")))
                {
                    SqlCommand cmd = new SqlCommand(queryDeleteGalleryFromDB, conn);
                    SqlParameter paramGalleryId = new SqlParameter();
                    paramGalleryId.Value = galleryId;
                    paramGalleryId.ParameterName = "@galleryId";
                    cmd.Parameters.Add(paramGalleryId);
                    cmd.CommandTimeout = 600;
                    conn.Open();
                    int deletedRows = cmd.ExecuteNonQuery();
                    if (deletedRows == 1)
                    {
                        result = true;
                    }
                }
            }
            return result;
        }

        public static bool InsertNewGalleryToDB(string galleryName)
        {
            bool result = false;

            if (!String.IsNullOrWhiteSpace(galleryName))
            {
                string queryInsertNewGallery = "INSERT INTO dbo.galleries (Name) VALUES (@galleryName)";

                using (SqlConnection conn = new SqlConnection(GetConnectionString("local")))
                {
                    SqlCommand cmd = new SqlCommand(queryInsertNewGallery, conn);
                    SqlParameter paramGalleryName = new SqlParameter("@galleryName", galleryName);
                    cmd.Parameters.Add(paramGalleryName);
                    cmd.CommandTimeout = 600;
                    conn.Open();

                    int insertedRows = cmd.ExecuteNonQuery();
                    if (insertedRows == 1)
                    {
                        result = true;
                    }
                }
            }


            return result;
        }

        public static bool InsertNewImageToDb(Picture imgToSave)
        {
            bool result = false;

            if (imgToSave != null)
            {
                Image img = Image.FromStream(imgToSave.Image.InputStream);

                string imgName = imgToSave.Image.FileName;
                ImageFormat imgFormat = GetImgFormat(imgToSave.Image);


                using (SqlConnection conn = new SqlConnection(GetConnectionString("local")))
                {
                    string query = "INSERT INTO images (Name, Type, Bits, Description, ColumnNo, GalleryId) Values (@imgName, @imgType, @imgBits, @imgDescription, @columnNo, @galleryId)";

                    SqlCommand cmd = new SqlCommand(query, conn);

                    cmd.Parameters.AddWithValue("@imgName", imgName);
                    cmd.Parameters.AddWithValue("@imgType", imgFormat.ToString());
                    cmd.Parameters.AddWithValue("@imgBits", ImageToByteArray(img, imgFormat));
                    cmd.Parameters.AddWithValue("@imgDescription", imgToSave.Description);
                    cmd.Parameters.AddWithValue("@columnNo", imgToSave.Column);
                    cmd.Parameters.AddWithValue("@galleryId", imgToSave.GalleryId);

                    conn.Open();

                    int queryResult = cmd.ExecuteNonQuery();

                    if (queryResult == 1)
                        result = true;
                }
            }
            return result;
        }


        public static byte[] ImageToByteArray(System.Drawing.Image imageIn, System.Drawing.Imaging.ImageFormat imgFormat)
        {
            using (var ms = new MemoryStream()) //nowy memoryStream
            {
                //zapisz w memomryStream obrazek i jego format
                imageIn.Save(ms, imgFormat);
                //zwroc tablice byte
                return ms.ToArray();
            }
        }

        public static ImageFormat GetImgFormat(HttpPostedFile imgFile)
        {
            //zwracana wartosc formatu
            ImageFormat imgFormat;

            //czy plik istnieje
            if (imgFile != null)
            {
                //pobranie typu MIME pliku
                string MIMEtype = imgFile.ContentType;

                //przypisanie typu obrazu na podstawie MIME
                switch (MIMEtype)
                {
                    case "image/gif":
                        imgFormat = System.Drawing.Imaging.ImageFormat.Gif;
                        break;
                    case "image/jpeg":
                        imgFormat = System.Drawing.Imaging.ImageFormat.Jpeg;
                        break;
                    case "image/png":
                        imgFormat = System.Drawing.Imaging.ImageFormat.Png;
                        break;
                    case "image/tiff":
                        imgFormat = System.Drawing.Imaging.ImageFormat.Tiff;
                        break;
                    case "image/bmp":
                        imgFormat = System.Drawing.Imaging.ImageFormat.Bmp;
                        break;
                    default:
                        imgFormat = null;
                        break;
                }

                //jesli nie rozpoznano typu obrazu
                if (imgFormat == null)
                {
                    // #adjust - mozna zalogowac ze nie rozpoznano typu
                }
            }
            else
            {
                imgFormat = null;
                // #adjust - mozna zalogowac ze nie przekazano pliku do metody
            }
            return imgFormat;
        }

        public static DataTable GetEventsFromDB()
        {
            DataTable events = new DataTable();
            events.Columns.Add("ID");
            events.Columns.Add("Title");
            events.Columns.Add("Description");
            events.Columns.Add("StartTime");
            events.Columns.Add("EndTime");
            events.Columns.Add("ImgType");

            try
            {
                string queryGetEvents = "SELECT ID, Title, Description, StartTime, EndTime, ImgType FROM dbo.events WITH(NOLOCK)";

                using (SqlConnection conn = new SqlConnection(GetConnectionString("local")))
                {
                    SqlDataAdapter adpt = new SqlDataAdapter(queryGetEvents, conn);
                    adpt.Fill(events);
                }
            }
            catch (Exception)
            {
                events = null;
            }

            return events;
        }

        public static bool DeleteEventFromDB(int eventId)
        {
            bool result = false;

            string queryDeleteEventFromDB = "DELETE FROM dbo.events WHERE id = @eventId";

            using (SqlConnection conn = new SqlConnection(GetConnectionString("local")))
            {
                SqlCommand cmd = new SqlCommand(queryDeleteEventFromDB, conn);
                SqlParameter paramEventId = new SqlParameter();
                paramEventId.Value = eventId;
                paramEventId.ParameterName = "@eventId";
                cmd.Parameters.Add(paramEventId);
                cmd.CommandTimeout = 600;
                conn.Open();
                int deletedRows = cmd.ExecuteNonQuery();
                if (deletedRows == 1)
                {
                    result = true;
                }
            }

            return result;
        }

        public static bool InsertEventToDB(Event eventToInsert)
        {
            bool addResult = false;

            if (!String.IsNullOrWhiteSpace(eventToInsert.Title))
            {
                string queryDescTitle = ", Description";
                string queryDescVariable = ", @evntDescr";

                string queryImageTitle = ", ImgBits";
                string queryImageVariable = ", @evntImgBits";

                string queryStartTimeTitle = ", StartTime";
                string queryStartTimeVariable = ", @evntStartTime";

                string queryEndTimeTitle = ", EndTime";
                string queryEndTimeVariable = ", @evntEndTime";

                string queryImageTypeTitle = ", ImgType";
                string queryImageTypeVariable = ", @evntImgType";


                using (SqlConnection conn = new SqlConnection(GetConnectionString("local")))
                {

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;

                    if (String.IsNullOrWhiteSpace(eventToInsert.Description))
                    {
                        queryDescTitle = "";
                        queryDescVariable = "";
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@evntDescr", eventToInsert.Description);
                    }

                    if (eventToInsert.Image == null)
                    {
                        queryImageTitle = "";
                        queryImageVariable = "";

                        queryImageTypeTitle = "";
                        queryImageTypeVariable = "";
                    }
                    else
                    {
                        Image img = Image.FromStream(eventToInsert.Image.InputStream);

                        ImageFormat imgFormat = GetImgFormat(eventToInsert.Image);

                        cmd.Parameters.AddWithValue("@evntImgBits", ImageToByteArray(img, imgFormat));
                        cmd.Parameters.AddWithValue("@evntImgType", imgFormat.ToString());

                    }

                    if (eventToInsert.StartTime == null)
                    {
                        queryStartTimeTitle = "";
                        queryStartTimeVariable = "";

                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@evntStartTime", eventToInsert.StartTime);

                    }

                    if (eventToInsert.EndTime == null)
                    {
                        queryEndTimeTitle = "";
                        queryEndTimeVariable = "";
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@evntEndTime", eventToInsert.EndTime);

                    }

                    cmd.Parameters.AddWithValue("@evntTitle", eventToInsert.Title);


                    string query = String.Format("INSERT INTO events (Title {0}{1}{2}{3}{4}) Values (@evntTitle {5}{6}{7}{8}{9})", queryDescTitle, queryImageTitle, queryStartTimeTitle, queryEndTimeTitle, queryImageTypeTitle, queryDescVariable, queryImageVariable, queryStartTimeVariable, queryEndTimeVariable, queryImageTypeVariable);


                    cmd.CommandText = query;
                    conn.Open();

                    int queryResult = cmd.ExecuteNonQuery();

                    if (queryResult == 1)
                        addResult = true;
                }
            }

            return addResult;
        }

    }
}