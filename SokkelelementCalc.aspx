<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SokkelelementCalc.aspx.cs" Inherits="ThermoCalc2012.SokkelelementCalc" %>

<!doctype html>
<html>
<head>
    <title>Beregningsprogram Jackon sokkelelement og isolering</title>
    <!-- 1140px Grid styles for IE -->
    <!--[if lte IE 9]><link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" /><![endif]-->
    <!-- The 1140px Grid - http://cssgrid.net/ -->
    <link rel="stylesheet" href="css/1140.css" type="text/css" media="screen" />
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
</head>
<body>
    <form id="Form1" method="post" runat="server">
    <div class="container">
        <div class="row">
            <div class="twelvecol last">
                <h1 class="headerText">
                    Beregningsprogram Jackon sokkelelement og isolering</h1>
            </div>
          <%--  <div class="twocol last">
                <img src="image/Logo_sv.jpg" />
            </div>--%>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="twelvecol last sectionHeader">
                <h3>
                    Projektdata</h3>
            </div>
        </div>
        <div class="row">
            <div class="sixcol projectinfo">
                <asp:Label AssociatedControlID="ddl_type_Siroc" Text="Vælg type Jackon sokkelelement" runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:DropDownList ID="ddl_type_Siroc" onfocus="Javascript:ImgChoice.src='image/SirocDK/Oppstart.gif';"
                        runat="server">
                        <asp:ListItem Value="Let">Let</asp:ListItem>
                        <asp:ListItem Value="Tung">Tung</asp:ListItem>
                    </asp:DropDownList>
                </span>
                <br />
                <asp:Label AssociatedControlID="txtOmkrets" Text="Omkreds" runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox ID="txtOmkrets" type="number" step="any" min="0" onfocus="Javascript:ImgChoice.src='image/SirocDK/Omkrets.gif';"
                        runat="server"></asp:TextBox>
                    meter </span>
                <asp:RequiredFieldValidator ID="ReqFldValOmkrets" runat="server" ControlToValidate="txtOmkrets"
                    ErrorMessage="Må fyldes ut !"></asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValOmkrets"
                        runat="server" ControlToValidate="txtOmkrets" ErrorMessage="Ugyldig værdi !"
                        MaximumValue="999999999" MinimumValue="0"></asp:RangeValidator>
                <br />
                <asp:Label AssociatedControlID="txtUtvHjorner" Text="Udvendige hjørner" runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox ID="txtUtvHjorner" type="number"  min="0" onfocus="Javascript:ImgChoice.src='image/SirocDK/UtvHjorner.gif';"
                        runat="server"></asp:TextBox>
                    stk. </span>
                <asp:RequiredFieldValidator ID="ReqFldValUtvHjorner" runat="server" ControlToValidate="txtUtvHjorner"
                    ErrorMessage="Må fyldes ut !"></asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValUtvHjorner"
                        runat="server" ControlToValidate="txtUtvHjorner" ErrorMessage="Ugyldig værdi !"
                        MaximumValue="999999999" MinimumValue="0"></asp:RangeValidator>
                <br />
                <asp:Label AssociatedControlID="txtInnvHjorner" Text="Indvendige hjørner" runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox ID="txtInnvHjorner" type="number"  min="0" onfocus="Javascript:ImgChoice.src='image/SirocDK/InnvHjorner.gif';"
                        runat="server"></asp:TextBox>
                    stk. </span>
                <asp:RequiredFieldValidator ID="ReqFldValInnvHjorner" runat="server" ControlToValidate="txtInnvHjorner"
                    ErrorMessage="Må fyldes ut !"></asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValInnvHjorner"
                        runat="server" ControlToValidate="txtInnvHjorner" ErrorMessage="Ugyldig værdi !"
                        MaximumValue="999999999" MinimumValue="0"></asp:RangeValidator>
                <br />
                <asp:Label AssociatedControlID="txtAreal" Text="Areal, brutto" runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox ID="txtAreal"  type="number"  step="any"  min="0" onfocus="Javascript:ImgChoice.src='image/SirocDK/Areal_v2.jpg';"
                        runat="server" />
                </span>
                <asp:RequiredFieldValidator ID="ReqFldValAreal" runat="server" ControlToValidate="txtAreal"
                    ErrorMessage="Må fyldes ut !"></asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValAreal"
                        runat="server" ControlToValidate="txtAreal" ErrorMessage="Ugyldig værdi !" MaximumValue="999999999"
                        MinimumValue="0"></asp:RangeValidator>
                <br />
            </div>
            <div class="sixcol last">
                <asp:Image ID="ImgChoice" runat="server" ImageUrl="image/SirocDK/oppstart.gif"  CssClass="helperImage"></asp:Image>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="twelvecol last sectionHeader">
                <h3>
                    Kundeinformation</h3>
            </div>
        </div>
        <div class="row">
            <div class="sixcol contactinfo last">
                <asp:Label AssociatedControlID="txtNavn" Text="Navn/Firma:" runat="server"></asp:Label>
                <asp:TextBox ID="txtNavn" runat="server" onfocus="Javascript:ImgChoice.src='image/SirocDK/Oppstart.gif';"></asp:TextBox>
                <br />
                <asp:Label AssociatedControlID="txtEpost" Text="E-mail:" runat="server"></asp:Label>
                <asp:TextBox ID="txtEpost" runat="server" onfocus="Javascript:ImgChoice.src='image/SirocDK/Oppstart.gif';"></asp:TextBox>
                <br />
                <asp:Label AssociatedControlID="txtAdresse" Text="Adresse:" runat="server"></asp:Label>
                <asp:TextBox ID="txtAdresse" runat="server" onfocus="Javascript:ImgChoice.src='image/SirocDK/Oppstart.gif';"></asp:TextBox>
                <br />
                <asp:Label AssociatedControlID="txtPoststed" Text=" Postnr./Sted:" runat="server"></asp:Label>
                <asp:TextBox ID="txtPoststed" runat="server" onfocus="Javascript:ImgChoice.src='image/SirocDK/Oppstart.gif';"></asp:TextBox>
                <br />
                <asp:Label AssociatedControlID="txtTelefonMobil" Text="Telefon/mobil:" runat="server"></asp:Label>
                <asp:TextBox ID="txtTelefonMobil" onfocus="Javascript:ImgChoice.src='image/SirocDK/Oppstart.gif';"
                    runat="server"></asp:TextBox>
                <br />
                <asp:Label AssociatedControlID="txtTelefaks" Text="Telefax:" runat="server"></asp:Label>
                <asp:TextBox ID="txtTelefaks" onfocus="Javascript:ImgChoice.src='image/SirocDK/Oppstart.gif';"
                    runat="server"></asp:TextBox>
                <br />
                <asp:Label AssociatedControlID="txtAdresseTomt" Text="Adresse, byggeplads/grund:"
                    runat="server"></asp:Label>
                <asp:TextBox ID="txtAdresseTomt" onfocus="Javascript:ImgChoice.src='image/SirocDK/Oppstart.gif';"
                    runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="eightcol">
            </div>
            <div class="fourcol">
                <asp:Button ID="Button1" runat="server" Text="Beregn" Height="50px" Width="250px"></asp:Button>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
