using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Wywrotka
{
    public partial class gallery : System.Web.UI.Page
    {
        public int lastRandomColumnNumber = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //download galleries from DB
                DataTable dtGalleries = DAL.GetGalleriesFromDB();

                if (dtGalleries != null)
                {
                    //create galleryList
                    List<string> galleriesList = new List<string>();

                    //display galleries and populate galleryList
                    foreach (DataRow row in dtGalleries.Rows)
                    {
                        //get values from DataTable Row
                        string galleryName = row.Field<string>("Name");
                        string galleryID = row.Field<string>("ID");
                        string galleryHref = "ID_" + galleryID + "_" + galleryName;

                        string galleryHtml = "<div class=\"col-2\">" +
                                                   "<h3>" +
                                                    "<a href=\"#" + galleryHref + "\" class=\"gallery-title\">" +
                                                        galleryName +
                                                    "</a>" +
                                                   "</h3>" +
                                                "</div>";

                        galleriesListRow.InnerHtml += galleryHtml;

                        galleriesList.Add(galleryID);
                    }

                    //download imagesHeaders
                    DataTable imagesHeaders = DAL.GetImagesHeadersFromDB();

                    foreach (string galleryID in galleriesList)
                    {
                        //get images for this gallery
                        var galleryImages = from row in imagesHeaders.AsEnumerable()
                                            where row.Field<string>("GalleryID") == galleryID
                                            select row;

                        if (galleryImages.Count() == 0 || galleryImages == null)
                        {
                            //if there is no picture in gallery

                            //display only header
                            string galleryImagesHtmlEmptyGallery = "<div id=\"gallery1\" class=\"row no-gutters pt-5 mb-5\">" +
                                                                        "<div class=\"col-12\">" +
                                                                            "<div class=\"row no-gutters mt-3 mb-3 ml-3\">" +
                                                                                "<div class=\"col-12\" id=\"GalleryTitles\">" +
                                                                                    "<h3>Tutył gallerii 1</h3>" +
                                                                                "</div>" +
                                                                            "</div>" +
                                                                            "<div class=\"row no-gutters\">" +
                                                                             "   <div class=\"col-12\">" +
                                                                              "      <p class=\"w-100 text-center\"><a href=\"#\" class=\"gallery-title\"><i class=\"fa fa-arrow-circle-up\" aria-hidden=\"true\" style=\"font-size: 2em;\"></i></a></p>" +
                                                                               " </div>" +
                                                                            "</div>" +
                                                                        "</div>" +
                                                                    "</div>";
                            galleries.InnerHtml += galleryImagesHtmlEmptyGallery;

                        }
                        else
                        {
                            //if there are pictures

                            //html to insert
                            string galleryImagesHtml;

                            //constant part - beggining
                            galleryImagesHtml = "<div id=\"gallery1\" class=\"row no-gutters pt-5 mb-5\">" +
                                                        "<div class=\"col-12\">" +
                                                            "<div class=\"row no-gutters mt-3 mb-3 ml-3\">" +
                                                                "<div class=\"col-12\" id=\"GalleryTitles\">" +
                                                                    "<h3>Tutył gallerii 1</h3>" +
                                                                "</div>" +
                                                            "</div>" +
                                                            "<div class=\"row no-gutters\">";


                            List<List<string>> imagesInColumn1 = new List<List<string>>();
                            List<List<string>> imagesInColumn2 = new List<List<string>>();
                            List<List<string>> imagesInColumn3 = new List<List<string>>();

                            foreach (var row in galleryImages)
                            {
                                //data from Headers
                                string imgId = row.Field<string>("ID");
                                string imgType = row.Field<string>("Type");
                                string imgColumnNo = row.Field<string>("ColumnNo");
                                string imgDescription = row.Field<string>("Description");

                                List<string> imgUrlAndDescr = new List<string>();

                                //download single image
                                string ImageUrl = "ImageByteToFormatHandler.ashx?imgId=" + imgId + "&" + "imgFormat=" + imgType;

                                //check column

                                //column not set
                                if (imgColumnNo == "0")
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
                                        imgColumnNo = column.ToString();
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
                                        imgColumnNo = lastRandomColumnNumber.ToString();
                                    }
                                }



                                if (imgColumnNo == "1")
                                {
                                    imgUrlAndDescr.Add(ImageUrl);
                                    imgUrlAndDescr.Add(imgDescription);
                                    imagesInColumn1.Add(imgUrlAndDescr);

                                }
                                else if (imgColumnNo == "2")
                                {
                                    imgUrlAndDescr.Add(ImageUrl);
                                    imgUrlAndDescr.Add(imgDescription);
                                    imagesInColumn2.Add(imgUrlAndDescr);

                                }
                                else if (imgColumnNo == "3")
                                {
                                    imgUrlAndDescr.Add(ImageUrl);
                                    imgUrlAndDescr.Add(imgDescription);
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
                                                                 "<figcaption class=\"text-center\">" +
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
                                                                 "<figcaption class=\"text-center\">" +
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
                                                                 "<figcaption class=\"text-center\">" +
                                                                    imgDesc +
                                                                 "</figcaption>" +
                                                             "</figure>";
                            }
                            galleryImagesHtmlColumn3 += "</div>";



                            galleryImagesHtml += galleryImagesHtmlColumn1;
                            galleryImagesHtml += galleryImagesHtmlColumn2;
                            galleryImagesHtml += galleryImagesHtmlColumn3;


                            //constant part - ending
                            galleryImagesHtml += "</div>" +
                                                            "<div class=\"row no-gutters\">" +
                                                             "   <div class=\"col-12\">" +
                                                              "      <p class=\"w-100 text-center\"><a href=\"#\" class=\"gallery-title\"><i class=\"fa fa-arrow-circle-up\" aria-hidden=\"true\" style=\"font-size: 2em;\"></i></a></p>" +
                                                               " </div>" +
                                                            "</div>" +
                                                        "</div>" +
                                                    "</div>";

                            //move galleries to aspx
                            galleries.InnerHtml += galleryImagesHtml;
                        }
                    }
                }



            }
        }
    }
}