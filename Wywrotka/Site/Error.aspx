<%@ Page Title="" Language="C#" MasterPageFile="~/Site/SiteMaster.Master" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="Wywrotka.Site.Error" %>
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
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="contact.aspx">KONTAKT</a></li>
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
 <div class="container container-main">
        <div class="row no-gutters">
            <div class="col-12">
                <div class="header-background text-center">
                    <h1 class="h1">Oops. Huston? We have a problem...</h1>
                </div>
            </div>
        </div>
        <div class="row mt-5 no-gutters h-100">
            <div class="col-12 text-center" style="height: 60vh;">
                <h2>Jeśli widzisz tę stronę powiadom nas! Coś poszło nie tak. Przepraszamy.</h2>
            </div>
        </div>
    </div>
</asp:Content>
