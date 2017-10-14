<%@ Page Title="" Language="C#" MasterPageFile="~/Site/SiteMaster.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="Wywrotka.gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css--%>
    <link href="../Styles/css/zero.css" rel="stylesheet" />
    <link href="../Styles/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/css/navigation.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/css/frino/frinostyle.css" rel="stylesheet" />
    <link href="../Styles/css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        figure {
            overflow: hidden;
            margin-bottom: 0;
            padding-bottom: 0;
            text-align: center;
            z-index: 1;
        }

 figcaption {
            height: 2em;
            width: 100%;
            top: auto;
            transition: transform 1.2s, visibility 1s, opacity 1s;
            display: none;
            color: white;
            font-size: 1.5em;
            font-family: sans-serif;
            z-index: 50;
            background-color:rgb(16,23,57);
            position: absolute;
            visibility: hidden;
            opacity: 0;
        }

        figure img {
            transition: transform 0.5s;
        }

        figure:hover img {
            transform: translateY(-2em);
            opacity: 0.7;
        }

        figure:hover figcaption {
           
            transition: transform 1.2s, visibility 1s, opacity 1s;
            display: block;
            transform: translateY(-2em);
            visibility: visible;
            opacity: 1;
        }

    </style>
    <%-- fonts --%>
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
        <div id="galleriesList" runat="server">
            <div class="row no-gutters mt-5">
                <div class="col-12">
                    <div class="row no-gutters m-3" id="galleriesListRow" runat="server">
                    </div>

                </div>
            </div>
        </div>
        <div id="galleries" runat="server"></div>


    </div>
    <!-- Modal -->
    <div class="modal fade" id="modalZoomIn" role="dialog">
        <div class="modal-dialog" style="max-width: 70vh; margin: 4vh auto;">

            <!-- Modal content-->
            <div class="modal-content" style="align-items: center; background-color: transparent;">
                <div class="modal-body p-0">
                    <img id="modalImage" src="#" style="max-width: 70vw; align-self: center;" />
                </div>
            </div>

        </div>
    </div>
    <script src="Scripts/jquery-3.2.1.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script>

        //wyswietla modal z powiększonym zdjęciem
        $(document).ready(function () {
            //wyszukiwanie po klasie i kliku
            $('.gallery-img').click(function () {
                //gets src of clicked img
                var imgSource = $(this).attr('src');
                //sets src of image in modal
                $('#modalImage').attr({
                    src: imgSource
                });
                //lunch modal
                $('#modalZoomIn').modal();
            });
        });

        //kursor wskazujacy
        $(document).ready(function () {
            $('.gallery-img').hover(function () {
                $(this).css('cursor', 'pointer');

            });
        });

    </script>
</asp:Content>
