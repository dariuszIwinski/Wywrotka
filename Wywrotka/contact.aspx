<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Wywrotka.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css--%>
    <link href="css/zero.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/navigation.css" rel="stylesheet" type="text/css" />
    <link href="css/frino/frinostyle.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
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
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="gallery.aspx">GALERIA</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="events.aspx">KALENDARZ IMPREZ</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="rules.aspx">REGULAMIN</a></li>
                        <li class="nav-item pt-1 pb-1 active"><a class="nav-link" href="contact.aspx">KONTAKT</a></li>
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
        <%--contact--%>
        <div class="row">
            <div class="col-12 text-justify">
                <div class="header-background col-4 offset-4">
                    <h1 class="h1 text-center pt-1 pb-1">I love wrotki</h1>
                </div>
            </div>
        </div>
        <div class="row text-center mt-5">
            <div class="col-md-3 offset-3 contant-elements">
                <div class="fa fa-phone-square"></div>
                <a href="tel:#">+48 777 777 777</a>
            </div>
            <div class="col-md-3 contant-elements">
                <div class="fa fa-envelope"></div>
                <a href="#">wrotka@wywrotka.pl</a>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-6 offset-3 text-center">
                <iframe src="https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d4871.646504488214!2d16.97643689947388!3d52.37362481875002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d52.3734022!2d16.980454899999998!5e0!3m2!1spl!2spl!4v1500849197382" width="600" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
            </div>
        </div>
        <div class="row mt-5" style="margin-top: 1em;">
            <h3 class="text-center w-100">Masz pytania ?</h3>
            <div class="form-horizontal col-md-6 offset-3">
                <div class="form-group">
                    <input type="text" class="form-control" id="txtContactName" placeholder="Podaj imię i nazwisko" />
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" id="txtContactEmail" placeholder="Podaj swój adres email" />
                </div>
                <div class="form-group ">
                    <textarea class="form-control" id="txtContactMessage" placeholder="Wpisz treść wiadomości"></textarea>
                </div>
                <div class="text-center m-5">
                    <input type="submit" class="btn btn-default" value="Wyślij" />
                </div>
            </div>
        </div>

    </div>
</asp:Content>
