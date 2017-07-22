<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="Wywrotka.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterBody" runat="server">
    <div class="container container-main">
          <%--gallery--%>
            <div class="row container-split">

                <div class="col-md-12">
                    <div class="row first" style="height: 1em;">
                        <br />
                    </div>
                    <h3 class="h3 text-center">GALERIA</h3>
                    <div class="row first" style="height: 1em;">
                        <br />
                    </div>
                    <div class="row">
                        <div class="col-8 offset-2">
                            <div class="row">
                                <div class="col-3">
                                    <div class="gallery-container">
                                        <img src="img/daisy.jpg" class="image img-fluid" />
                                        <div class="overlay">
                                            <div class="text">Opis zdjęcia</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="gallery-container">
                                        <img src="img/daisy.jpg" class="image img-fluid" />
                                        <div class="overlay">
                                            <div class="text">Opis zdjęcia</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="gallery-container">
                                        <img src="img/daisy.jpg" class="image img-fluid" />
                                        <div class="overlay">
                                            <div class="text">Opis zdjęcia</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="gallery-container">
                                        <img src="img/daisy.jpg" class="image img-fluid" />
                                        <div class="overlay">
                                            <div class="text">Opis zdjęcia</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row imgRow" style="display: none;">
                                <div class="col-3">
                                    <div class="gallery-container">
                                        <img src="img/daisy.jpg" class="image img-fluid" />
                                        <div class="overlay">
                                            <div class="text">Opis zdjęcia</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="gallery-container">
                                        <img src="img/daisy.jpg" class="image img-fluid" />
                                        <div class="overlay">
                                            <div class="text">Opis zdjęcia</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="gallery-container">
                                        <img src="img/daisy.jpg" class="image img-fluid" />
                                        <div class="overlay">
                                            <div class="text">Opis zdjęcia</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="gallery-container">
                                        <img src="img/daisy.jpg" class="image img-fluid" />
                                        <div class="overlay">
                                            <div class="text">Opis zdjęcia</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row imgRow" style="display: none;">
                                <div class="col-3">
                                    <div class="gallery-container">
                                        <img src="img/daisy.jpg" class="image img-fluid" />
                                        <div class="overlay">
                                            <div class="text">Opis zdjęcia</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="gallery-container">
                                        <img src="img/daisy.jpg" class="image img-fluid" />
                                        <div class="overlay">
                                            <div class="text">Opis zdjęcia</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="gallery-container">
                                        <img src="img/daisy.jpg" class="image img-fluid" />
                                        <div class="overlay">
                                            <div class="text">Opis zdjęcia</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="gallery-container">
                                        <img src="img/daisy.jpg" class="image img-fluid" />
                                        <div class="overlay">
                                            <div class="text">Opis zdjęcia</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-2 offset-5">
                                    <a href="javascript:void(0)" id="ShowAllImg">Pokaż wszystkie</a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
    </div>
</asp:Content>
