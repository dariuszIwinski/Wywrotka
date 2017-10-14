using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Wywrotka;

namespace Wywrotka.Admin
{
    public partial class Pictures : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataTable galleries = DAL.GetGalleriesFromDB();
                ddlImgToGallery.DataSource = galleries;
                ddlImgToGallery.DataTextField = "Name";
                ddlImgToGallery.DataValueField = "ID";
                ddlImgToGallery.DataBind();
                ddlImgToGallery.Items.Insert(0, new ListItem("Wybierz galerię", "0"));



                ddlDelPic_SelectGallery.DataSource = galleries;
                ddlDelPic_SelectGallery.DataTextField = "Name";
                ddlDelPic_SelectGallery.DataValueField = "ID";
                ddlDelPic_SelectGallery.DataBind();
                ddlDelPic_SelectGallery.Items.Insert(0, new ListItem("Wybierz galerię", "0"));

                ddlDelPic_SelectPicture.Items.Insert(0, new ListItem("Najpierw wybierz galerię", "0"));


                ddlDelGall_SelectGallery.DataSource = galleries;
                ddlDelGall_SelectGallery.DataTextField = "Name";
                ddlDelGall_SelectGallery.DataValueField = "ID";
                ddlDelGall_SelectGallery.DataBind();
                ddlDelGall_SelectGallery.Items.Insert(0, new ListItem("Wybierz galerię", "0"));

                notificationBox.Visible = false;
            }
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (lblDanger.Visible == true)
                {

                    notificationBox.Attributes.Remove("class");

                    notificationBox.Attributes.Add("class", "card card-inverse card-danger");
                    notificationBox.Visible = true;

                }
                else if (lblSuccess.Visible == true)
                {
                    notificationBox.Attributes.Remove("class");

                    notificationBox.Attributes.Add("class", "card card-inverse card-success");
                    notificationBox.Visible = true;

                }
                else
                {
                    notificationBox.Visible = false;
                }
            }
            else
            {
                notificationBox.Visible = false;
            }
        }

       

        protected void btnAddImg_Click(object sender, EventArgs e)
        {
            Picture ImageToSave = new Picture();
            ImageToSave.Column = Convert.ToInt32(ddlImgToColumn.SelectedValue);
            ImageToSave.GalleryId = Convert.ToInt32(ddlImgToGallery.SelectedValue);


            if (String.IsNullOrWhiteSpace(txtImgText.Text))
            {
                ImageToSave.Description = "";
            }
            else
            {
                ImageToSave.Description = txtImgText.Text;
            }

            ImageToSave.Image = fuImgDisc.PostedFile;

            if (rbDisc.Checked)
            {
                if (!String.IsNullOrWhiteSpace(fuImgDisc.FileName))
                {
                    string connString = DAL.GetConnectionString("local");

                    if (DAL.InsertNewImageToDb(ImageToSave))
                    {
                        ShowHideNotification("Zapisano obraz", null);
                    }
                    else
                    {
                        ShowHideNotification(null, "Nie udało się zapisać obrazu.");

                    }
                }
                else
                {
                    ShowHideNotification(null, "Nie wybrano pliku");
                }
            }
        }


        public void ShowHideNotification(string okMsg, string errorMsg)
        {
            lblSuccess.Text = null;
            lblDanger.Text = null;
            lblSuccess.Visible = false;
            lblDanger.Visible = false;

            if (!String.IsNullOrWhiteSpace(okMsg))
            {
                notificationBox.Visible = true;
                lblSuccess.Text = okMsg;
                lblSuccess.Visible = true;
            }
            if (!String.IsNullOrWhiteSpace(errorMsg))
            {
                notificationBox.Visible = true;
                lblDanger.Text = errorMsg;
                lblDanger.Visible = true;
            }
        }

        protected void btnDelPic_Click(object sender, EventArgs e)
        {
            bool deleteResult = false;

            string selectedValue = ddlDelPic_SelectPicture.SelectedValue;

            if (!String.IsNullOrWhiteSpace(selectedValue) && selectedValue != "0")
            {
                int pictureIdToDelete = Convert.ToInt32(selectedValue);
                deleteResult = DAL.DeletePictureFromDB(pictureIdToDelete);
            }

            if (deleteResult == true)
            {
                ShowHideNotification("Usunięto zdjęcie z bazy danych", null);
            }
            else
            {
                ShowHideNotification(null, "Nie udało się usunąć zdjęcia z bazy danych");
            }
        }

        protected void ddlDelPic_SelectGallery_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlDelPic_SelectPicture.Items.Count != 0)
            {
                for (int i = 0; i < ddlDelPic_SelectPicture.Items.Count; i++)
                {
                    ddlDelPic_SelectPicture.Items.RemoveAt(i);
                }
            }

            int galleryId = Convert.ToInt32(ddlDelPic_SelectGallery.SelectedValue);

            DataTable picturesInGallery = DAL.GetPicturesFromGallery(galleryId);
         
            ddlDelPic_SelectPicture.DataSource = picturesInGallery;
            ddlDelPic_SelectPicture.DataTextField = "Description";
            ddlDelPic_SelectPicture.DataValueField = "ID";
            ddlDelPic_SelectPicture.DataBind();

            ddlDelPic_SelectPicture.Items.Insert(0, new ListItem("Wybierz zdjęcie", "0"));
        }

        protected void btnDelGall_Click(object sender, EventArgs e)
        {
            bool deleteResult = false;

            string selectedValue = ddlDelGall_SelectGallery.SelectedValue;

            if (!String.IsNullOrWhiteSpace(selectedValue) && selectedValue != "0")
            {
                int galleryIdToDelete = Convert.ToInt32(selectedValue);
                deleteResult = DAL.DeleteGalleryFromDB(galleryIdToDelete);
            }

            if (deleteResult == true)
            {
                ShowHideNotification("Usunięto galerię z bazy danych", null);
            }
            else
            {
                ShowHideNotification(null, "Nie udało się usunąć galerii z bazy danych");
            }
        }

        protected void btnAddGall_Click(object sender, EventArgs e)
        {
            bool addResult = false;

            string galleryName = txtAddGall.Text;

            if (!String.IsNullOrWhiteSpace(galleryName))
            {
                
                addResult = DAL.InsertNewGalleryToDB(galleryName);
            }

            if (addResult == true)
            {
                ShowHideNotification("Dodano galerię do bazy danych", null);
            }
            else
            {
                ShowHideNotification(null, "Nie udało się dodać galerii do bazy danych");
            }
        }

        protected void btnAddEvent_ShowCalendarEndTie_Click(object sender, EventArgs e)
        {
            if (calAddEvent_EndTime.Visible == false)
            {
                calAddEvent_EndTime.Visible = true;
            }
            else
            {
                calAddEvent_EndTime.Visible = false;
            }
        }

        protected void btnAddEvent_ShowCalendarStartTime_Click(object sender, EventArgs e)
        {
            if (calAddEvent_StartTime.Visible == false)
            {
                calAddEvent_StartTime.Visible = true;
            }
            else
            {
                calAddEvent_StartTime.Visible = false;
            }
        }
    }
}

