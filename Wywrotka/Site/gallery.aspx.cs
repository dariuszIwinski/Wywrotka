using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Wywrotka.BL;

namespace Wywrotka
{
    public partial class gallery : System.Web.UI.Page
    {
        private int lastRandomColumnNumber = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Gallery> galleries = GetGalleries();

                //create row with galleries list
                galleriesListRow.InnerHtml = CreateGalleriesListHtml(galleries).ToString();

                StringBuilder sb = new StringBuilder();
                foreach (Gallery gallery in galleries)
                {
                    List<Picture> pictures = GetGalleryImages(gallery.ID);

                    if (pictures.Count > 0)
                    {
                        //constant part - beggining
                        string galleryImagesHtml = $"<div id=\"gallery1\" class=\"row no-gutters pt-5 mb-5\"><div class=\"col-12\"><div class=\"row no-gutters mt-3 mb-3 ml-3\"><div class=\"col-12\" id=\"GalleryTitles\"><h3>{gallery.Name}</h3></div></div><div class=\"row no-gutters\">";

                        List<List<string>> imagesInColumn1 = new List<List<string>>();
                        List<List<string>> imagesInColumn2 = new List<List<string>>();
                        List<List<string>> imagesInColumn3 = new List<List<string>>();

                        foreach (Picture picture in pictures)
                        {


                            List<string> imgUrlAndDescr = new List<string>();

                            //download single image
                            string ImageUrl = $"ImageByteToFormatHandler.ashx?imgId={picture.ID}&imgFormat={picture.Type}";

                            //check column

                            //column not set
                            if (picture.Column == 0)
                            {
                                if (lastRandomColumnNumber == 0)
                                {
                                    //generate pseudo random number of column to start with
                                    int column = 0;
                                    do
                                    {
                                        Random rnd = new Random();
                                        column = rnd.Next(1, 4);  // column: >= 1 and < 4

                                    } while (column != 1 && column != 2 && column != 3);

                                    //set new column number
                                    picture.Column = column;
                                    //set new last column number
                                    lastRandomColumnNumber = column;
                                }
                                else
                                {
                                    //increment last Random Column number
                                    lastRandomColumnNumber++;
                                    if (lastRandomColumnNumber == 4)
                                    {
                                        lastRandomColumnNumber = 1;
                                    }
                                    picture.Column = lastRandomColumnNumber;
                                }
                            }

                            if (picture.Column == 1)
                            {
                                imgUrlAndDescr.Add(ImageUrl);
                                imgUrlAndDescr.Add(picture.Description);
                                imagesInColumn1.Add(imgUrlAndDescr);

                            }
                            else if (picture.Column == 2)
                            {
                                imgUrlAndDescr.Add(ImageUrl);
                                imgUrlAndDescr.Add(picture.Description);
                                imagesInColumn2.Add(imgUrlAndDescr);

                            }
                            else if (picture.Column == 3)
                            {
                                imgUrlAndDescr.Add(ImageUrl);
                                imgUrlAndDescr.Add(picture.Description);
                                imagesInColumn3.Add(imgUrlAndDescr);

                            }
                        }

                        string galleryImagesHtmlColumn1 = "<div class=\"col-4 p-0\">";
                        foreach (List<string> imgUrlAndDescr in imagesInColumn1)
                        {
                            string imgUrl = imgUrlAndDescr[0];
                            string imgDesc = imgUrlAndDescr[1];

                            galleryImagesHtmlColumn1 += "<figure>" +
                                                             "<img class=\"img-fluid image w-100 gallery-img img-fluid\" src=\"" + imgUrl + "\" />" +
                                                             "<figcaption style=\"text-align:center;\">" +
                                                                imgDesc +
                                                             "</figcaption>" +
                                                         "</figure>";
                        }
                        galleryImagesHtmlColumn1 += "</div>";

                        string galleryImagesHtmlColumn2 = "<div class=\"col-4 p-0\">";
                        foreach (List<string> imgUrlAndDescr in imagesInColumn2)
                        {
                            string imgUrl = imgUrlAndDescr[0];
                            string imgDesc = imgUrlAndDescr[1];

                            galleryImagesHtmlColumn2 += "<figure>" +
                                                             "<img class=\"img-fluid image w-100 gallery-img img-fluid\" src=\"" + imgUrl + "\" />" +
                                                             "<figcaption style=\"text-align:center;\">" +
                                                                imgDesc +
                                                             "</figcaption>" +
                                                         "</figure>";
                        }
                        galleryImagesHtmlColumn2 += "</div>";

                        string galleryImagesHtmlColumn3 = "<div class=\"col-4 p-0\">";
                        foreach (List<string> imgUrlAndDescr in imagesInColumn3)
                        {
                            string imgUrl = imgUrlAndDescr[0];
                            string imgDesc = imgUrlAndDescr[1];

                            galleryImagesHtmlColumn3 += "<figure>" +
                                                             "<img class=\"img-fluid image w-100 gallery-img img-fluid\" src=\"" + imgUrl + "\" />" +
                                                             "<figcaption style=\"text-align:center;\">" +
                                                                imgDesc +
                                                             "</figcaption>" +
                                                         "</figure>";
                        }
                        galleryImagesHtmlColumn3 += "</div>";



                        galleryImagesHtml += galleryImagesHtmlColumn1;
                        galleryImagesHtml += galleryImagesHtmlColumn2;
                        galleryImagesHtml += galleryImagesHtmlColumn3;


                        //constant part - ending
                        galleryImagesHtml += "</div><div class=\"row no-gutters\"><div class=\"col-12\"><p class=\"w-100 text-center\"><a href=\"#\" class=\"gallery-title\"><i class=\"fa fa-arrow-circle-up\" aria-hidden=\"true\" style=\"font-size: 2em;\"></i></a></p></div></div></div></div>";
                        sb.Append(galleryImagesHtml);
                    }
                    else
                    {
                        //if there is no picture in gallery display only header
                        string galleryImagesHtmlEmptyGallery = $"<div id=\"gallery1\" class=\"row no-gutters pt-5 mb-5\"><div class=\"col-12\"><div class=\"row no-gutters mt-3 mb-3 ml-3\"><div class=\"col-12\" id=\"GalleryTitles\"><h3>{gallery.Name}</h3></div></div><div class=\"row no-gutters\"><div class=\"col-12\"><p class=\"w-100 text-center\"><a href=\"#\" class=\"gallery-title\"><i class=\"fa fa-arrow-circle-up\" aria-hidden=\"true\" style=\"font-size: 2em;\"></i></a></p></div></div></div></div>";
                        sb.Append(galleryImagesHtmlEmptyGallery);
                    }
                }

                gallerisContainer.InnerHtml = sb.ToString();
            }
        }

        private static List<Gallery> GetGalleries()
        {
            List<Gallery> galleries = new List<Gallery>();

            try
            {
                //download galleries from DB
                DataTable dtGalleries = DAL.GetGalleriesFromDB();

                if (dtGalleries != null)
                {
                    foreach (DataRow row in dtGalleries.Rows)
                    {
                        Gallery gallery = new Gallery();

                        gallery.Name = row.Field<string>("Name");
                        gallery.ID = Convert.ToInt32(row.Field<string>("ID"));

                        galleries.Add(gallery);
                    }
                }
            }
            catch (Exception exc)
            {

                throw exc;
            }

            return galleries;
        }

        private static StringBuilder CreateGalleriesListHtml(List<Gallery> galleries)
        {
            StringBuilder sb = new StringBuilder();

            if (galleries.Count > 0)
            {

                foreach (Gallery gallery in galleries)
                {
                    string galleryHref = $"ID_{gallery.ID}_{gallery.Name}";

                    string galleryHtml = $"<div class=\"col-2\"><h3><a href=\"#{galleryHref}\" class=\"gallery-title\">{gallery.Name}</a></h3></div>";

                    sb.Append(galleryHtml);
                }

               
            }

            return sb;
        }

        private static List<Picture> GetGalleryImages(int galleryId)
        {
            List<Picture> pictures = new List<Picture>();

            try
            {
                //download imagesHeaders
                DataTable imagesHeaders = DAL.GetImagesHeadersFromDB();

                //get images for this gallery
                var galleryImages = from row in imagesHeaders.AsEnumerable()
                                    where row.Field<int>("GalleryID") == galleryId
                                    select row;

                foreach (DataRow row in imagesHeaders.Rows)
                {
                    Picture picture = new Picture();

                    //data from Headers
                    picture.ID = Convert.ToInt32(row.Field<string>("ID"));
                    picture.Type = row.Field<string>("Type");
                    picture.Column = Convert.ToInt32(row.Field<string>("ColumnNo"));
                    picture.Description = row.Field<string>("Description");

                    pictures.Add(picture);
                }
               
            }
            catch (Exception exc)
            {

                throw exc;
            }

            return pictures;
        }
    }
}