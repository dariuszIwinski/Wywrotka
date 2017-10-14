<%@ Page Title="" Language="C#" MasterPageFile="~/Site/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Pictures.aspx.cs" Inherits="Wywrotka.Admin.Pictures" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css--%>
    <link href="../../Styles/css/zero.css" rel="stylesheet" />
    <link href="../../Styles/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../../Styles/css/navigation.css" rel="stylesheet" type="text/css" />
    <link href="../../Styles/css/frino/frinostyle.css" rel="stylesheet" />
    <link href="../../Styles/css/main.css" rel="stylesheet" type="text/css" />

    <%-- fonts --%>
    <link href="https://fonts.googleapis.com/css?family=Ribeye+Marrow&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Zilla+Slab" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterBody" runat="server">
    <div class="container-fluid" style="min-height: 90vh">
        <div class="row mt-2 mb-5">
            <div class="col-12 text-center">
                <h2 class="h2">Administracja</h2>
            </div>
        </div>
        <div class="row m-5">
            <div class="col-4 offset-2 text-center">
                <div class="card text-center">
                    <div class="card-block">
                        <a href="#" class="btn">
                            <h4 class="card-title">Zdjęcia</h4>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-4 text-center">
                <div class="card text-center">
                    <div class="card-block">
                        <a href="#" class="btn">
                            <h4 class="card-title">Wydarzenia</h4>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row m-5">
            <div class="col-4 offset-2 text-center">
                <div class="card text-center">
                    <div class="card-header">
                        Wydarzenia
                    </div>
                    <div class="card-block">
                        <h4 class="card-title">Dodaj wydarzenie</h4>
                        <p class="card-text">Tutaj możesz dodać wydarzenie.</p>
                        <a href="#" class="btn btn-primary">Dodaj</a>
                    </div>
                </div>
            </div>
            <div class="col-4 text-center">
                <div class="card text-center">
                    <div class="card-header">
                        Wydarzenia
                    </div>
                    <div class="card-block">
                        <h4 class="card-title">Usuń wydarzenie.</h4>
                        <p class="card-text">Tutaj możesz usunąć wydarzenie.</p>
                        <a href="#" class="btn btn-primary">Usuń</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row m-5">
            <div class="col-4 offset-2 text-center">
                <div class="card text-center">
                    <div class="card-header">
                        Zdjęcia
                    </div>
                    <div class="card-block">
                        <h4 class="card-title">Dodaj zdjęcia</h4>
                        <p class="card-text">Tutaj możesz dodać zdjęcia z dysku.</p>
                        <a href="#" class="btn btn-primary">Dodaj</a>
                    </div>
                </div>
            </div>
            <div class="col-4 text-center">
                <div class="card text-center">
                    <div class="card-header">
                        Zdjęcia
                    </div>
                    <div class="card-block">
                        <h4 class="card-title">Usuń zdjęcia</h4>
                        <p class="card-text">Tutaj możesz usunąć zdjęcia z bazy danych</p>
                        <a href="#" class="btn btn-primary">Usuń</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row m-5">
            <div class="col-4 offset-2 text-center">
                <div class="card text-center">
                    <div class="card-header">
                        Galeria
                    </div>
                    <div class="card-block">
                        <h4 class="card-title">Dodaj galerię</h4>
                        <p class="card-text">Tutaj możesz dodać galerię.</p>
                        <br />
                        <a href="#" class="btn btn-primary">Dodaj</a>
                    </div>
                </div>
            </div>
            <div class="col-4 text-center">
                <div class="card text-center">
                    <div class="card-header">
                        Galeria
                    </div>
                    <div class="card-block">
                        <h4 class="card-title">Usuń galerię</h4>
                        <p class="card-text">Tutaj możesz usunąć galerię i wszystkie zdjęcia, które zawiera z bazy danych.</p>
                        <a href="#" class="btn btn-primary">Usuń</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 text-center">
                <div id="notificationBox" class="card card-inverse" runat="server">
                    <div class="card-block">
                        <div class="card-blockquote">
                            <asp:Label ID="lblSuccess" runat="server" Text="" Visible="false"></asp:Label>
                            <asp:Label ID="lblDanger" runat="server" Text="" Visible="false"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-block">
                        <h4 class="card-title">Dodaj zdjęcie</h4>
                        <div class="row">
                            <div class="col-12">
                                <label class="custom-control custom-radio">
                                    <input id="rbDisc" name="radio" runat="server" type="radio" class="custom-control-input">
                                    <span class="custom-control-indicator"></span>
                                    <span class="custom-control-description">Z dysku</span>
                                </label>
                                <label class="custom-control custom-radio">
                                    <input id="rbLink" runat="server" name="radio" type="radio" class="custom-control-input">
                                    <span class="custom-control-indicator"></span>
                                    <span class="custom-control-description">Z linku</span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <asp:TextBox ID="txtImgLink" runat="server" CssClass="form-control w-100"></asp:TextBox>
                            </div>
                            <div class="col-6">
                                <asp:FileUpload ID="fuImgDisc" runat="server" CssClass="form-control w-100" />
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-2">
                                Dodaj do galerii: 
                            </div>
                            <div class="col-3">
                                <asp:DropDownList ID="ddlImgToGallery" runat="server" CssClass="form-control w-100"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-2">
                                Dodaj do kolumny: 
                            </div>
                            <div class="col-3">
                                <asp:DropDownList ID="ddlImgToColumn" runat="server" CssClass="form-control w-100">
                                    <asp:ListItem Selected="True">1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-2">
                                Dodaj tekst zdjęcia: 
                            </div>
                            <div class="col-3">
                                <asp:TextBox ID="txtImgText" runat="server" CssClass="form-control w-100"></asp:TextBox>

                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-2">
                                <asp:Button ID="btnAddImg" CssClass="btn btn-primary" runat="server" Text="Dodaj" OnClick="btnAddImg_Click" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-block">
                        <h4 class="card-title">Usuń zdjęcie</h4>
                        <div class="row mt-3">
                            <div class="col-2">
                                Wybierz galerię: 
                            </div>
                            <div class="col-3">
                                <asp:DropDownList ID="ddlDelPic_SelectGallery" runat="server" CssClass="form-control w-100" AutoPostBack="True" OnSelectedIndexChanged="ddlDelPic_SelectGallery_SelectedIndexChanged"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-2">
                                Wybierz zdjęcie: 
                            </div>
                            <div class="col-3">
                                <asp:DropDownList ID="ddlDelPic_SelectPicture" runat="server" CssClass="form-control w-100"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-2">
                                <asp:Button ID="btnDelPic" CssClass="btn btn-primary" runat="server" Text="Usuń" OnClick="btnDelPic_Click" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-block">
                        <h4 class="card-title">Usuń galerię</h4>
                        <div class="row mt-3">
                            <div class="col-2">
                                Wybierz galerię: 
                            </div>
                            <div class="col-3">
                                <asp:DropDownList ID="ddlDelGall_SelectGallery" runat="server" CssClass="form-control w-100" AutoPostBack="True"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-2">
                                <asp:Button ID="btnDelGall" CssClass="btn btn-primary" runat="server" Text="Usuń" OnClick="btnDelGall_Click" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-block">
                        <h4 class="card-title">Dodaj galerię</h4>
                        <div class="row mt-3">
                            <div class="col-2">
                                Dodaj galerię: 
                            </div>
                            <div class="col-3">
                                <asp:TextBox ID="txtAddGall" runat="server" CssClass="form-control w-100"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-2">
                                <asp:Button ID="btnAddGall" CssClass="btn btn-primary" runat="server" Text="Dodaj" OnClick="btnAddGall_Click" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-block">
                        <h4 class="card-title">Usuń wydarzenie</h4>
                        <div class="row mt-3">
                            <div class="col-2">
                                Wybierz wydarzenie: 
                            </div>
                            <div class="col-3">
                                <asp:DropDownList ID="ddlDelEvent_SelectEvent" runat="server" CssClass="form-control w-100"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-2">
                                <asp:Button ID="btnDelEvent" CssClass="btn btn-primary" runat="server" Text="Usuń" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-block">
                        <h4 class="card-title">Dodaj wydarzenie</h4>
                        <div class="row mt-3">
                            <div class="col-2">
                                Nazwa wydarzenia: 
                            </div>
                            <div class="col-3">
                                <asp:TextBox ID="txtAddEvent_EventName" runat="server" CssClass="form-control w-100"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-2">
                                Opis wydarzenia: 
                            </div>
                            <div class="col-3">
                                <asp:TextBox ID="txtAddEvent_EventDescription" runat="server" CssClass="form-control w-100"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-2">
                                Początek wydarzenia: 
                            </div>
                            <div class="col-3">
                                 <div class="row">
                                    <div class="col-12">
                                        <asp:Button ID="btnAddEvent_ShowCalendarStartTime" CssClass="btn btn-primary" runat="server" Text="Pokaż kalendarz" OnClick="btnAddEvent_ShowCalendarStartTime_Click" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <asp:Calendar ID="calAddEvent_StartTime" CssClass="form-control" runat="server" Visible="false"></asp:Calendar>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-2">
                                Koniec wydarzenia: 
                            </div>
                            <div class="col-3">
                                <div class="row">
                                    <div class="col-12">
                                        <asp:Button ID="btnAddEvent_ShowCalendarEndTie" CssClass="btn btn-primary" runat="server" Text="Pokaż kalendarz" OnClick="btnAddEvent_ShowCalendarEndTie_Click" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <asp:Calendar ID="calAddEvent_EndTime" CssClass="form-control" runat="server" Visible="false"></asp:Calendar>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-2">
                                Zdjęcie wydarzenia: 
                            </div>
                            <div class="col-3">
                                <asp:FileUpload ID="fuAddEvent_Image" runat="server" CssClass="form-control w-100" />
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-2">
                                <asp:Button ID="btnAddEvent" CssClass="btn btn-primary" runat="server" Text="Dodaj" OnClick="btnAddGall_Click" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../../Scripts/jquery-3.2.1.js" type="text/javascript"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#MasterBody_txtImgLink').parent().hide();
            $('#MasterBody_fuImgDisc').parent().hide();

            $('#MasterBody_rbDisc, #MasterBody_rbLink').change(function () {
                if ($('#MasterBody_rbDisc').is(':checked')) {
                    $('#MasterBody_fuImgDisc').parent().show();

                }
                else {
                    $('#MasterBody_fuImgDisc').parent().hide();
                }

                if ($('#MasterBody_rbLink').is(':checked')) {

                    $('#MasterBody_txtImgLink').parent().show();
                }
                else {
                    $('#MasterBody_txtImgLink').parent().hide();

                }
            });
        });
    </script>

</asp:Content>
