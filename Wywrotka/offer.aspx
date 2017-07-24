<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="offer.aspx.cs" Inherits="Wywrotka.offer" %>

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
                        <li class="nav-item pt-1 pb-1 active"><a class="nav-link" href="offer.aspx">OFERTA</a></li>
                        <li class="nav-item pt-1 pb-1"><a class="nav-link" href="gallery.aspx">GALERIA</a></li>
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
    <div class="container container-main">
         <div class="row">
            <div class="col-12 text-justify">
                <div class="header-background col-4 offset-4">
                    <h1 class="h1 text-center pt-1 pb-1">Let's roll</h1>
                </div>
            </div>
        </div>
        <div class="row mt-5">
            <%--prices--%>
            <div class="col-5 offset-1">
                <div class="white-border p-3">
                    <div class="row pt-3 pb-3">
                        <div class="col-12  text-center">
                            <h2 class="h2 text-center">Cennik</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-8 offset-2 text-center">
                            <table class="table table-hover table-bordered w-100">
                                <tr>
                                    <th colspan="2" class="text-center font-weight-bold">Bilety indywidualne</th>
                                </tr>
                                <tr>
                                    <td>Ulgowy</td>
                                    <td>10 zł / 1 h</td>
                                </tr>
                                <tr>
                                    <td>Normalny</td>
                                    <td>15 zł / 1 h</td>
                                </tr>
                                <tr>
                                    <td>Wypożyczenie wrotek</td>
                                    <td>5 zł</td>
                                </tr>
                                <tr>
                                    <td>Wypożyczenie ochraniaczy<br />
                                        ( kask + zestaw ochraniaczy)</td>
                                    <td>5 zł </td>
                                </tr>
                                <tr>
                                    <td>Indywidualna lekcja z instruktorem</td>
                                    <td>50 zł / h</td>
                                </tr>
                            </table>
                        </div>

                    </div>
                    <div class="row">
                        <p class="text-center w-100">Dokumentem uprawniającym do karnetu ulgowego<br /> jest ważna legitymacja szkolna.</p>
                    </div>
                    <div class="row">
                        <div class="col-8 offset-2 text-center">
                            <table class="table table-hover table-bordered w-100">
                                <tr>
                                    <th colspan="2" class="text-center font-weight-bold">Grupy zorganizowane (min. 10 osób)</th>
                                </tr>
                                <tr>
                                    <td>Bilet</td>
                                    <td>8 zł / 1 h</td>

                                </tr>
                                <tr>
                                    <td>Wypożyczenie wrotek</td>
                                    <td>5 zł</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <%--oppenings--%>
            <div class="col-5">
                <div class="white-border p-3">
                    <div class="row pt-3 pb-3">
                        <div class="col-12  text-center">
                            <h2 class="h2 text-center">Godziny otwarcia</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-8 offset-2 text-center">
                            <table class="table table-hover table-bordered w-10">
                                <tr>
                                    <th class="text-center font-weight-bold">Dzień</th>
                                    <th class="text-center font-weight-bold">Godziny otwarcia</th>
                                </tr>
                                <tr>
                                    <td>Poniedziałek</td>
                                    <td>10 - 22</td>
                                </tr>
                                <tr>
                                    <td>Wtorek</td>
                                    <td>10 - 22</td>
                                </tr>
                                <tr>
                                    <td>Środa</td>
                                    <td>10 - 22</td>
                                </tr>
                                <tr>
                                    <td>Czwartek</td>
                                    <td>10 - 22</td>
                                </tr>
                                <tr>
                                    <td>Piątek</td>
                                    <td>10 - 22</td>
                                </tr>
                                <tr>
                                    <td>Sobota</td>
                                    <td>10 - ost klient (24)</td>
                                </tr>
                                <tr>
                                    <td>Niedziela</td>
                                    <td>10 - ost klient (24)</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                     <div class="mb-5"><br /></div>
                    <div class="mb-5 pb-2"><br /></div>
                </div>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-10 offset-1">
                <div class="row">
                    <div class="col-3">
                        <img class="img-fluid" src="img/birthday_party.png" />
                    </div>
                    <div class="col-9">
                        <h2>Urodziny
                        </h2>
                        <p>
                            ŚWIATŁA, KAMERA, AKCJA. TEGO W POZNANIU JESZCZE NIE BYŁO
                        </p>
                        <p>
                            Spędź swoje urodziny z nami i przeżyj niezapomniane chwile w iście kosmicznym klimacie. Jedz pyszne smakołyki w towarzystwie super-bohaterów przy akompaniamencie wspaniałej muzyki oraz blasku świateł
                        </p>
                        <p><a href="#">więcej...</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-10 offset-1">
                <div class="row">
                    <div class="col-3">
                        <img class="img-fluid" src="img/bride_rollers.jpg" />
                    </div>
                    <div class="col-9">
                        <h2>Wieczór panieński
                        </h2>
                        <p>
                            Ślub twojej koleżanki tuż tuż? Nie szkodzi!
                        </p>
                        <p>
                           Pomóż jej wygodnie dojechać na wesele i zabierz ją na wrotki. Wybierzcie się w podróż w kosmicznym blasku tysięcy kolorowych świateł i zawrotnym rytmie Roller Disco
                        </p>
                        <p><a href="">więcej...</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-3 pb-3">
            <div class="col-10 offset-1">
                <div class="row">
                    <div class="col-3">
                        <img class="img-fluid" src="img/oartyyyyy.jpg" />
                    </div>
                    <div class="col-9">
                        <h2>Imprezy prywatne
                        </h2>
                        <p>
                            ŚWIATŁA, KAMERA, AKCJA. TEGO W POZNANIU JESZCZE NIE BYŁO
                        </p>
                        <p>
                            Szukasz czegoś tylko dla siebie, chciałbyś zaskoczyć rodzinę lub znajomych z pracy. Teraz masz okazję . Imprezy prywatne, firmowe, integracyjne i wiele innych . Nie    krępuj się i przejmij dowodzenie nad wrotkarnią
                        </p>
                        <p><a href="#">więcej...</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
