<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="offer.aspx.cs" Inherits="Wywrotka.offer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterBody" runat="server">
    <div class="container container-main">
           <%--offer--%>
            <div class="row container-split">
                <div class="col-12 last text-justify">
                    <div class="row first" style="height: 1em;">
                        <br />
                    </div>
                    <h3 class="h3 text-center">OFERTA</h3>
                    <div class="row first" style="height: 1em;">
                        <br />
                    </div>
                    <div class="row" style="margin-top: 1em;">
                        <div class="col-md-4">
                            <img src="img/daisy.jpg" alt="Alternate Text" class="img-fluid offer-img rounded-circle mx-auto d-block" />
                            <h4 class="h4 text-center">Wejście na tor
                            </h4>
                            <p class="text-center">Jednarozowe wejście na tor</p>
                        </div>
                        <div class="col-md-4">
                            <img src="img/daisy.jpg" alt="Alternate Text" class="img-fluid offer-img rounded-circle mx-auto d-block" />
                            <h4 class="h4 text-center">Wejście na tor
                            </h4>
                            <p class="text-center">Jednarozowe wejście na tor</p>
                        </div>
                        <div class="col-md-4">
                            <img src="img/daisy.jpg" alt="Alternate Text" class="img-fluid offer-img rounded-circle mx-auto d-block" />
                            <h4 class="h4 text-center">Wejście na tor
                            </h4>
                            <p class="text-center">Jednarozowe wejście na tor</p>
                        </div>
                    </div>

                </div>
            </div>
            <%--prices--%>
            <div class="row container-split">
                <div class="col-12 text-justify">
                    <div class="row first" style="height: 1em;">
                        <br />
                    </div>
                    <h3 class="h3 text-center">CENNIK</h3>
                    <div class="row first" style="height: 1em;">
                        <br />
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="row">
                                <div class="col-md-4 offset-2">
                                    <div class="pricing-wrapper">
                                        <div class="pricing-header">
                                            <h4 class="h4">Bilet normalny</h4>
                                        </div>
                                        <div class="pricing-description">
                                            <p>
                                                Osoba powyżej 18 lat
                                                 <br />
                                                <br />
                                            </p>

                                        </div>
                                        <div class="pricing-table">
                                            <table class="table-bordered table-hover text-center">
                                                <tr>
                                                    <td>60 min</td>
                                                    <td>25 zł</td>
                                                </tr>
                                                <tr>
                                                    <td>120 min</td>
                                                    <td>45 zł</td>
                                                </tr>
                                                <tr>
                                                    <td>Cały dzień</td>
                                                    <td>60 zł</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-wrapper">
                                        <div class="pricing-header">
                                            <h4 class="h4">Bilet ulgowy</h4>
                                        </div>
                                        <div class="pricing-description">
                                            <p>
                                                Osoba poniżej 18 lat
                                                <br />
                                                lub za okazaniem ważnej legitymacji
                                            </p>
                                        </div>
                                        <div class="pricing-table">
                                            <table class="table-bordered table-hover text-center">
                                                <tr>
                                                    <td>60 min</td>
                                                    <td>20 zł</td>
                                                </tr>
                                                <tr>
                                                    <td>120 min</td>
                                                    <td>35 zł</td>
                                                </tr>
                                                <tr>
                                                    <td>Cały dzień</td>
                                                    <td>50 zł</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 offset-2">
                                    <div class="pricing-wrapper">
                                        <div class="pricing-header">
                                            <h4 class="h4">Bilet rodzinny</h4>
                                        </div>
                                        <div class="pricing-description">
                                            <p>Min. 1 dziecko i 1 osoba dorosła</p>
                                        </div>
                                        <div class="pricing-description no-padding no-margin">
                                            Dziecko do 18 lat
                                        </div>
                                        <div class="pricing-table">
                                            <table class="table-bordered table-hover text-center no-border">
                                                <tr>
                                                    <td>60 min.</td>
                                                    <td>18 zł / os.</td>
                                                </tr>
                                                <tr>
                                                    <td>120 min.</td>
                                                    <td>32 zł / os.</td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="pricing-description no-padding no-margin">
                                            Rodzic
                                        </div>
                                        <div class="pricing-table">
                                            <table class="table-bordered table-hover text-center">
                                                <tr>
                                                    <td>60 min.</td>
                                                    <td>20 zł / os.</td>
                                                </tr>
                                                <tr>
                                                    <td>120 min.</td>
                                                    <td>35 zł / os.</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-wrapper">
                                        <div class="pricing-header">
                                            <h4 class="h4">Bilet grupowy</h4>
                                        </div>
                                        <div class="pricing-description">
                                            <p>60 min</p>
                                        </div>
                                        <div class="pricing-table">
                                            <table class="table-bordered table-hover text-center">
                                                <tr>
                                                    <td>od 15 os.</td>
                                                    <td>20 zł / os.</td>
                                                </tr>
                                                <tr>
                                                    <td>od 20 os.</td>
                                                    <td>19 zł / os.</td>
                                                </tr>
                                                <tr>
                                                    <td>od 30 os.</td>
                                                    <td>18 zł / os.</td>
                                                </tr>
                                                <tr>
                                                    <td>od 40 os.</td>
                                                    <td>17 zł / os.</td>
                                                </tr>
                                                <tr>
                                                    <td>od 50 os.</td>
                                                    <td>15 zł / os.</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 offset-2">
                                    <div class="pricing-wrapper">
                                        <div class="pricing-header">
                                            <h4 class="h4">Karnety</h4>
                                        </div>
                                        <div class="row">
                                            <div class="col-5 offset-1">
                                                <div class="pricing-description">
                                                    <p>5 wejść ważne 30 dni</p>
                                                </div>
                                                <div class="pricing-table">
                                                    <table class="table-bordered table-hover text-center">
                                                        <tr>
                                                            <td>Normalny</td>
                                                            <td>110 zł</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Ulgowy</td>
                                                            <td>90 zł</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                            <div class="col-5">
                                                <div class="pricing-description">
                                                    <p>10 wejść ważne 60 dni</p>
                                                </div>
                                                <div class="pricing-table">
                                                    <table class="table-bordered table-hover text-center">
                                                        <tr>
                                                            <td>Normalny</td>
                                                            <td>200 zł</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Ulgowy</td>
                                                            <td>170 zł</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                            <div class="col-5 offset-1">
                                                <div class="pricing-description">
                                                    <p>15 wejść ważne 90 dni</p>
                                                </div>
                                                <div class="pricing-table">
                                                    <table class="table-bordered table-hover text-center">
                                                        <tr>
                                                            <td>Normalny</td>
                                                            <td>250 zł</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Ulgowy</td>
                                                            <td>210 zł</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                            <div class="col-5">
                                                <div class="pricing-description">
                                                    <p>No limit ważne 60 dni</p>
                                                </div>
                                                <div class="pricing-table">
                                                    <table class="table-bordered table-hover text-center">
                                                        <tr>
                                                            <td>Normalny</td>
                                                            <td>300 zł</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Ulgowy</td>
                                                            <td>280 zł</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
    </div>
</asp:Content>
