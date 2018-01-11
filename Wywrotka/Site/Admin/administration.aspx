<%@ Page Title="" Language="C#" MasterPageFile="~/Site/SiteMaster.Master" AutoEventWireup="true" CodeBehind="administration.aspx.cs" Inherits="Wywrotka.Admin.Pictures" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css--%>
    <link href="../../Styles/css/zero.css" rel="stylesheet" />
    <link href="../../Styles/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <%--<link href="../../Styles/css/navigation.css" rel="stylesheet" type="text/css" />--%>
    <link href="../../Styles/css/frino/frinostyle.css" rel="stylesheet" />
    <link href="../../Styles/css/main.css" rel="stylesheet" type="text/css" />

    <%-- fonts --%>
    <link href="https://fonts.googleapis.com/css?family=Ribeye+Marrow&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Zilla+Slab" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterBody" runat="server">
    <asp:ScriptManager ID="ScriptManagerAdministration" runat="server"></asp:ScriptManager>
    <div class="container-fluid" style="min-height: 90vh">
        <div class="row m-5">
            <div class="col-12 text-center">
                <h2 class="h2">Administracja</h2>
            </div>
        </div>
        <div class="row" id="loginDiv" runat="server" visible="true">
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
        <div id="adminDiv" runat="server" visible="false">
              <div class="row m-5">
            <div class="col-4 offset-2 text-center">
                <div class="card text-center">
                    <div class="card-block">
                        <a href="#" class="btn" id="actionPictures">
                            <h4 class="card-title">Zdjęcia</h4>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-4 text-center">
                <div class="card text-center">
                    <div class="card-block">
                        <a href="#" class="btn" id="actionEvents">
                            <h4 class="card-title">Wydarzenia</h4>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row m-5" id="selectAction_Events" style="display: none;">
            <div class="col-4 offset-2 text-center">
                <div class="card text-center">
                    <div class="card-header">
                        Wydarzenia
                    </div>
                    <div class="card-block">
                        <h4 class="card-title">Dodaj wydarzenie</h4>
                        <p class="card-text">Tutaj możesz dodać wydarzenie.</p>
                        <a href="#" id="selectAction_AddEvent" class="btn btn-primary">Dodaj</a>
                    </div>
                </div>
            </div>
            <div class="col-4 text-center">
                <div class="card text-center">
                    <div class="card-header">
                        Wydarzenia
                    </div>
                    <div class="card-block">
                        <h4 class="card-title">Usuń wydarzenie</h4>
                        <p class="card-text">Tutaj możesz usunąć wydarzenie.</p>
                        <a href="#" id="selectAction_DelEvent" class="btn btn-primary">Usuń</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row m-5" id="selectAction_Pcitures" style="display: none;">
            <div class="col-4 offset-2 text-center">
                <div class="card text-center">
                    <div class="card-header">
                        Zdjęcia
                    </div>
                    <div class="card-block">
                        <h4 class="card-title">Dodaj zdjęcia</h4>
                        <p class="card-text">Tutaj możesz dodać zdjęcia z dysku.</p>
                        <a href="#" id="selectAction_AddPicture" class="btn btn-primary">Dodaj</a>
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
                        <a href="#" id="selectAction_DelPicture" class="btn btn-primary">Usuń</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row m-5" id="selectAction_Galleries" style="display: none;">
            <div class="col-4 offset-2 text-center">
                <div class="card text-center">
                    <div class="card-header">
                        Galeria
                    </div>
                    <div class="card-block">
                        <h4 class="card-title">Dodaj galerię</h4>
                        <p class="card-text">Tutaj możesz dodać galerię.</p>
                        <br />
                        <a href="#" id="selectAction_AddGallery" class="btn btn-primary">Dodaj</a>
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
                        <a href="#" id="selectAction_DelGallery" class="btn btn-primary">Usuń</a>
                    </div>
                </div>
            </div>
        </div>

        <asp:UpdatePanel ID="upNotifications" runat="server" ClientIDMode="Static">
            <ContentTemplate>
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
            </ContentTemplate>
            <Triggers>
                <%-- <asp:AsyncPostBackTrigger ControlID="btnAddEvent" EventName="Click" />--%>
                <asp:AsyncPostBackTrigger ControlID="btnDelEvent" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="btnAddGall" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="btnDelGall" EventName="Click" />
                <%--<asp:AsyncPostBackTrigger ControlID="btnAddImg" EventName="Click" />--%>
                <asp:AsyncPostBackTrigger ControlID="btnDelPic" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="upAddPicture" runat="server" ClientIDMode="Static">
            <ContentTemplate>
                <div class="row">
                    <div class="col-6 offset-3">
                        <div class="card">
                            <div class="card-block">
                                <h4 class="card-title">Dodaj zdjęcie</h4>
                               <%-- <div class="row">
                                    <div class="col-12">
                                        <label class="custom-control custom-radio">
                                            <input id="rbDisc" name="radio" runat="server" type="radio" class="custom-control-input">
                                            <span class="custom-control-indicator"></span>
                                            <span class="custom-control-description">Z dysku</span>
                                        </label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label class="custom-control custom-radio"><input id="rbLink" runat="server" name="radio" type="radio" class="custom-control-input">
                                            <span class="custom-control-indicator"></span>
                                            <span class="custom-control-description">Z linku</span>
                                        </label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </div>
                                </div>--%>
                                <div class="row">
          <%--                          <div class="col-12">
                                        <asp:TextBox ID="txtImgLink" runat="server" CssClass="form-control w-100"></asp:TextBox>
                                    </div>--%>
                                    <div class="col-12">
                                        <asp:FileUpload ID="fuImgDisc" runat="server" CssClass="form-control w-100" />
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-4">
                                        Dodaj do galerii: 
                                    </div>
                                    <div class="col-8">
                                        <asp:DropDownList ID="ddlImgToGallery" runat="server" CssClass="form-control w-100"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-4">
                                        Dodaj do kolumny: 
                                    </div>
                                    <div class="col-8">
                                        <asp:DropDownList ID="ddlImgToColumn" runat="server" CssClass="form-control w-100">
                                            <asp:ListItem Selected="True">1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-4">
                                        Dodaj tekst zdjęcia: 
                                    </div>
                                    <div class="col-8">
                                        <asp:TextBox ID="txtImgText" runat="server" CssClass="form-control w-100"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-4 offset-4">
                                        <asp:Button ID="btnAddImg" CssClass="btn btn-primary w-100" runat="server" Text="Dodaj" OnClick="btnAddImg_Click" ClientIDMode="Static" />
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </ContentTemplate>
            <Triggers>
                <%--<asp:AsyncPostBackTrigger ControlID="btnAddImg" EventName="Click" />--%>
                <asp:AsyncPostBackTrigger ControlID="btnAddGall" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="btnDelGall" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="btnDelPic" EventName="Click" />
<%--                <asp:AsyncPostBackTrigger ControlID="rbDisc" EventName="ServerChange" />
                <asp:AsyncPostBackTrigger ControlID="rbLink" EventName="ServerChange" />--%>
            </Triggers>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="upDelPicture" runat="server" ClientIDMode="Static">
            <ContentTemplate>
                <div class="row">
                    <div class="col-6 offset-3">
                        <div class="card">
                            <div class="card-block">
                                <h4 class="card-title">Usuń zdjęcie</h4>
                                <div class="row mt-3">
                                    <div class="col-4">
                                        Wybierz galerię: 
                                    </div>
                                    <div class="col-8">
                                        <asp:DropDownList ID="ddlDelPic_SelectGallery" runat="server" CssClass="form-control w-100" AutoPostBack="True" OnSelectedIndexChanged="ddlDelPic_SelectGallery_SelectedIndexChanged"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-4">
                                        Wybierz zdjęcie: 
                                    </div>
                                    <div class="col-8">
                                        <asp:DropDownList ID="ddlDelPic_SelectPicture" runat="server" CssClass="form-control w-100"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-4 offset-4">
                                        <asp:Button ID="btnDelPic" CssClass="btn btn-primary w-100" runat="server" Text="Usuń" OnClick="btnDelPic_Click" ClientIDMode="Static" />
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnDelPic" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="upDelGallery" runat="server" ClientIDMode="Static">
            <ContentTemplate>
                <div class="row">
                    <div class="col-6 offset-3">
                        <div class="card">
                            <div class="card-block">
                                <h4 class="card-title">Usuń galerię</h4>
                                <div class="row mt-3">
                                    <div class="col-4">
                                        Wybierz galerię: 
                                    </div>
                                    <div class="col-8">
                                        <asp:DropDownList ID="ddlDelGall_SelectGallery" runat="server" CssClass="form-control w-100" AutoPostBack="True"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-4 offset-4">
                                        <asp:Button ID="btnDelGall" CssClass="btn btn-primary w-100" runat="server" Text="Usuń" OnClick="btnDelGall_Click" ClientIDMode="Static" />
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnDelGall" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="btnDelPic" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="upAddGallery" runat="server" ClientIDMode="Static">
            <ContentTemplate>
                <div class="row">
                    <div class="col-6 offset-3">
                        <div class="card">
                            <div class="card-block">
                                <h4 class="card-title">Dodaj galerię</h4>
                                <div class="row mt-3">
                                    <div class="col-4">
                                        Dodaj galerię: 
                                    </div>
                                    <div class="col-8">
                                        <asp:TextBox ID="txtAddGall" runat="server" CssClass="form-control w-100"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-4 offset-4">
                                        <asp:Button ID="btnAddGall" CssClass="btn btn-primary w-100" runat="server" Text="Dodaj" OnClick="btnAddGall_Click" ClientIDMode="Static" />
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnAddGall" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="upDelEvent" runat="server" ClientIDMode="Static">
            <ContentTemplate>
                <div class="row">
                    <div class="col-6 offset-3">
                        <div class="card">
                            <div class="card-block">
                                <h4 class="card-title">Usuń wydarzenie</h4>
                                <div class="row mt-3">
                                    <div class="col-4">
                                        Wybierz wydarzenie: 
                                    </div>
                                    <div class="col-8">
                                        <asp:DropDownList ID="ddlDelEvent_SelectEvent" runat="server" CssClass="form-control w-100"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-4 offset-4">
                                        <asp:Button ID="btnDelEvent" CssClass="btn btn-primary w-100" runat="server" Text="Usuń" OnClick="btnDelEvent_Click" ClientIDMode="Static" />
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnDelEvent" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="upAddEvent" runat="server" ClientIDMode="Static">
            <ContentTemplate>
                <div class="row">
                    <div class="col-6 offset-3">
                        <div class="card">
                            <div class="card-block">
                                <h4 class="card-title">Dodaj wydarzenie</h4>
                                <div class="row mt-3">
                                    <div class="col-4">
                                        Nazwa wydarzenia: 
                                    </div>
                                    <div class="col-8">
                                        <asp:TextBox ID="txtAddEvent_EventName" runat="server" CssClass="form-control w-100"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-4">
                                        Opis wydarzenia: 
                                    </div>
                                    <div class="col-8">
                                        <asp:TextBox ID="txtAddEvent_EventDescription" runat="server" CssClass="form-control w-100"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-4">
                                        Początek wydarzenia: 
                                    </div>
                                    <div class="col-8">
                                        <div class="row">
                                            <div class="col-6">
                                                <asp:Button ID="btnAddEvent_ShowCalendarStartTime" CssClass="btn btn-primary" runat="server" Text="Pokaż kalendarz" OnClick="btnAddEvent_ShowCalendarStartTime_Click" />
                                            </div>
                                            <div class="col-6">
                                                <asp:TextBox ID="txtAddEvent_StartTime" CssClass="form-control w-100" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row m-3">
                                            <div class="col-8">
                                                <asp:Calendar ID="calAddEvent_StartTime" runat="server" Visible="False" OnSelectionChanged="calAddEvent_StartTime_SelectionChanged" BackColor="White" BorderColor="Black" BorderWidth="0px" Font-Names="Verdana" Font-Size="7pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                                                    <DayHeaderStyle Font-Bold="True" Font-Size="7pt" />
                                                    <NextPrevStyle Font-Bold="True" Font-Size="7pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                                    <OtherMonthDayStyle ForeColor="#999999" />
                                                    <SelectedDayStyle BackColor="Yellow" ForeColor="White" />
                                                    <TitleStyle BackColor="White" Font-Bold="True" Font-Size="8pt" ForeColor="#333399" />
                                                    <TodayDayStyle BackColor="#FFFF00" />
                                                </asp:Calendar>

                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-4">
                                        Koniec wydarzenia: 
                                    </div>
                                    <div class="col-8">
                                        <div class="row">
                                            <div class="col-6">
                                                <asp:Button ID="btnAddEvent_ShowCalendarEndTie" CssClass="btn btn-primary" runat="server" Text="Pokaż kalendarz" OnClick="btnAddEvent_ShowCalendarEndTie_Click" />
                                            </div>
                                            <div class="col-6">
                                                <asp:TextBox ID="txtAddEvent_EndTime" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row m-3">
                                            <div class="col-8">
                                                <asp:Calendar ID="calAddEvent_EndTime" runat="server" Visible="False" OnSelectionChanged="calAddEvent_EndTime_SelectionChanged" BackColor="White" BorderColor="Black" BorderWidth="0px" Font-Names="Verdana" Font-Size="7pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                                                    <DayHeaderStyle Font-Bold="True" Font-Size="7pt" />
                                                    <NextPrevStyle Font-Bold="True" Font-Size="7pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                                    <OtherMonthDayStyle ForeColor="#999999" />
                                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                                    <TitleStyle BackColor="White" Font-Bold="True" Font-Size="8pt" ForeColor="#333399" />
                                                    <TodayDayStyle BackColor="#FFFF00" />
                                                </asp:Calendar>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-4">
                                        Zdjęcie wydarzenia: 
                                    </div>
                                    <div class="col-8">
                                        <asp:FileUpload ID="fuAddEvent_Image" runat="server" CssClass="form-control w-100" />
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-4 offset-4">
                                        <asp:Button ID="btnAddEvent" CssClass="btn btn-primary w-100" runat="server" Text="Dodaj" OnClick="btnAddEvent_Click" />
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
            <Triggers>
                <%--             <asp:AsyncPostBackTrigger ControlID="btnAddEvent" EventName="Click" />--%>
                <asp:AsyncPostBackTrigger ControlID="btnAddEvent_ShowCalendarEndTie" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="btnAddEvent_ShowCalendarStartTime" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
        </div>
      





    </div>
     <%--scripts--%>
        <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
   
    <script type="text/javascript">
        $(document).ready(function () {

            //ukrycie wszystkich updatePaneli z akcjami przy ladowaniu strony
            $('#upAddEvent').hide();
            $('#upDelEvent').hide();

            $('#upAddGallery').hide();
            $('#upDelGallery').hide();

            $('#upAddPicture').hide();
            $('#upDelPicture').hide();

            //ukrycie wszystkiego poza wyborem akcji zdjec
            $('#actionPictures').on('click', function () {
                $('#selectAction_Events').hide();

                $('#upNotifications').hide();

                $('#upAddEvent').hide();
                $('#upDelEvent').hide();

                $('#upAddGallery').hide();
                $('#upDelGallery').hide();

                $('#upAddPicture').hide();
                $('#upDelPicture').hide();

                $('#selectAction_Pcitures').toggle();
                $('#selectAction_Galleries').toggle();

            });

            //ukrycie wszystkiego poza wyborem akcji zdarzen
            $('#actionEvents').on('click', function () {
                $('#selectAction_Pcitures').hide();
                $('#selectAction_Galleries').hide();

                $('#upNotifications').hide();

                $('#upAddEvent').hide();
                $('#upDelEvent').hide();

                $('#upAddGallery').hide();
                $('#upDelGallery').hide();

                $('#upAddPicture').hide();
                $('#upDelPicture').hide();

                $('#selectAction_Events').toggle();

            });

            //wybranie konkretnej akcji dodaj wydarzenie
            $('#selectAction_AddEvent').on('click', function () {
                $('#selectAction_Events').hide();
                $('#selectAction_Pcitures').hide();
                $('#selectAction_Galleries').hide();

                $('#upAddEvent').toggle();
            });

            //wybranie konkretnej akcji usun wydarzenie
            $('#selectAction_DelEvent').on('click', function () {
                $('#selectAction_Events').hide();
                $('#selectAction_Pcitures').hide();
                $('#selectAction_Galleries').hide();

                $('#upDelEvent').toggle();
            });

            //wybranie konkretnej akcji dodaj zdjecie
            $('#selectAction_AddPicture').on('click', function () {
                $('#selectAction_Events').hide();
                $('#selectAction_Pcitures').hide();
                $('#selectAction_Galleries').hide();

                $('#upAddPicture').toggle();
            });

            //wybranie konkretnej akcji usun zdjecie
            $('#selectAction_DelPicture').on('click', function () {
                $('#selectAction_Events').hide();
                $('#selectAction_Pcitures').hide();
                $('#selectAction_Galleries').hide();

                $('#upDelPicture').toggle();
            });

            //wybranie konkretnej akcji dodaj galerie
            $('#selectAction_AddGallery').on('click', function () {
                $('#selectAction_Events').hide();
                $('#selectAction_Pcitures').hide();
                $('#selectAction_Galleries').hide();

                $('#upAddGallery').toggle();
            });

            //wybranie konkretnej akcji usun galerie
            $('#selectAction_DelGallery').on('click', function () {
                $('#selectAction_Events').hide();
                $('#selectAction_Pcitures').hide();
                $('#selectAction_Galleries').hide();

                $('#upDelGallery').toggle();
            });

            //wykonanie akcji dodaj wydarzenie
            $('#btnAddEvent').on('click', function () {
                $('#upNotifications').show();
            });

            //wykonanie akcji usun wydarzenie
            $('#btnDelEvent').on('click', function () {
                $('#upNotifications').show();
            });
            //wykonanie akcji dodaj zdjecie
            $('#btnAddImg').on('click', function () {
                $('#upNotifications').show();
            });
            //wykonanie akcji usun zdjecie
            $('#btnDelPic').on('click', function () {
                $('#upNotifications').show();
            });
            //wykonanie akcji dodaj galerie
            $('#btnAddGall').on('click', function () {
                $('#upNotifications').show();
            });
            //wykonanie akcji usun galerie
            $('#btnDelGall').on('click', function () {
                $('#upNotifications').show();
            });
        });


    </script>

</asp:Content>
