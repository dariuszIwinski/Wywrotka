<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Wywrotka.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterBody" runat="server">
    <div class="container container-main">
              <%--contact--%>
            <div class="row container-split">
                <div class="col-12 last text-justify">
                    <div class="row first" style="height: 1em;">
                        <br />
                    </div>
                    <h3 class="h3 text-center">KONTAKT</h3>
                    <div class="row first" style="height: 1em;">
                        <br />
                    </div>
                    <div class="row text-center" style="margin-top: 1em;">
                        <div class="col-md-3 offset-3">
                            <div class="fa fa-phone-square"></div>
                            <a href="tel:#">+48 777 777 777</a>
                        </div>
                        <div class="col-md-3">
                            <div class="fa fa-envelope"></div>
                            <a href="#">wrotka@wywrotka.pl</a>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 1em;">
                        <div class="form-horizontal col-md-6 offset-3">
                            <div class="form-group">
                                <input type="text" class="form-control" id="txtContactName" placeholder="Podaj imię i nazwisko" />
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" id="txtContactEmail" placeholder="Podaj swój adres email" />
                            </div>
                            <div class="form-group ">
                                <textarea class="form-control" id="txtContactMessage" placeholder="Wpisz treść wiadomości"></textarea>
                            </div>
                            <div class="text-center">
                                <input type="submit" class="btn btn-default" value="Wyślij" />
                            </div>
                        </div>
                    </div>



                </div>
            </div>

        </div>
</asp:Content>
