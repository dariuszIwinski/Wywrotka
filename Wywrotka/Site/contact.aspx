﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site/SiteMaster.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Wywrotka.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css--%>
    <link href="../Styles/css/zero.css" rel="stylesheet" />
    <link href="../Styles/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/css/navigation.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/css/frino/frinostyle.css" rel="stylesheet" />
    <link href="../Styles/css/main.css" rel="stylesheet" type="text/css" />

    <%-- fonts --%>
    <link href="https://fonts.googleapis.com/css?family=Ribeye+Marrow&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Zilla+Slab" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterBody" runat="server">
    <nav class="navbar navbar-toggleable-md navbar-inverse bg-faded no-padding no-margin no-border fixed-top pt-1 pb-1" role="navigation">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand p-0 m-0" href="index.aspx">
            <img class="img-fluid" src="../Images/wywrotka_logo.png" style="max-height: 2em;" />
        </a>
        <div class="container align-content-center m-0 p-0">

            <div class="navbar-collapse collapse row no-gutters" id="navbarToggler">
                    <div class="col-8 offset-3 col-md-9 offset-md-1 p-0">
                    <ul class="navbar-nav mr-auto mt-2 mt-md-0 main-nav">
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="index.aspx">O NAS</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="offer.aspx">OFERTA</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="gallery.aspx">GALERIA</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="events.aspx">KALENDARZ IMPREZ</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="rules.aspx">REGULAMIN</a></li>
                        <li class="nav-item pt-1 pb-1 active"><a class="nav-link" href="contact.aspx">KONTAKT</a></li>
                    </ul>
                </div>
                <div class="col-8 offset-3 col-md-1 offset-md-1 p-0">
                    <ul class="navbar-nav navbar-right mt-2 md-0">
                        <li class="nav-item pt-1 pb-1">
                            <a class="nav-social-a p-2" href="https://www.facebook.com/WrotkarniaWywrotka/">
                                <i class="fa fa-facebook-square"></i>
                            </a>
                            <a class="nav-social-a p-2" href="https://www.instagram.com/wrotkarnia.wywrotka/">
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
        <div class="row no-gutters">
            <div class="col-12">
                <div class="header-background text-center">
                    <h1 class="h1">I <i class="fa fa-heart" aria-hidden="true"></i> wrotki</h1>
                </div>
            </div>
        </div>
        <div class="row no-gutters mt-5" style="margin-top: 1em;">
            <h3 class="text-center w-100 m-3">Pisz! Dzwoń! Przybywaj!</h3>
            <div class="col-8 offset-3 col-md-3 offset-md-3 contant-elements">
                <div class="fa fa-phone-square"></div>
                <a href="tel:#">+48 572 291 843</a>
            </div>
            <div class="col-8 offset-3 col-md-3 offset-md-0 contant-elements">
                <div class="fa fa-envelope"></div>
                <a href="mailto:wwwywrotka@gmail.com">wwwywrotka@gmail.com</a>
            </div>
        </div>
        <div class="row no-gutters mt-5" style="margin-top: 1em;">
            <h3 class="text-center w-100 m-3">Tu nas znajdziesz</h3>
            <div class="col-6 offset-3">
                <%-- mapa google --%>
                <div class="iframe-container">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d4871.646504444444!2d16.976447628322237!3d52.37362481914683!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d52.373613899999995!2d16.9805822!5e0!3m2!1spl!2sus!4v1501538655743" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>

            </div>
             <div class="col-6 offset-3 mt-3" style="text-align:center;">
                <p style="font-weight: 500; font-size: 1.3rem;">Ul. Bolesława Krzywoustego 72<br />61-144 Poznań</p>
            </div>
            <div class="col-6 offset-3 text-center mt-3">
                <div class="fa fa-map-signs"></div>
                <a onclick="myNavFunc()" style="cursor: pointer; color: rgb(238,92,160); font-weight: 500; font-size: 1.3rem;">Zabierz mnie tam!</a>
            </div>
        </div>
         <div class="row no-gutters mt-5" style="margin-top: 1em;">
            <h3 class="text-center w-100">Ale czy nadal czynne?</h3>
            <div class="form-horizontal col-6 offset-3">
                <div class="form-group text-center">
                    <a href="offer.aspx#openings" style="color: rgb(238,92,160); font-weight: 500; font-size: 1.3rem;">Zobacz!</a>
                </div>
            </div>
        </div>
        <div class="row no-gutters mt-5" style="margin-top: 1em;">
            <h3 class="text-center w-100">FAQ</h3>
            <div class="form-horizontal col-6 offset-3">
                <div class="form-group text-center">
                    <a href="../Files/FAQ.pdf" style="color: rgb(238,92,160); font-weight: 500; font-size: 1.3rem;">Może odpowiedź znajdziesz tutaj?</a>
                </div>
            </div>
        </div>
        <div class="row no-gutters mt-5" style="margin-top: 1em;">
            <h3 class="text-center w-100 m-3">Więcej pytań?</h3>
            <div class="form-horizontal col-6 offset-3">
                <div class="form-group">
                    <asp:TextBox class="form-control" id="txtContactName" placeholder="Podaj imię i nazwisko" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox  class="form-control" id="txtContactEmail" placeholder="Podaj swój adres email" runat="server"></asp:TextBox>
                </div>
                <div class="form-group ">
                    <asp:TextBox class="form-control" id="txtContactMessage" placeholder="Wpisz treść wiadomości" runat="server"></asp:TextBox>
                </div>
                <div class="text-center m-5">
                    <asp:Button ID="btnSendEmail" OnClick="btnSendEmail_Click" class="btn btn-default w-100" runat="server" Text="Wyślij" />
                </div>
            </div>
        </div>


    </div>
    <script>
        function myNavFunc() {
            // If it's an iPhone..
            if ((navigator.platform.indexOf("iPhone") != -1)
                || (navigator.platform.indexOf("iPod") != -1)
                || (navigator.platform.indexOf("iPad") != -1))
                window.open("maps://maps.google.com/maps?daddr=52.3736139,16.9805822&amp;ll=");
            else
                window.open("http://maps.google.com/maps?daddr=52.3736139,16.9805822&amp;ll=");
        }



</script>
</asp:Content>
