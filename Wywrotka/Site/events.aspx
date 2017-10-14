<%@ Page Title="" Language="C#" MasterPageFile="~/Site/SiteMaster.Master" AutoEventWireup="true" CodeBehind="events.aspx.cs" Inherits="Wywrotka.events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css--%>
    <link href="Styles/css/zero.css" rel="stylesheet" />
    <link href="Styles/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Styles/css/navigation.css" rel="stylesheet" type="text/css" />
    <link href="Styles/css/frino/frinostyle.css" rel="stylesheet" />
    <link href="Styles/css/main.css" rel="stylesheet" type="text/css" />
    <link href="Styles/css/googleCalendar.css" rel="stylesheet" type="text/css" />
    <%-- fonts --%>
    <link href="https://fonts.googleapis.com/css?family=Ribeye+Marrow&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Zilla+Slab" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Julee" rel="stylesheet">
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
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="gallery.aspx">GALERIA</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link active" href="events.aspx">KALENDARZ IMPREZ</a></li>
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
                    <h1 class="h1">Keep calm and roll on</h1>
                </div>
            </div>
        </div>
        <div class="row no-gutters">
            <div class="col-6 offset-3">
                <div class="calendarWrapper m-5">
                    <iframe style="background-color: white !important;" src="GoogleCalendarStyled.html" style="border-width: 0" width="600" height="400" frameborder="0" scrolling="no"></iframe>
                </div>
            </div>
        </div>
        <div class="row no-gutters mt-3">
            <div class="col-10 offset-1">
                <asp:Panel ID="PanelEvents" runat="server"></asp:Panel>
                <%--                <div class="row mt-5">
                    <div class="col-3">
                        <div class="row">
                            <div class="col-12">
                                <img class="img-fluid" src="img/rollers.jpg" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 text-center">
                            <h3>2017-09-01</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-9">
                        <h2>Wielkie otwarcie! 
                        </h2>
                        <p>
                            Przyjdź i zobacz! Impreza wrotkowa w stylu lat '70!
                        </p>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        <p><a href="">więcej...</a></p>
                    </div>
                </div>
              <div class="row mt-5">
                    <div class="col-3">
                        <div class="row">
                            <div class="col-12">
                                <img class="img-fluid" src="img/rollers.jpg" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 text-center">
                            <h3>2017-09-01</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-9">
                        <h2>Wielkie otwarcie! 
                        </h2>
                        <p>
                            Przyjdź i zobacz! Impreza wrotkowa w stylu lat '70!
                        </p>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        <p><a href="">więcej...</a></p>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-3">
                        <div class="row">
                            <div class="col-12">
                                <img class="img-fluid" src="img/rollers.jpg" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 text-center">
                            <h3>2017-09-01</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-9">
                        <h2>Wielkie otwarcie! 
                        </h2>
                        <p>
                            Przyjdź i zobacz! Impreza wrotkowa w stylu lat '70!
                        </p>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        <p><a href="">więcej...</a></p>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>
</asp:Content>
