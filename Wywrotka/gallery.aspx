<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="Wywrotka.gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css--%>
    <link href="css/zero.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/navigation.css" rel="stylesheet" type="text/css" />
    <link href="css/frino/frinostyle.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterBody" runat="server">
    <%-- navigation --%>
    <nav class="navbar navbar-toggleable-md navbar-inverse bg-faded no-padding no-margin no-border fixed-top" role="navigation">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand p-0 m-0" href="#">
            <img class="img-fluid" src="img/wywrotka_logo.png" style="max-height: 2em;" />
        </a>
        <div class="container align-content-center m-0 p-0">

            <div class="navbar-collapse collapse row" id="navbarToggler">
                <div class="col-md-8 offset-3">
                    <ul class="navbar-nav mr-auto mt-2 mt-md-0">
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="index.aspx">O NAS</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="offer.aspx">OFERTA</a></li>
                        <li class="nav-item pt-1 pb-1 active"><a class="nav-link" href="gallery.aspx">GALERIA</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="events.aspx">KALENDARZ IMPREZ</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="rules.aspx">REGULAMIN</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="contact.aspx">KONTAKT</a></li>
                    </ul>
                </div>
                <div class="col-md-1 offset-1 m-0 p-0">
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
        <div class="row">
            <div class="col-12 text-justify">
                <div class="header-background col-4 offset-4">
                    <h1 class="h1 text-center pt-1 pb-1">Roller Skates Art</h1>
                </div>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-12">
                <div class="row">
                    <div class="col-2">
                        <h3><a href="#gallery1">Tutył gallerii 1</a></h3>
                    </div>
                    <div class="col-2">
                        <h3><a href="#gallery2">Tutył gallerii 2</a></h3>
                    </div>
                    <div class="col-2">
                        <h3><a href="#gallery3">Tutył gallerii 3</a></h3>
                    </div>
                    <div class="col-2">
                        <h3><a href="#gallery4">Tutył gallerii 4</a></h3>
                    </div>
                    <div class="col-2">
                        <h3><a href="#gallery5">Tutył gallerii 5</a></h3>
                    </div>
                    <div class="col-2">
                        <h3><a href="#gallery6">Tutył gallerii 6</a></h3>
                    </div>
                    <div class="col-2">
                        <h3><a href="#gallery7">Tutył gallerii 7</a></h3>
                    </div>
                    <div class="col-2">
                        <h3><a href="#gallery8">Tutył gallerii 8</a></h3>
                    </div>
                </div>

            </div>
        </div>
        <div id="gallery1" class="row pt-5 mb-5">
            <div class="col-12">
                <div class="row">
                    <div class="col-12">
                        <h3>Tutył gallerii 1</h3>
                    </div>
                </div>
                <div class="row">
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
                <div class="row">
                    <div class="col-12">
                        <p class="w-100 text-center"><a href="#" class="F-POINTER-UP-CIRCLE text-center w-100" style="font-size: 30px !important;"></a></p>
                    </div>
                </div>
            </div>
        </div>
        <div id="gallery2" class="row pt-5 mb-5">
            <div class="col-12">
                <div class="row">
                    <div class="col-12">
                        <h3>Tutył gallerii 2</h3>
                    </div>
                </div>
                <div class="row">
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
                <div class="row">
                    <div class="col-12">
                        <p class="w-100 text-center"><a href="#" class="F-POINTER-UP-CIRCLE text-center w-100" style="font-size: 30px !important;"></a></p>
                    </div>
                </div>
            </div>
        </div>
        <div id="gallery3" class="row pt-5 mb-5">
            <div class="col-12">
                <div class="row">
                    <div class="col-12">
                        <h3>Tutył gallerii 3</h3>
                    </div>
                </div>
                <div class="row">
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
                <div class="row">
                    <div class="col-12">
                        <p class="w-100 text-center"><a href="#" class="F-POINTER-UP-CIRCLE text-center w-100" style="font-size: 30px !important;"></a></p>
                    </div>
                </div>
            </div>
        </div>
        <div id="gallery4" class="row pt-5 mb-5">
            <div class="col-12">
                <div class="row">
                    <div class="col-12">
                        <h3>Tutył gallerii 4</h3>
                    </div>
                </div>
                <div class="row">
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
                <div class="row">
                    <div class="col-12">
                        <p class="w-100 text-center"><a href="#" class="F-POINTER-UP-CIRCLE text-center w-100" style="font-size: 30px !important;"></a></p>
                    </div>
                </div>
            </div>
        </div>
        <div id="gallery5" class="row pt-5 mb-5">
            <div class="col-12">
                <div class="row">
                    <div class="col-12">
                        <h3>Tutył gallerii 5</h3>
                    </div>
                </div>
                <div class="row">
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
                <div class="row">
                    <div class="col-12">
                        <p class="w-100 text-center"><a href="#" class="F-POINTER-UP-CIRCLE text-center w-100" style="font-size: 30px !important;"></a></p>
                    </div>
                </div>
            </div>
        </div>
        <div id="gallery6" class="row pt-5 mb-5">
            <div class="col-12">
                <div class="row">
                    <div class="col-12">
                        <h3>Tutył gallerii 6</h3>
                    </div>
                </div>
                <div class="row">
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
                <div class="row">
                    <div class="col-12">
                        <p class="w-100 text-center"><a href="#" class="F-POINTER-UP-CIRCLE text-center w-100" style="font-size: 30px !important;"></a></p>
                    </div>
                </div>
            </div>
        </div>
        <div id="gallery7" class="row pt-5 mb-5">
            <div class="col-12">
                <div class="row">
                    <div class="col-12">
                        <h3>Tutył gallerii 7</h3>
                    </div>
                </div>
                <div class="row">
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
                <div class="row">
                    <div class="col-12">
                        <p class="w-100 text-center"><a href="#" class="F-POINTER-UP-CIRCLE text-center w-100" style="font-size: 30px !important;"></a></p>
                    </div>
                </div>
            </div>
        </div>
        <div id="gallery8" class="row pt-5 mb-5">
            <div class="col-12">
                <div class="row">
                    <div class="col-12">
                        <h3>Tutył gallerii 8</h3>
                    </div>
                </div>
                <div class="row">
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
                <div class="row">
                    <div class="col-12">
                        <p class="w-100 text-center"><a href="#" class="F-POINTER-UP-CIRCLE text-center w-100" style="font-size: 30px !important;"></a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
