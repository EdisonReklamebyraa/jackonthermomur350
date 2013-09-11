<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SirocSECalc.aspx.cs" Inherits="ThermoCalc2012.SirocSECalc" %>

<!doctype html>
<html>
<head>
    <title>Jackon Nettkalkulator</title>
    <!-- 1140px Grid styles for IE -->
    <!--[if lte IE 9]><link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" /><![endif]-->
    <!-- The 1140px Grid - http://cssgrid.net/ -->
    <link rel="stylesheet" href="css/1140.css" type="text/css" media="screen" />
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <script type="text/javascript">
        function checkDropDownLen(sender, Args) {
            var myDrop = document.getElementById("ddl_len");

            if (myDrop.options[myDrop.selectedIndex].value == -1) {
                Args.IsValid = false;
            }
            else {
                Args.IsValid = true;
            }
        }

        function checkDropDownKommun(sender, Args) {
            var myDrop = document.getElementById("ddl_kommun");

            if (myDrop.options[myDrop.selectedIndex].value == -1) {
                Args.IsValid = false;
            }
            else {
                Args.IsValid = true;
            }
        }
        function checkDropDownJordArt(sender, Args) {
            var myDrop = document.getElementById("ddl_Jordart");

            if (myDrop.options[myDrop.selectedIndex].value == -1) {
                Args.IsValid = false;
            }
            else {
                Args.IsValid = true;
            }
        }

    </script>
    <style type="text/css">
        
        .projectinfo label {
            width: 200px
        }
        .nowrap {
            width: 160px
        }

    </style>

</head>
<body>
    <form id="Form1" method="post" runat="server">
    <div class="container">
        <div class="row">
            <div class="twelvecol last">
                <h1>
                    Platta på mark med Siroc L-element och isolering</h1>
            </div>
<%--            <div class="twocol last">
                <asp:Image ID="Image1" runat="server" ImageUrl="Image/Logo_sv.jpg"></asp:Image>
            </div>--%>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="twelvecol last sectionHeader">
                <h3>
                    Prosjektdata</h3>
            </div>
        </div>
        <div class="row">
            <div class="eightcol projectinfo">
               <asp:Label AssociatedControlID="ddl_LH" Text="Siroc L-element. höjd" runat="server"></asp:Label> 
                <span class="nowrap">
                    <asp:DropDownList ID="ddl_LH" onfocus="Javascript:ImgChoice.src='Image/SirocSE/Oppstart.gif';"
                        runat="server" Width="100px" AutoPostBack="True" OnSelectedIndexChanged="ddl_LH_SelectedIndexChanged">
                        <asp:ListItem Value="-1">Välj h&#246;jd</asp:ListItem>
                        <asp:ListItem Value="300">300</asp:ListItem>
                        <asp:ListItem Value="400">400</asp:ListItem>
                        <asp:ListItem Value="500">500</asp:ListItem>
                        <asp:ListItem Value="600">600</asp:ListItem>
                    </asp:DropDownList>
                    mm </span>
                <asp:Label ID="lblLH" runat="server" Width="80px" ForeColor="Red" Visible="False">Skall välgas !</asp:Label>
                <br />
                <asp:Label  AssociatedControlID="txtOmkrets" Text="Byggnadens omkrets: " runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox ID="txtOmkrets"  type="number" step="any" min="0" onfocus="Javascript:ImgChoice.src='Image/SirocSE/Omkrets.gif';"
                        runat="server"></asp:TextBox>
                    meter </span>
                <asp:RequiredFieldValidator ID="ReqFldValOmkrets" runat="server" ControlToValidate="txtOmkrets"
                    ErrorMessage="Fyll i !"></asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValOmkrets"
                        runat="server" ControlToValidate="txtOmkrets" ErrorMessage="Ugyldig verdi !"
                        MaximumValue="999999999" MinimumValue="0"></asp:RangeValidator>
                <br />
                  <asp:Label   AssociatedControlID="txtUtvHjorner" Text="Ytterhörn. antal: " runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox ID="txtUtvHjorner"  type="number" min="0" onfocus="Javascript:ImgChoice.src='Image/SirocSE/ytrehoern.gif';"
                        runat="server"></asp:TextBox>
                    st. </span>
                <asp:RequiredFieldValidator ID="ReqFldValUtvHjorner" runat="server" ControlToValidate="txtUtvHjorner"
                    ErrorMessage="Fyll i !"></asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValUtvHjorner"
                        runat="server" ControlToValidate="txtUtvHjorner" ErrorMessage="Ugyldig verdi !"
                        MaximumValue="999999999" MinimumValue="0"></asp:RangeValidator>
                <br />
                <asp:Label  AssociatedControlID="txtInnvHjorner"  type="number" min="0" Text="Inåtgående hörn. antal: " runat="server"></asp:Label> 
                <span class="nowrap">
                    <asp:TextBox ID="txtInnvHjorner" onfocus="Javascript:ImgChoice.src='Image/SirocSE/Innathoern.gif';"
                        runat="server"></asp:TextBox>
                    st. </span>
                <asp:RequiredFieldValidator ID="ReqFldValInnvHjorner" runat="server" ControlToValidate="txtInnvHjorner"
                    ErrorMessage="Fyll i !"></asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValInnvHjorner"
                        runat="server" ControlToValidate="txtInnvHjorner" ErrorMessage="Ugyldig verdi !"
                        MaximumValue="999999999" MinimumValue="0"></asp:RangeValidator>
                <br />
                <asp:Label AssociatedControlID="txtAreal" Text="Bottenplattans brutto areal: " runat="server"></asp:Label>
                  <span class="nowrap">
                    <asp:TextBox ID="txtAreal"  type="number" step="any" min="0" onfocus="Javascript:ImgChoice.src='Image/SirocSE/Areal_v2.jpg';"
                        runat="server"></asp:TextBox>
                    m<sup>2</sup> </span>
                <asp:RequiredFieldValidator ID="ReqFldValAreal" runat="server" ControlToValidate="txtAreal"
                    ErrorMessage="Fyll i !"></asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValAreal"
                        runat="server" ControlToValidate="txtAreal" ErrorMessage="Ugyldig verdi !" MaximumValue="999999999"
                        MinimumValue="0"></asp:RangeValidator>
                <br />
                 <asp:Label AssociatedControlID="ddl_Len" Text="Byggplatsens län: " runat="server"></asp:Label> 
                 <span class="nowrap" style="width:160px">
                    <asp:DropDownList ID="ddl_Len" onfocus="Javascript:ImgChoice.src='Image/SirocSE/len.gif';"
                        runat="server" Width="160px" AutoPostBack="True" OnSelectedIndexChanged="ddl_Len_SelectedIndexChanged">
                        <asp:ListItem Value="-1">V&#228;lj l&#228;n</asp:ListItem>
                    </asp:DropDownList>
                </span>
                <asp:Label ID="lblLen" runat="server" Width="80px" ForeColor="Red" Visible="False">Skall välgas !</asp:Label>
                <br/> 
                <asp:Label ID="Label1" AssociatedControlID="ddl_kommun" Text="Byggplatsens kommun:" runat="server"></asp:Label>
                <span class="nowrap" style="width:160px">
                    <asp:DropDownList ID="ddl_kommun" onfocus="Javascript:ImgChoice.src='Image/SirocSE/len.gif';"
                        runat="server" Width="160px" AutoPostBack="True" OnSelectedIndexChanged="ddl_kommun_SelectedIndexChanged">
                        <asp:ListItem Value="-1">Välj kommun</asp:ListItem>
                    </asp:DropDownList>
                </span>
                <asp:Label ID="lblKommun" runat="server" Width="80px" ForeColor="Red" Visible="False" >Skall välgas !</asp:Label>
                <br />
                <asp:Label ID="Label2" AssociatedControlID="ddl_Jordart" Text="Jordart:" runat="server"></asp:Label>  
                <span class="nowrap" style="width:160px">
                    <asp:DropDownList ID="ddl_Jordart" onfocus="Javascript:ImgChoice.src='Image/SirocSE/len.gif';"
                        runat="server" Width="160px" AutoPostBack="True" OnSelectedIndexChanged="ddl_Jordart_SelectedIndexChanged">
                        <asp:ListItem Value="-1">Välj Jordart</asp:ListItem>
                        <asp:ListItem Value="Lera_Silt">Lera / Silt</asp:ListItem>
                        <asp:ListItem Value="Sand_Moran">Sand / Mor&#228;n</asp:ListItem>
                        <asp:ListItem Value="Sprengsten">Sprengsten</asp:ListItem>
                        <asp:ListItem Value="Berg">Berg</asp:ListItem>
                    </asp:DropDownList>
                </span>
                <asp:Label ID="lblJordArt" runat="server" Width="80px" ForeColor="Red" Visible="False">Skall välgas !</asp:Label>
                <br />
            </div>
            <div class="fourcol last">
                <asp:Image ID="ImgChoice" runat="server" ImageUrl="Image/SirocSE/oppstart.gif"  CssClass="helperImage"></asp:Image>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="twelvecol last sectionHeader">
                <h3>
                    Kundinformation</h3>
            </div>
        </div>
        <div class="row">
            <div class="sixcol contactinfo last">
               <asp:Label ID="Label3" AssociatedControlID="txtNavn" Text="Namn/Firma:" runat="server"></asp:Label>
                <asp:TextBox ID="txtNavn" onfocus="Javascript:ImgChoice.src='Image/SirocSE/Oppstart.gif';"
                    runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" AssociatedControlID="txtEpost" Text="E-mail:" runat="server"></asp:Label>
                <asp:TextBox ID="txtEpost" onfocus="Javascript:ImgChoice.src='Image/SirocSE/Oppstart.gif';"
                    runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" AssociatedControlID="txtAdresse" Text="Adress:" runat="server"></asp:Label>
                <asp:TextBox ID="txtAdresse" onfocus="Javascript:ImgChoice.src='Image/SirocSE/Oppstart.gif';"
                    runat="server"></asp:TextBox>
                <br />
               <asp:Label ID="Label6" AssociatedControlID="txtPoststed" Text="Post nr./Stad:" runat="server"></asp:Label>
                <asp:TextBox ID="txtPoststed" onfocus="Javascript:ImgChoice.src='Image/SirocSE/Oppstart.gif';"
                    runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label7" AssociatedControlID="txtTelefonMobil" Text="Telefon/mobil:" runat="server"></asp:Label>
                <asp:TextBox ID="txtTelefonMobil" onfocus="Javascript:ImgChoice.src='Image/SirocSE/Oppstart.gif';"
                    runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label8" AssociatedControlID="txtTelefaks" Text="Telefax:" runat="server"></asp:Label>
                <asp:TextBox ID="txtTelefaks" onfocus="Javascript:ImgChoice.src='Image/SirocSE/Oppstart.gif';"
                    runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label9" AssociatedControlID="txtAdresseTomt" Text="Adress, tomtbeteckning:" runat="server"></asp:Label>
                <asp:TextBox ID="txtAdresseTomt" onfocus="Javascript:ImgChoice.src='Image/SirocSE/Oppstart.gif';"
                    runat="server" ></asp:TextBox>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="eightcol">
            </div>
            <div class="fourcol">
                <asp:Button ID="btnBeregn" runat="server" Text="Beräkna" OnClick="btnBeregn_Click1" Height="50px" Width="250px">
                </asp:Button>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
