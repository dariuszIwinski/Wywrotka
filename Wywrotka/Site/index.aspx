<%@ Page Title="" Language="C#" MasterPageFile="~/Site/SiteMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Wywrotka.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css--%>
    <link href="../Styles/css/zero.css" rel="stylesheet" />
    <link href="../Styles/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/css/navigation.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/css/frino/frinostyle.css" rel="stylesheet" />
    <link href="../Styles/css/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel='stylesheet prefetch' href='https://cdn.rawgit.com/michalsnik/aos/2.0.4/dist/aos.css'>
    <style>
        .text-justify {
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }
    </style>

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
                        <li class="nav-item pt-1 pb-1"><a class="nav-link active" href="index.aspx">O NAS</a></li>
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
    <%--about us--%>
    <div class="container container-main" style="min-height: 90vh;">
        <div class="row no-gutters pb-5">
            <div class="col-12">
                <div class="header-background text-center">
                    <h1 class="h1">Rollerspace</h1>
                </div>
            </div>
        </div>
        <%-- right --%>
        <div class="row no-gutters pb-5 p-md-0">
            <div data-aos="zoom-in" class="col-10 offset-1 col-sm-6 offset-sm-3 col-md-5 offset-md-0">
                <div class="white">
                    <div class="center-inner-divs">
                        <div class="elipsa darkblue">
                            <h2 class="text-center eplisa-text">Wypożyczalnia</h2>
                        </div>
                    </div>

                </div>
            </div>
            <div data-aos="zoom-in" class="col-10 offset-1 col-md-5 offset-md-0">
                <div class="h-100 p-3">
                    <p class="text-justify">
                        Nie musisz mieć wrotek – po prostu przyjdź. Sprzęt się znajdzie, i to całkiem niezły. Na miejscu mamy przede wszystkim wrotki rekreacyjne, czyli najwygodniejsze, najbezpieczniejsze i najbardziej klimatyczne. Stawiamy na dwóch producentów: polskiego Rookie i kultowego Rio Roller. Obaj zapewniają doskonałą jakość i wygodę jazdy.
                    </p>
                </div>
            </div>
        </div>
        <%-- dotted reverse --%>
        <div class="row no-gutters hidden-sm-down">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <img data-aos="zoom-in" class="" src="../Images/dottedLine.png" />
            </div>
            <div class="col-md-4"></div>
        </div>
        <%-- left --%>
        <div class="row no-gutters pb-5 p-md-0">
            <div id="lastCoffee" data-aos="zoom-in" class="col-10 offset-1 col-md-5 offset-md-0">
                <div class="white">
                    <div class="center-inner-divs">
                        <div class="elipsa darkblue">
                            <h2 class="text-center eplisa-text">Kawiarnia</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div id="firstCoffee" data-aos="zoom-in" class="col-10 offset-1 col-md-5">
                <div class="h-100 p-3">
                    <p class="text-justify">
                        Na miejscu otworzyliśmy kawiarnię, w której poza przekąskami dostaniecie też to, co zakochane w Ameryce i wrotkach misie lubią najbardziej – watę cukrową i popcorn. Kawiarnia działa w tych samych godzinach, co wrotkarnia. Można wejść tu i poczekać na dzieciaki bez wykupowania wstępu na tor.
                    </p>
                </div>
            </div>
        </div>
        <%-- dotted --%>
        <div class="row no-gutters hidden-sm-down">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <img data-aos="zoom-in" class="" src="../Images/dottedLine_reverse.png" />
            </div>
            <div class="col-md-4"></div>
        </div>
        <%-- right --%>
        <div class="row no-gutters pb-5 p-md-0">
            <div data-aos="zoom-in" class="col-10 offset-1 col-md-5 offset-md-0">
                <div class="white">
                    <div class="center-inner-divs">
                        <div class="elipsa darkblue">
                            <h2 class="text-center eplisa-text">Klimat</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div data-aos="zoom-in" class="col-10 offset-1 col-md-5 offset-md-0">
                <div class="h-100 p-3">
                    <p class="text-justify">
                        Let’s Make a Great Space Party! Towarzystwo z odległych galaktyk i z kart amerykańskich komiksów już przybyło i czeka, aż dołączysz do nich na torze.  Z resztą, co tu dużo pisać? Zobacz, jak to u nas wygląda. Na imprezach puszczamy najlepsze hity lat ’70, ’80 i ’90, więc nogi same Cię poprowadzą. 
                    </p>
                </div>
            </div>
        </div>
        <%-- dotted reverse --%>
        <div class="row no-gutters hidden-sm-down">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <img data-aos="zoom-in" class="" src="../Images/dottedLine.png" />
            </div>
            <div class="col-md-4"></div>
        </div>
        <%-- left --%>
        <div class="row no-gutters pb-5 p-md-0">
            <div id="lastSuperHeroes" data-aos="zoom-in" class="col-10 offset-1 col-md-5 offset-md-0 move-last">
                <div class="white">
                    <div class="center-inner-divs">
                        <div class="elipsa darkblue">
                            <h2 class="text-center eplisa-text">Superbohaterowie</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div id="firstSuperHeroes" data-aos="zoom-in" class="col-10 offset-1 col-md-5">
                <div class="h-100 p-3">
                    <p class="text-justify">
                        Kto nie kocha superbohaterów? Zainspirowani amerykańską popkulturą zaprosiliśmy kilka skądinąd dobrze znanych postaci. No i przybyli. Na torze spotkasz Strażników Galaktyki, Iron Mana i Spidermana. Be our guest, pstrykaj zdjęcia do woli! Nie obrażą się.
                    </p>
                </div>
            </div>
        </div>
        <%-- dotted --%>
        <div class="row no-gutters hidden-sm-down">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <img data-aos="zoom-in" class="" src="../Images/dottedLine_reverse.png" />
            </div>
            <div class="col-md-4"></div>
        </div>
        <%-- right --%>
        <div class="row no-gutters pb-5 p-md-0">
            <div data-aos="zoom-in" class="col-10 offset-1 col-md-5 offset-md-0">
                <div class="white">
                    <div class="center-inner-divs">
                        <div class="elipsa darkblue">
                            <h2 class="text-center eplisa-text">Historia</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div data-aos="zoom-in" class="col-10 offset-1 col-md-5 offset-md-0">
                <div class="h-100 p-3">
                    <p class="text-justify">
                        Wszystkie dobre historie zaczynają się od miłości. Tak było i w naszym przypadku. Michał, pomysłodawca i założyciel Wywrotki, należy do osób, które nie mogą usiedzieć długo w jednym miejscu, muszą coś robić. Na początku było karate, potem koszykówka, aż wreszcie trafił do drużyny wioślarskiej, z którą nie raz i nie dwa sięgał po złoto w krajowych i międzynarodowych zawodach. W pewnym momencie człowiek orientuje się jednak, że w życiu nie trzeba się ograniczać do jednej drogi. W ten sposób Michał trafił na oldschoolowe wrotki. No i wpadł na dobre. Teraz wystarczyło zebrać wokół siebie ludzi z tą samą pasją i reaktywować poznańskie tradycje wrotkarskie.
                    </p>
                </div>
            </div>
        </div>
        <%-- dotted reverse --%>
        <div class="row no-gutters hidden-sm-down">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <img data-aos="zoom-in" class="" src="../Images/dottedLine.png" />
            </div>
            <div class="col-md-4"></div>
        </div>
        <%-- left --%>
        <div class="row no-gutters pb-5 p-md-0">
            <div id="lastTarget" data-aos="zoom-in" class="col-10 offset-1 col-md-5 offset-md-0">
                <div class="white">
                    <div class="center-inner-divs">
                        <div class="elipsa darkblue">
                            <h2 class="text-center eplisa-text">Cel</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div id="firstTarget" data-aos="zoom-in" class="col-10 offset-1 col-md-5">
                <div class="h-100 p-3">
                    <p class="text-justify">
                        Nasz cel jest prosty – chcemy byś mógł i mogła spędzać czas aktywnie, świetnie się przy tym bawiąc. Let’s roll again! Wrotki są super klimatycznym sportem dostępnym dla każdego, niezależnie od wieku, kondycji i talentu. Można uprawiać go z grupą znajomych albo w pojedynkę. Można ścigać się, tańczyć czy łączyć się w drużyny i grać w roller derby. 
                    </p>
                </div>
            </div>
        </div>
        <%-- dotted --%>
        <div class="row no-gutters hidden-sm-down">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <img data-aos="zoom-in" class="" src="../Images/dottedLine_reverse.png" />
            </div>
            <div class="col-md-4"></div>
        </div>
        <%-- right --%>
        <div class="row no-gutters pb-5">
            <div data-aos="zoom-in" class="col-10 offset-1 col-md-5 offset-md-0">
                <div class="white">
                    <div class="center-inner-divs">
                        <div class="elipsa darkblue">
                            <h2 class="text-center eplisa-text">Pomysł</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div data-aos="zoom-in" class="col-10 offset-1 col-md-5 offset-md-0">
                <div class="h-100 p-3">
                    <p class="text-justify">Jak byśmy się nie przyglądali ludziom wokół nas, wychodzi na jedno – Polacy nie lubią się nudzić! Wieczory przed telewizorem? To nie dla nich! Trzeba więc stworzyć miejsce, w którym można się wybawić, wyszaleć i gdzie nie będzie wiało nudą. Jednym słowem – w Poznaniu potrzebujemy miejsca z dobrym klimatem.  Tak powstał pomysł na wrotkarnię. Brzmi to oldschoolowo? I pewnie tak jest, ale przez to nasze miejsce ma wyjątkową atmosferę.</p>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.rawgit.com/michalsnik/aos/2.0.4/dist/aos.js"></script>
    <script>
        AOS.init({
            duration: 2000
        });
    </script>
    <%--scripts--%>
        <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script type="text/javascript">
        $(document).ready(function () {
           
            var width = $(window).width();
            if (width > 1000) {
                $("#lastSuperHeroes").insertAfter("#firstSuperHeroes");
                $("#lastCoffee").insertAfter("#firstCoffee"); 
                $("#lastTarget").insertAfter("#firstTarget"); 


            }
        })
    </script>
</asp:Content>
