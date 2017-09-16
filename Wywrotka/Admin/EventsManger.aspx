<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="EventsManger.aspx.cs" Inherits="Wywrotka.Admin.EventsManger" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css--%>
    <link href="../css/zero.css" rel="stylesheet" />
    <link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/navigation.css" rel="stylesheet" type="text/css" />
    <link href="../css/frino/frinostyle.css" rel="stylesheet" />
    <link href="../css/main.css" rel="stylesheet" type="text/css" />

    <%-- fonts --%>
    <link href="https://fonts.googleapis.com/css?family=Ribeye+Marrow&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Zilla+Slab" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterBody" runat="server">
    <div class="row no-gutters">
        <div class="col-12">
            <div class="header-background text-center">
                <h1 class="h1">Dodaj zdjęcie</h1>
            </div>
        </div>
    </div>
    <div>
        <div style="min-height: 3em;">
        </div>
    </div>
    <div class="container container-main" style="min-height: 90vh;">
        <div class="row" id="rowFailedLogin" runat="server" visible="false">
            <div class="col-6 offset-3 text-center">
                <h2 style="color: red; font: bold;">
                    <asp:Label ID="lblInfo" runat="server" Text=""></asp:Label></h2>
            </div>
        </div>
        <div class="row">
            <div class="col-4 offset-4 text-center">
                <h2><a href="#demo" data-toggle="collapse">Dodaj galerię</a></h2>
            </div>
        </div>
        <div class="row mb-5 collapse" id="demo">

            <div class="col-2 offset-3 text-center">
                <h2>Nazwa</h2>
            </div>
            <div class="col-2 text-center">
                <asp:TextBox runat="server" ID="txtGalleryName" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-2 text-center">
                <asp:Button runat="server" ID="btnAddGallery" CssClass="btn btn-default w-100" OnClick="btnAddGallery_Click" Text="Dodaj"></asp:Button>
            </div>
        </div>


        <div class="row mt-5">
            <div class="col-4 offset-4 text-center">
                <h2>Dodaj zdjęcie</h2>
            </div>
        </div>
        <div class="row m-5" runat="server">
            <div class="col-10 offset-1">
                <div class="row">
                    <div class="col-4 offset-1">
                        <div class="row no-gutters">
                            <div class="col-12 text-center">
                                <h3>
                                    <asp:Label ID="lblSelectPicture" runat="server" Text="Wybierz zdjęcie"></asp:Label></h3>
                            </div>
                        </div>
                        <div class="row no-gutters">
                            <div class="col-12">
                                <asp:FileUpload ID="fuImage" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="row no-gutters">
                            <div class="col-12 text-center">
                                <h3>
                                    <asp:Label ID="lblEventSelect" runat="server" Text="Wybierz galerię"></asp:Label></h3>
                            </div>
                        </div>
                        <div class="row no-gutters">
                            <div class="col-12">
                                <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="row no-gutters">
                            <div class="col-12 text-center">
                                <h3>
                                    <asp:Label ID="lblColumnSelect" runat="server" Text="Kolumna"></asp:Label></h3>
                            </div>
                        </div>
                        <div class="row no-gutters">
                            <div class="col-12">
                                <asp:DropDownList CssClass="form-control" ID="ddColumn" runat="server"></asp:DropDownList>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-3 mb-3">
                    <div class="col-6 offset-3">
                        <asp:Image ID="imgUploadPreview" runat="server" CssClass="w-100" Style="min-height: 20em; border: 2px solid; border-color: rgb(129, 115, 144)" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-2 offset-5">
                        <asp:Button ID="btnApproveImageUpload" CssClass="btn btn-default w-100" runat="server" Text="Dodaj zdjęcie" OnClick="btnApproveImageUpload_Click" />
                    </div>

                </div>
            </div>
        </div>

        <div class="row m-5" runat="server">
            <div class="col-10 offset-1">
                <div class="row">
                    <div class="col-4 offset-1">
                        <div class="row no-gutters">
                            <div class="col-12 text-center">
                                <h3>
                                    <asp:Label ID="Label1" runat="server" Text="Wybierz galerię"></asp:Label></h3>
                            </div>
                        </div>
                        <div class="row no-gutters">
                            <div class="col-12">
                                <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server"></asp:DropDownList>

                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="row no-gutters">
                            <div class="col-12 text-center">
                                <h3>
                                    <asp:Label ID="Label2" runat="server" Text="Wybierz zdjęcie"></asp:Label></h3>
                            </div>
                        </div>
                        <div class="row no-gutters">
                            <div class="col-12">
                                <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row mt-3 mb-3">
                    <div class="col-6 offset-3">
                        <asp:Image ID="Image1" runat="server" CssClass="w-100" Style="min-height: 20em; border: 2px solid; border-color: rgb(129, 115, 144)" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-2 offset-5">
                        <asp:Button ID="btnDeletePictures" CssClass="btn btn-default w-100" runat="server" Text="Usuń zdjęcie" OnClick="btnDeletePictures_Click" />
                    </div>

                </div>
            </div>
        </div>

    </div>
    <script src="../js/jquery-3.2.1.js" type="text/javascript"></script>
    
    <script src="../js/bootstrap.min.js"></script>
    <script src="https://cdn.rawgit.com/michalsnik/aos/2.0.4/dist/aos.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // $('body').css('background-color', 'green');

        });
    </script>
</asp:Content>
