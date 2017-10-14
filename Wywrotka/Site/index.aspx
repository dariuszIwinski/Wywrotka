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
        .text-justify
        {
            height: 100%;
             display: flex;
    align-items: center;
    justify-content: center;
        }
    </style>

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
            <img class="img-fluid" src="../Images/wywrotka_logo.png" style="max-height: 2em;" />
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
            <div class="col-4 offset-4 w-100" id="logo">
                <div id="about_logo_black" data-aos="flip-left" class="w-50 offset-3">
                </div>
            </div>
        </div>
        <%-- first line --%>
        <div class="row no-gutters hidden-sm-down">
            <div class="col-6"></div>
            <div class="col-4">
                <img data-aos="zoom-in" src="../Images/dottedLine_first.png" />
            </div>
            <div class="col-md-4"></div>
        </div>
        <%-- right --%>
         <div class="row no-gutters">
            <div data-aos="zoom-in" class="col-md-5 offset-md-1 p-2">
               <div style="height: 100%;">
                    <p class="text-justify p-2">Nie musisz mieć wrotek – po prostu przyjdź. Sprzęt się znajdzie, i to całkiem niezły. Na miejscu mamy przede wszystkim wrotki rekreacyjne, czyli najwygodniejsze, najbezpieczniejsze i najbardziej klimatyczne. Stawiamy na dwóch producentów: polskiego Rookie i kultowego Rio Roller. Obaj zapewniają doskonałą jakość i wygodę jazdy. </p>
                </div>
            </div>
            <div data-aos="zoom-in" class="col-5 offset-1">
                 <div class="white p-2">
                    <div class="elipsa darkblue" style="border: dotted 2px rgb(238,92,160)">
                            <h2 class="text-center" style="color: white; padding-top: 2.5em; text-shadow: -1px 0 rgb(238,92,160), 0 1px rgb(238,92,160), 1px 0 rgb(238,92,160), 0 -1px rgb(238,92,160); font-weight: 400;">Wypożyczalnia</h2>
                    </div>
                </div>
                
            </div>
        </div>
         <%-- dotted reverse --%>
         <div class="row no-gutters hidden-sm-down">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <img data-aos="zoom-in" class="" src="../Images/dottedLine_reverse.png" />
            </div>
            <div class="col-md-4"></div>
        </div>
        <%-- left --%>
        <div class="row no-gutters">
            <div data-aos="zoom-in" class="col-5 offset-1 p-2">
                <div class="white p-2">
                    <div class="elipsa darkblue" style="border: dotted 2px rgb(238,92,160)">
                            <h2 class="text-center" style="color: white; padding-top: 2.5em; text-shadow: -1px 0 rgb(238,92,160), 0 1px rgb(238,92,160), 1px 0 rgb(238,92,160), 0 -1px rgb(238,92,160); font-weight: 400;">Kawiarnia</h2>
                    </div>
                </div>
            </div>
            <div data-aos="zoom-in" class="col-5">
                <div style="height: 100%;">
                    <p class="text-justify p-2">Na miejscu otworzyliśmy kawiarnię, w której poza przekąskami dostaniecie też to, co zakochane w Ameryce i wrotkach misie lubią najbardziej – watę cukrową i popcorn.  
Kawiarnia działa w tych samych godzinach, co wrotkarnia. Można wejść tu i poczekać na dzieciaki bez wykupowania wstępu na tor.</p>
                </div>
            </div>
        </div>
        <%-- dotted --%>
         <div class="row no-gutters">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <img data-aos="zoom-in" class="" src="../Images/dottedLine.png" />
            </div>
            <div class="col-md-4"></div>
        </div>
        <%-- right --%>
        <div class="row no-gutters">
            <div data-aos="zoom-in" class="col-5 offset-1">
                <div style="height: 100%;">
                    <p class="text-justify p-2">Let’s Make a Great
Space Party! Towarzystwo z odległych galaktyk i z kart amerykańskich komiksów już przybyło i czeka, aż dołączysz do nich na torze.  Z resztą, co tu dużo pisać? Zobacz, jak to u nas wygląda: LINK.
Na imprezach puszczamy
najlepsze hity lat ’70,
’80 i ’90, więc nogi
same Cię poprowadzą. 
</p>
                </div>
            </div>
            <div data-aos="zoom-in" class="col-5 offset-1 p-2">
                <div class="white p-2">
                    <div class="elipsa darkblue" style="border: dotted 2px rgb(238,92,160)">
                            <h2 class="text-center" style="color: white; padding-top: 2.5em; text-shadow: -1px 0 rgb(238,92,160), 0 1px rgb(238,92,160), 1px 0 rgb(238,92,160), 0 -1px rgb(238,92,160); font-weight: 400;">Klimat</h2>
                    </div>
                </div>
            </div>
        </div>
        <%-- dotted reverse --%>
         <div class="row no-gutters">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <img data-aos="zoom-in" class="" src="../Images/dottedLine_reverse.png" />
            </div>
            <div class="col-md-4"></div>
        </div>
        <%-- left --%>
         <div class="row no-gutters">
            <div data-aos="zoom-in" class="col-5 offset-1 p-2">
                <div class="white p-2">
                    <div class="elipsa darkblue" style="border: dotted 2px rgb(238,92,160)">
                            <h2 class="text-center" style="color: white; padding-top: 2.5em; text-shadow: -1px 0 rgb(238,92,160), 0 1px rgb(238,92,160), 1px 0 rgb(238,92,160), 0 -1px rgb(238,92,160); font-weight: 400;">Superbohaterowie</h2>
                    </div>
                </div>
            </div>
            <div data-aos="zoom-in" class="col-5">
                <div style="height: 100%;">
                    <p class="text-justify p-2">Kto nie kocha superbohaterów? Zainspirowani amerykańską popkulturą zaprosiliśmy kilka skądinąd dobrze znanych postaci. No i przybyli. 
Na torze spotkasz Strażników Galaktyki, Iron Mana i Spidermana. Be our guest, pstrykaj zdjęcia do woli! Nie obrażą się.
 </p>
                </div>
            </div>
        </div>
        <%-- dotted --%>
         <div class="row no-gutters">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <img data-aos="zoom-in" class="" src="../Images/dottedLine.png" />
            </div>
            <div class="col-md-4"></div>
        </div>
          <%-- right --%>
        <div class="row no-gutters">
            <div data-aos="zoom-in" class="col-5 offset-1">
                <div style="height: 100%;">
                    <p class="text-justify p-2">Wszystkie dobre historie zaczynają się od miłości. Tak było i w naszym przypadku. Michał, pomysłodawca i założyciel Wywrotki, należy do osób, które nie mogą usiedzieć długo w jednym miejscu, muszą coś robić. Na początku było karate, potem koszykówka, aż wreszcie trafił do drużyny wioślarskiej, z którą nie raz i nie dwa sięgał po złoto w krajowych i międzynarodowych zawodach. W pewnym momencie człowiek orientuje się jednak, że w życiu nie trzeba się ograniczać do jednej drogi. W ten sposób Michał trafił na oldschoolowe wrotki. No i wpadł na dobre. Teraz wystarczyło zebrać wokół siebie ludzi z tą samą pasją i reaktywować poznańskie tradycje wrotkarskie. </p>
                </div>
            </div>
            <div data-aos="zoom-in" class="col-5 offset-1 p-2">
                <div class="white p-2">
                    <div class="elipsa darkblue" style="border: dotted 2px rgb(238,92,160)">
                            <h2 class="text-center" style="color: white; padding-top: 2.5em; text-shadow: -1px 0 rgb(238,92,160), 0 1px rgb(238,92,160), 1px 0 rgb(238,92,160), 0 -1px rgb(238,92,160); font-weight: 400;">Historia</h2>
                    </div>
                </div>
            </div>
        </div>
        <%-- dotted reverse --%>
         <div class="row no-gutters">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <img data-aos="zoom-in" class="" src="../Images/dottedLine_reverse.png" />
            </div>
            <div class="col-md-4"></div>
        </div>
        <%-- left --%>
         <div class="row no-gutters">
            <div data-aos="zoom-in" class="col-5 offset-1 p-2">
                <div class="white p-2">
                    <div class="elipsa darkblue" style="border: dotted 2px rgb(238,92,160)">
                            <h2 class="text-center" style="color: white; padding-top: 2.5em; text-shadow: -1px 0 rgb(238,92,160), 0 1px rgb(238,92,160), 1px 0 rgb(238,92,160), 0 -1px rgb(238,92,160); font-weight: 400;">Cel</h2>
                    </div>
                </div>
            </div>
            <div data-aos="zoom-in" class="col-5">
                <div style="height: 100%;">
                    <p class="text-justify p-2">Nasz cel jest prosty – chcemy byś mógł i mogła spędzać czas aktywnie, świetnie się przy tym bawiąc. Let’s roll again! Wrotki są super klimatycznym sportem dostępnym dla każdego, niezależnie od wieku, kondycji i talentu. Można uprawiać go z grupą znajomych albo w pojedynkę. Można ścigać się, tańczyć czy łączyć się w drużyny i grać w roller derby. 
 </p>
                </div>
            </div>
        </div>
          <%-- dotted --%>
         <div class="row no-gutters">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <img data-aos="zoom-in" class="" src="../Images/dottedLine.png" />
            </div>
            <div class="col-md-4"></div>
        </div>
           <%-- right --%>
        <div class="row no-gutters">
            <div data-aos="zoom-in" class="col-5 offset-1">
                <div style="height: 100%;">
                    <p class="text-justify p-2">Jak byśmy się nie przyglądali ludziom wokół nas, wychodzi na jedno – Polacy nie lubią się nudzić! Wieczory przed telewizorem? To nie dla nich! Trzeba więc stworzyć miejsce, w którym można się wybawić, wyszaleć i gdzie nie będzie wiało nudą. Jednym słowem – w Poznaniu potrzebujemy miejsca z dobrym klimatem.  Tak powstał pomysł na wrotkarnię. Brzmi to oldschoolowo? I pewnie tak jest, ale przez to nasze miejsce ma wyjątkową atmosferę.</p>
                </div>
            </div>
            <div data-aos="zoom-in" class="col-5 offset-1 p-2">
                <div class="white p-2">
                    <div class="elipsa darkblue" style="border: dotted 2px rgb(238,92,160)">
                            <h2 class="text-center" style="color: white; padding-top: 2.5em; text-shadow: -1px 0 rgb(238,92,160), 0 1px rgb(238,92,160), 1px 0 rgb(238,92,160), 0 -1px rgb(238,92,160); font-weight: 400;">Pomysł</h2>
                    </div>
                </div>
            </div>
        </div>
        
        <%-- space --%>
         <div class="row no-gutters" style="height: 6em;">
            
        </div>
    </div>
    <script src="Scripts/jquery-3.2.1.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="https://cdn.rawgit.com/michalsnik/aos/2.0.4/dist/aos.js"></script>
    <script>
        AOS.init({
            duration: 2000,
        })


    </script>
    <%-- <script type="text/javascript">
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
    </script>--%>
</asp:Content>
