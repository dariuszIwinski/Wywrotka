<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Wywrotka.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css--%>
    <link href="css/zero.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/navigation.css" rel="stylesheet" type="text/css" />
    <link href="css/frino/frinostyle.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />

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
                        <li class="nav-item pt-1 pb-1 active"><a class="nav-link" href="index.aspx">O NAS</a></li>
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
    <%--about us--%>
    <div class="container container-main" style="min-height: 90vh;">
        <div class="row no-gutters">
            <div class="col-12">
                <div class="header-background text-center">
                    <h1 class="h1">Rollerspace</h1>
                </div>
            </div>
        </div>
        <div class="row mt-5 no-gutters">
            <div class="col-4 offset-4 w-100">
                <div id="about_logo_black" class="w-50 offset-3">
                </div>
            </div>
        </div>
<div class="arrow bounce">
  <a class="fa fa-arrow-down fa-2x" style="color: deeppink;" href="javascript:void(0);"></a>
</div>
        <div class="row mt-5 text-justify no-gutters" id="firstSection">
            <div class="col-8 offset-2 col-md-4 offset-md-1 about-heading mb-3 margBottom hideme" id="divRent">
                <h3 class="m-2">Wypożyczalnia</h3>
                <hr />
                <p class="p-3">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>
            <div class="col-0 offset-0 col-md-2 hideme" id="divLineOne">
                <div class="row m-0 p-0 h-100">
                    <div class="col-md-6 h-100 borderRight"></div>
                    <div class="col-md-6 h-100"></div>
                </div>
            </div>
            <div class="col-8 offset-2 col-md-4 offset-md-0 about-heading mt-5 marginTop hideme" id="divClimat">
                <h3 class="m-2">Klimat</h3>
                <hr />
                <p class="p-3">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>

            <div class="col-8 offset-2 col-md-4 offset-md-1 about-heading mb-3 margBottom hideme" id="divCoffee">
                <h3 class="m-2">Kawiarnia</h3>
                <hr />
                <p class="p-3">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>
            <div class="col-0 offset-0 col-md-2 mt-0 hideme" id="divLineTwo">
                <div class="row m-0 p-0 h-100">
                    <div class="col-md-6 h-100 borderRight"></div>
                    <div class="col-md-6 h-100"></div>
                </div>
            </div>
            <div class="col-8 offset-2 col-md-4 offset-md-0 about-heading mt-5 marginTop hideme" id="divFigures">
                <h3 class="m-2">Figurki</h3>
                <hr />
                <p class="p-3">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>
            <div class="col-8 offset-2 col-md-4 offset-md-1 about-heading mb-3 margBottom hideme" id="divHistory">
                <h3 class="m-2">Historia</h3>
                <hr />
                <p class="p-3">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>
            <div class="col-0 offset-0 col-md-2 hideme" id="divLineThree">
                <div class="row m-0 p-0 h-100">
                    <div class="col-md-6 h-100 borderRight"></div>
                    <div class="col-md-6 h-100"></div>
                </div>
            </div>
            <div class="col-8 offset-2 col-md-4 offset-md-0 about-heading mt-5 marginTop hideme" id="divGoal">
                <h3 class="m-2">Cel</h3>
                <hr />
                <p class="p-3">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>

            <div class="col-8 offset-2 col-md-4 offset-md-1 about-heading mb-3 margBottom hideme" id="divMission">
                <h3 class="m-2">Misja</h3>
                <hr />
                <p class="p-3">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>
            <div class="col-0 offset-0 col-md-2 mt-0 hideme" id="divLineFour">
                <div class="row m-0 p-0 h-100">
                    <div class="col-md-6 h-100 borderRight"></div>
                    <div class="col-md-6 h-100"></div>
                </div>
            </div>
            <div class="col-8 offset-2 col-md-4 offset-md-0 about-heading mt-5 margBottom hideme" id="divIdeas">
                <h3 class="m-2">Pomysły</h3>
                <hr />
                <p class="p-3">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>
        </div>
        <div class="row no-gutters">
            <div class="col-12 mt-5 mb-5">
            </div>
        </div>
    </div>
    <script src="js/jquery-3.2.1.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        //if ($(window).width() > 1000) {
        //    $(document).ready(function () {
        //        $('#divRent').hide();
        //        $('#divClimat').hide();
        //        $('#divFigures').hide();
        //        $('#divCoffee').hide();
        //        $('#divHistory').hide();
        //        $('#divGoal').hide();
        //        $('#divMission').hide();
        //        $('#divIdeas').hide();
        //    });
        //}

        //if ($(window).width() > 1000) {
        //    $(document).ready(function () {
        //        $('#divRent').fadeIn(1000);
        //        $('#divCoffee').fadeIn(2000);
        //        $('#divFigures').fadeIn(3000);
        //        $('#divClimat').fadeIn(4000);
        //        $('#divHistory').fadeIn(4000);
        //        $('#divGoal').fadeIn(4000);
        //        $('#divMission').fadeIn(4000);
        //        $('#divIdeas').fadeIn(4000);

        //        $('#divLineOne').fadeIn(2000);
        //        $('#divLineTwo').fadeIn(2000);
        //        $('#divLineThree').fadeIn(2000);
        //        $('#divLineFour').fadeIn(2000);
        //    });
        //}

        $(document).ready(function () {

            /* Every time the window is scrolled ... */
            $(window).scroll(function () {

                /* Check the location of each desired element */
                $('.hideme').each(function (i) {

                    var bottom_of_object = $(this).position().top + $(this).outerHeight();
                    var bottom_of_window = $(window).scrollTop() + $(window).height();

                    /* If the object is completely visible in the window, fade it it */
                    if (bottom_of_window > bottom_of_object) {

                        $(this).animate({ 'opacity': '1' }, 1000);

                    }

                });

            });

        });
    </script>
</asp:Content>
