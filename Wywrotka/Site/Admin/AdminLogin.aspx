<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Wywrotka.Administration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css--%>
    <link href="css/zero.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/navigation.css" rel="stylesheet" type="text/css" />
    <link href="css/frino/frinostyle.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />

    <%-- fonts --%>
    <link href="https://fonts.googleapis.com/css?family=Ribeye+Marrow&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Zilla+Slab" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterBody" runat="server">
    <div>
        <div style="min-height: 3em;">
        </div>
    </div>
    <div class="container container-main" style="min-height: 90vh;">
        <div class="row" id="rowFailedLogin" runat="server" visible="false">
            <div class="col-6 offset-3 text-center">
                <h2 style="color: red; font: bold;">
                    <asp:Label ID="lblWrongPassword" runat="server" Text="Niepoprawny login lub hasło"></asp:Label></h2>
            </div>
        </div>
        <div class="row" id="rowLogin" runat="server" visible="true">
            <div class="col-4 offset-4">
                <div class="row">
                    <div class="col-3">
                        <asp:Label ID="lblLoginTxt" runat="server" Text="Login"></asp:Label>
                    </div>
                    <div class="col-7">
                        <asp:TextBox ID="txtLogin" CssClass="w-100" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-3">
                        <asp:Label ID="lblPasswordTxt" runat="server" Text="Hasło"></asp:Label>

                    </div>
                    <div class="col-7">
                        <asp:TextBox ID="txtPassword" CssClass="w-100" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-3">
                    </div>
                    <div class="col-7">
                        <asp:Button ID="btnLoginIn" CssClass="btn btn-default w-100" runat="server" Text="Zaloguj" OnClick="btnLoginIn_Click" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row m-5" id="rowAdminJobs" runat="server" visible="false">
            <div class="offset-4 col-4 mt-1">
                <asp:Button ID="btnAddPictures" CssClass="btn btn-default w-100" runat="server" Text="Dodaj zdjęcie" OnClick="btnAddPictures_Click" />
            </div>
            <div class="offset-4 col-4 mt-1">
                <asp:Button ID="btnDeletePictures" CssClass="btn btn-default w-100" runat="server" Text="Usuń zdjęcie" OnClick="btnDeletePictures_Click" />

            </div>
            <div class="offset-4 col-4 mt-1">
                <asp:Button ID="btnAddEvent" CssClass="btn btn-default w-100" runat="server" Text="Dodaj wydarzenie" OnClick="btnAddEvent_Click" />

            </div>
            <div class="offset-4 col-4 mt-1">
                <asp:Button ID="btnDeleteEvent" CssClass="btn btn-default w-100" runat="server" Text="Usuń wydarzenie" OnClick="btnDeleteEvent_Click" />

            </div>
        </div>

    </div>
</asp:Content>
