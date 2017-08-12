<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="Wywrotka.gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css--%>
    <link href="css/zero.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/navigation.css" rel="stylesheet" type="text/css" />
    <link href="css/frino/frinostyle.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    </style>
      <%-- fonts --%>
        <link href="https://fonts.googleapis.com/css?family=Ribeye+Marrow&amp;subset=latin-ext" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Zilla+Slab" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterBody" runat="server">
      <nav class="navbar navbar-toggleable-md navbar-inverse bg-faded no-padding no-margin no-border fixed-top pt-1 pb-1" role="navigation">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand p-0 m-0" href="index.aspx">
            <img class="img-fluid" src="img/wywrotka_logo.png" style="max-height: 2em;" />
        </a>
        <div class="container align-content-center m-0 p-0">

            <div class="navbar-collapse collapse row no-gutters" id="navbarToggler">
                   <div class="col-8 offset-3 col-md-9 offset-md-1 p-0">
                    <ul class="navbar-nav mr-auto mt-2 mt-md-0 main-nav">
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="index.aspx">O NAS</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="offer.aspx">OFERTA</a></li>
                        <li class="nav-item pt-1 pb-1 active"><a class="nav-link" href="gallery.aspx">GALERIA</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="events.aspx">KALENDARZ IMPREZ</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="rules.aspx">REGULAMIN</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="contact.aspx">KONTAKT</a></li>
                    </ul>
                </div>
                <div class="col-8 offset-3 col-md-1 offset-md-1 p-0">
                    <ul class="navbar-nav navbar-right mt-2 md-0">
                        <li class="nav-item pt-1 pb-1">
                            <a class="nav-social-a" href="#">
                                <i class="fa fa-facebook-square"></i>
                            </a>
                        </li>
                        <li class="nav-item pt-1 pb-1">
                            <a class="nav-social-a" href="#">
                                <i class="fa fa-instagram"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <div>
        <div style="min-height: 3.5em;">
        </div>
    </div>
    <div class="container container-main" style="min-height: 90vh;">
        <div class="row no-gutters">
                  <div class="col-12">
                <div class="header-background text-center">
                    <h1 class="h1">Roller skates art</h1>
                </div>
            </div>
        </div>
        <div class="row no-gutters mt-5">
            <div class="col-12">
                <div class="row no-gutters m-3">
                    <div class="col-2">
                        <h3><a href="#gallery1" class="gallery-title">Tutył gallerii 1</a></h3>
                    </div>
                </div>

            </div>
        </div>
        <div id="gallery1" class="row no-gutters pt-5 mb-5">
            <div class="col-12">
                <div class="row no-gutters mt-3 mb-3 ml-3">
                    <div class="col-12" id="GalleryTitles">
                        <h3>Tutył gallerii 1</h3>
                    </div>
                </div>
                <div class="row no-gutters">
                    <div class="col-4 p-0">
                        <img class="img-fluid image w-100" src="img/rollers.jpg" />
                        <img class="img-fluid image w-100" src="img/oartyyyyy.jpg" />
                        <img class="img-fluid image w-100" src="img/img102.jpg" />
                        <img class="img-fluid image w-100" src="img/img104.jpg" />
                    </div>
                    <div class="col-4 p-0">
                        <img class="img-fluid image w-100" src="img/daisy.jpg" />
                        <img class="img-fluid image w-100" src="img/img103.png" />
                        <img class="img-fluid image w-100" src="img/bride_rollers.jpg" />
                    </div>
                    <div class="col-4 p-0">
                        <img class="img-fluid image w-100" src="img/birthday_party.png" />
                        <img class="img-fluid image w-100" src="img/img100.jpg" />
                        <img class="img-fluid image w-100" src="img/img101.png" />
                    </div>
                </div>
                <div class="row no-gutters">
                    <div class="col-12">
                        <p class="w-100 text-center"><a href="#" class="gallery-title"><i class="fa fa-arrow-circle-up" aria-hidden="true" style="font-size: 2em;"></i></a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
