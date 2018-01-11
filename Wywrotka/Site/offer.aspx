<%@ Page Title="" Language="C#" MasterPageFile="~/Site/SiteMaster.Master" AutoEventWireup="true" CodeBehind="offer.aspx.cs" Inherits="Wywrotka.offer" %>

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

    <style>
        @media (min-width: 768px) {
            .mb-md-5 {
                margin-bottom: 11rem !important;
            }
        }
    </style>
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
                        <li class="nav-item pt-1 pb-1 active"><a class="nav-link" href="offer.aspx">OFERTA</a></li>
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
                    <h1 class="h1">Let's roll</h1>
                </div>
            </div>
        </div>
        <div class="row mt-5 no-gutters">
            <%--prices--%>
            <div class="col-10 col-md-5 offset-1 offset-md-1">
                <div class="white-border p-3 mb-5 mb-md-0">
                    <div class="row pt-3 pb-3">
                        <div class="col-12  text-center">
                            <h2 class="h2 text-center">Cennik</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-10 offset-1 text-center">
                            <table class="table table-hover table-bordered w-100 h-100">
                                <tr>
                                    <th colspan="2" class="text-center font-weight-bold">Bilety indywidualne</th>
                                </tr>
                                <tr>
                                    <td>Ulgowy</td>
                                    <td>12 zł/h</td>
                                </tr>
                                <tr>
                                    <td>Normalny</td>
                                    <td>17 zł/h</td>
                                </tr>
                                <tr>
                                    <td>Wypożyczenie wrotek</td>
                                    <td>5 zł</td>
                                </tr>
                                <tr>
                                    <td>Wypożyczenie ochraniaczy<br />
                                        (kask + zestaw ochraniaczy)</td>
                                    <td>darmowe dostępne w wypożyczalni</td>
                                </tr>
                                <tr>
                                    <td>Indywidualna lekcja z instruktorem</td>
                                    <td>50 zł/h</td>
                                </tr>
                            </table>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-12 mb-5">
                            <p class="text-center w-100">
                                Dokumentem uprawniającym do karnetu ulgowego<br />
                                jest ważna legitymacja szkolna lub studencka.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-10 offset-1 text-center">
                            <table class="table table-hover table-bordered w-100 h-100">
                                <tr>
                                    <th colspan="2" class="text-center font-weight-bold">Karnety</th>
                                </tr>
                                <tr>
                                    <td>10x wejście + wrotki</td>
                                    <td>140 zł/rok</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 mb-5">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-10 offset-1 text-center">
                            <table class="table table-hover table-bordered w-100 h-100">
                                <tr>
                                    <th colspan="2" class="text-center font-weight-bold">Bilet rodzinny</th>
                                </tr>
                                <tr>
                                    <td>Rodzic + 2 dzieci</td>
                                    <td>50 zł/h</td>
                                </tr>
                                <tr>
                                    <td>Rodzice + 2 dzieci</td>
                                    <td>60 zł/h<br />
                                        +15zł każde kolejne dziecko</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <%--oppenings--%>
            <div class="col-10 offset-1 col-md-5 offset-md-0" id="openings">
                <div class="white-border p-3 ml-md-2 h-100">
                    <div class="row pt-3 pb-3">
                        <div class="col-12  text-center">
                            <h2 class="h2 text-center">Godziny otwarcia</h2>
                        </div>
                    </div>
                    <div class="row mb-md-5">
                        <div class="col-10 offset-1 text-center">
                            <table class="table table-hover table-bordered w-100 h-100">
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
                                    <td>10 - 24</td>
                                </tr>
                                <tr>
                                    <td>Niedziela</td>
                                    <td>10 - 24</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row no-gutters mt-5">
                <div class="col-10 offset-1">
                    <div class="row">
                        <div class="col-3">
                            <img class="img-fluid" src="../Images/wywrotkaDefault.png" />
                        </div>
                        <div class="col-9">
                            <h2>Urodziny
                            </h2>
                            <p>
                                BEST B-DAY EVER
                            </p>
                            <p>
                                Jeżeli nie chcesz standardowej imprezy urodzinowej, zrób to inaczej. Zabierz znajomych do nas, a gwarantujemy, że nie zapomnicie tego dnia.
                            </p>
                            <p>
                                Duży tor wrotkarski, zgrana paczka znajomych, świetna muzyka i światła – czego chcieć więcej? Napisz do nas, ile osób zaprosisz i jak chcesz, aby impreza wyglądała, a my zadbamy o to, żeby Twoje urodziny były kosmiczne!
                            </p>
                            <p><a data-toggle="collapse" data-target="#bday">Czytaj więcej...</a></p>
                            <div id="bday" class="collapse">
                                <p>Na urodziny:</p>
                                <div class="pl-3">
                                    <ul style="list-style-type: disc">
                                        <li>Ty i Twoi znajomi otrzymujecie miejsce w specjalnej loży</li>
                                        <li>Macie słodkości i napojów do wyboru, do koloru</li>
                                        <li>Rzecz jasna wstęp na tor z całym pakietem (wrotki, ochraniacze)</li>
                                        <li>Możecie wnieść: tort, itp. (do ustalenia)</li>
                                        <li>Jeżeli solenizant jest małoletni, możemy zaprosić dla niego i jego gości animatora, który wymyśli dla nich odlotowe gry i zabawy</li>
                                    </ul>
                                </div>
                                <p>Jeżeli chcesz zrobić niezapomniane urodziny, zadzwoń do nas nie później niż z 3-dniowym wyprzedzeniem. W przypadku imprez dla dzieci prosimy o obecność osoby dorosłej.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row no-gutters mt-3">
                <div class="col-10 offset-1">
                    <div class="row">
                        <div class="col-3">
                            <img class="img-fluid" src="../Images/wywrotkaDefault.png" />
                        </div>
                        <div class="col-9">
                            <h2>Wieczór panieński
                            </h2>
                            <p>
                                OSTATNIA TAKA NOC
                            </p>
                            <p>
                                Przyjaciółka już po kursie tańca, po przymiarkach i gotowa do ślubu? Nie! Jeszcze wieczór panieński! W ramach before’u zabierz ją na roller disco, żeby nigdy nie zapomniała, że najlepiej bawi się właśnie z przyjaciółkami. 
                            </p>
                            <p><a data-toggle="collapse" data-target="#maids">Czytaj więcej...</a></p>
                            <div class="collapse" id="maids">
                                <p>Ty, panna młoda i Wasze przyjaciółki macie zapewnione:</p>
                                <div class="pl-3">
                                    <ul style="list-style-type: disc">
                                        <li>Specjalną lożę na ten wieczór</li>
                                        <li>Tyle słodkości, ile dusza zapragnie, żeby osłodzić ostatnie dni wolności przyszłej panny młodej</li>
                                        <li>Wejście na tor i wrotki w kolorach, jakie Wam się spodobają</li>
                                        <li>Możecie wnieść: tort, przekąski itp. (do ustalenia)</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row no-gutters">
                <div class="col-10 offset-1">
                    <div class="row">
                        <div class="col-3">
                            <img class="img-fluid" src="../Images/wywrotkaDefault.png" />
                        </div>
                        <div class="col-9">
                            <h2>Imprezy prywatne
                            </h2>
                            <p>
                                ŚWIATŁA, KAMERA, AKCJA. TEGO W POZNANIU JESZCZE NIE BYŁO
                            </p>
                            <p>
                                Nie krępuj się i obejmij dowodzenie nad Wywrotką na jeden szalony wieczór. Jeżeli robisz naprawdę dobrą imprezę, a do pełni szczęścia brakuje Ci tylko klimatycznej przestrzeni i motywu, który rozrusza Twoich ludzi, jesteś w dobrym miejscu.
                            </p>
                            <p><a data-toggle="collapse" data-target="#private">Czytaj więcej...</a></p>
                            <div class="collapse" id="private">
                                <div class="pl-3">
                                    <ul style="list-style-type: disc">
                                        <li>Podczas dużych imprez tor jest wyłącznie do Twojej dyspozycji</li>
                                        <li>Nie oferujemy własnego ciepłego cateringu, ale chętnie pomożemy zorganizować się firmie wybranej przez Ciebie</li>
                                        <li>Miejsca raczej nie zabraknie - na torze mieści się do 50 osób, a w szatni czeka 100 par wrotek w 22 rozmiarach.</li>
                                        <li>Daj nam znać, jeżeli masz jakieś specjalne pomysły, a my coś wymyślimy, żeby je zrealizować.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row no-gutters" style="display:none;">
                <div class="col-10 offset-1">
                    <div class="row">
                        <div class="col-3">
                            <img class="img-fluid" src="../Images/wywrotkaDefault.png" />
                        </div>
                        <div class="col-9">
                            <h2>Warsztaty nauki jazdy
                            </h2>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                            </p>
                            <p>
                               Brak opisu.
                            </p>
                            <p><a data-toggle="collapse" data-target="#training">Czytaj więcej...</a></p>
                            <div class="collapse" id="training">
                                <p>
                                    
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
