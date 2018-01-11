<%@ Page Title="" Language="C#" MasterPageFile="~/Site/SiteMaster.Master" AutoEventWireup="true" CodeBehind="rules.aspx.cs" Inherits="Wywrotka.rules" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
                        <li class="nav-item pt-1 pb-1 active"><a class="nav-link" href="rules.aspx">REGULAMIN</a></li>
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
        <%--rules--%>
        <div class="row no-gutters">
            <div class="col-12">
                <div class="header-background text-center">
                    <h1 class="h1">Regulamin</h1>
                </div>
            </div>
        </div>
        <div class="row no-gutters mt-5" style="min-height: 75vh;">
            <div class="col-12 text-center">
                <div class="col-8 offset-2 col-md-6 offset-md-3">
                    <ol class="list-ordered">
                        <li>Operatorem <b>Wrotkarni „Wywotka” Roller Skates Park</b> przy ul. Bolesława Krzywoustego 72 w Poznaniu (Kinepolis) – w dalszej części Regulaminu: <b>Obiekt</b> – jest <b>Wywrotka spółka z ograniczoną odpowiedzialnością spółka komandytowa</b> z siedzibą w Poznaniu, przy ul. Katowickiej 55B/16, 61-131 Poznań, NIP 782-275-25-11; REGON 368639659; KRS 702160.</li>
                        <li>Wszystkie osoby przebywające na terenie Obiektu oraz korzystające z Obiektu są <b>Użytkownikami</b>, którzy zobowiązani są do zapoznania się i przestrzegania Regulaminu Wrotkarni „Wywrotka” Roller Skates Park – w dalszej części <b>Regulamin</b>. Wejście na teren Obiektu, przybywanie na nim i korzystanie z Obiektu jest równoznaczne z zapoznaniem się, akceptacją oraz zobowiązaniem się do przestrzegania Regulaminu.</li>
                        <li>Przebywanie¬ na terenie obiektu wiąże się z bezwzględnym obowiązkiem przestrzegania Regulaminu oraz wykonywania poleceń obsługi Obiektu. Użytkownik korzysta z Obiektu dobrowolnie i na własną odpowiedzialność. W przypadku naruszenia postanowień Regulaminu, obsługa Obiektu uprawniona jest do nakazania jego opuszczenia, bez prawa do zwrotu poniesionych wydatków.</li>
                        <li>Na terenie Obiektu znajduje się:
                            <ol>
                                <li>tor wrotkarski;</li>
                                <li>wypożyczalnia sprzętu wrotkarskiego,</li>
                                <li>kawiarenka,</li>
                                <li>szatnia,</li>
                                <li>toaleta.</li>
                            </ol>
                        </li>
                        <li>Korzystanie z Obiektu jest płatne. Warunki odpłatnego korzystania z Obiektu ustalone są w obowiązującym <b>Cenniku</b>. Cennik udostępniony jest w Obiekcie oraz na stronie internetowej Obiektu. Warunki bezpłatnego korzystania z Obiektu określa każdorazowo Operator. </li>
                        <li>Obiekt ma charakter ogólnodostępny i jest czynny zgodnie z Harmonogramem. <b>Harmonogram</b> udostępniony jest w Obiekcie i na stronie internetowej Obiektu. Warunki korzystania z Obiektu poza godzinami określonymi w Harmonogramie, oraz z pominięciem Harmonogramu, określa każdorazowo Operator. Operator zastrzega prawo do nakazania opuszczenia i zamknięcia Obiektu w każdym czasie z przyczyn niezależnych.</li>
                        <li>Użytkownicy <b>poniżej 13 lat</b> mogą korzystać z Obiektu wyłącznie pod pieczą przedstawiciela ustawowego. Użytkownicy, którzy <b>ukończyli 13 lat</b>, mogą korzystać z Obiektu za wyrażoną na piśmie zgodą przedstawiciela ustawowego.</li>
                        <li>Korzystanie z Obiektu przez <b>Grupy Zorganizowane</b> wymaga potwierdzenia przez Operatora rezerwacji zgłoszonej z jednodniowym wyprzedzeniem. Grupą Zorganizowaną w rozumieniu Regulaminu jest grupa co najmniej 10 zindywidualizowanych osób, z wyznaczoną osobą Opiekuna Grupy, ponoszącą odpowiedzialność za zachowanie i bezpieczeństwo tych osób na mocy odrębnych regulacji. Warunki korzystania z Obiektu przez Grupy Zorganizowane oraz indywidualnych Użytkowników w tym czasie określa każdorazowo Operator.</li>
                        <li>Użytkownik <b>zobowiązany</b> jest do zachowania należytej ostrożności podczas korzystania z Obiektu, unikania sytuacji zagrożenia dla siebie oraz innych Użytkowników.</li>
                        <li>Użytkownik toru wrotkarskiego Obiektu <b>zobowiązany</b> jest korzystania podczas jazdy z kasku oraz kompletu ochraniaczy. Operator nie ponosi odpowiedzialności za bezpieczeństwo Użytkowników, którzy rezygnują z kasku i ochraniaczy.</li>
                        <li>Wszelkie nieprawidłowości związane z funkcjonowaniem wypożyczonego w Obiekcie sprzętu należy niezwłocznie zgłaszać obsłudze Obiektu.</li>
                        <li>Użytkownik <b>zobowiązany</b> jest oddać wypożyczony w Obiekcie sprzęt w stanie niepogorszonym, w miejscu do tego wyznaczonym, natychmiast po zakończeniu korzystania z toru wrotkarskiego Obiektu, i ponosi związaną z tym odpowiedzialność.</li>
                        <li>Na torze wrotkarskim Obiektu może jednocześnie <b>przebywać</b> nie więcej niż 45 Użytkowników. Operator zastrzega prawo do zamknięcia toru wrotkarskiego dla kolejnych Użytkowników po osiągnięciu tej liczby.</li>
                        <li>Na terenie Obiektu <b>zabrania</b> się:
                            <ol>
                                <li>jazdy na wrotkach poza torem wrotkarskim;</li>
                                <li>wnoszenia przedmiotów mogących stanowić zagrożenie dla życia bądź zdrowia innych Użytkowników;</li>
                                <li>wnoszenia artykułów spożywczych zakupionych poza Obiektem, napojów alkoholowych w rozumieniu ustawy z dnia 26 października 1992 r. o wychowaniu w trzeźwości i przeciwdziałaniu alkoholizmowi (Dz.U. 1982 Nr 35 poz. 230 ze zm.), środków odurzających, substancji psychotropowych, środków zastępczych lub nowych substancji psychoaktywnych w rozumieniu ustawy z dnia 29 lipca 2005 r. o przeciwdziałaniu narkomanii (Dz.U. 2005 Nr 179 poz. 1485 ze zm.);</li>
                                <li>przebywania i korzystania z Obiektu w stanie wskazującym na spożycie alkoholu w rozumieniu ustawy z dnia 26 października 1992 r. o wychowaniu w trzeźwości i przeciwdziałaniu alkoholizmowi (Dz.U. 1982 Nr 35 poz. 230 ze zm.), pod wpływem środków odurzających, substancji psychotropowych, środków zastępczych lub nowych substancji psychoaktywnych w rozumieniu ustawy z dnia 29 lipca 2005 r. o przeciwdziałaniu narkomanii (Dz.U. 2005 Nr 179 poz. 1485 ze zm.), korzystania z wyrobów tytoniowych w rozumieniu ustawy z dnia 9 listopada 1995 r. o ochronie zdrowia przed następstwami używania tytoniu i wyrobów tytoniowych (Dz.U. 1996 Nr 10 poz. 55 ze zm.)</li>
                                <li>wchodzenia do pomieszczeń technicznych Obiektu;</li>
                                <li>zaśmiecania i niszczenia mienia Obiektu;</li>
                                <li>wprowadzania do Obiektu zwierząt.</li>
                            </ol>
                        </li>
                        <li>Korzystanie z Obiektu związane jest z <b>ryzykiem sportowym</b> powstania urazów i uszkodzeń ciała. Operator nie ponosi odpowiedzialności za szkody na osobie oraz na mieniu wynikłe podczas oraz związane z korzystaniem z Obiektu. W przypadku doznania przez Użytkownika urazu bądź uszkodzenia ciała, należy niezwłocznie powiadomić obsługę Obiektu.</li>
                        <li>Operator <b>nie ponosi odpowiedzialności</b> za zniszczenie, uszkodzenie bądź utratę przedmiotów Użytkowników na terenie Obiektu.</li>
                        <li>Regulamin obowiązuje od dnia 21.12.2017.</li>
                    </ol>


                </div>
            </div>
        </div>
    </div>
</asp:Content>
