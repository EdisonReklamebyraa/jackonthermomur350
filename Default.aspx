<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ThermoCalc2012._Default" %>

<!doctype html>
<html>
<head>
    <title>
        <asp:Localize Text="<%$ Resources: Resources, SiteTitle %>" runat="server"></asp:Localize>
    </title>
    <!-- 1140px Grid styles for IE -->
    <!--[if lte IE 9]><link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" /><![endif]-->
    <!-- The 1140px Grid - http://cssgrid.net/ -->
    <link rel="stylesheet" href="css/1140.css" type="text/css" media="screen" />
    <%--  <link href="css/cssNo.css" rel="stylesheet" />
    <link media="print" href="css/cssNOPrint.css" rel="stylesheet" />--%>
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
                    <asp:Localize ID="Localize13" Text="<%$ Resources: Resources, MengdeberegningJackonThermomur350 %>"
                        runat="server"></asp:Localize></h1>
            </div>
          <%--  <div class="twocol last">

                <asp:Image ID="logo" runat="server" />
            </div>--%>
        </div>
        <div class="row">
            <div class="twelvecol last description">
                <asp:Localize ID="Localize1" Text="<%$ Resources: Resources, ThermoCalcDescription %>"
                    runat="server"></asp:Localize>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="twelvecol last sectionHeader">
                <h3>
                    <asp:Localize ID="Localize16" Text="<%$ Resources:Resources, ProsjektData2 %>" runat="server"></asp:Localize></h3>
            </div>
        </div>
        <div class="row">
            <div class="sixcol projectinfo">
                <asp:Label AssociatedControlID="txt_Imv" Text="<%$ Resources: Resources, AntallLopemeterVegg %>"
                    runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_Imv" onfocus="Javascript:ImgChoice.src='Image/omkrets.jpg';"
                        TabIndex="1" runat="server"></asp:TextBox>
                    m</span>
                <br />
                <asp:Label AssociatedControlID="txt_ant_hj" Text="<%$ Resources: Resources, AntallUtvendigeHjorner %>"
                    runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_ant_hj" onfocus="Javascript:ImgChoice.src='Image/utvhj.jpg';"
                        TabIndex="2" runat="server"></asp:TextBox>
                    stk</span>
                <br />
                <asp:Label AssociatedControlID="txt_ant_innhj" Text="<%$ Resources: Resources, AntallInnvendigeHjorner %>"
                    runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_ant_innhj"
                        onfocus="Javascript:ImgChoice.src='Image/innvhj.jpg';" TabIndex="3" runat="server"></asp:TextBox>
                    stk</span>
                <br />
                <asp:Label AssociatedControlID="txt_ant_fev" Text="<%$ Resources: Resources, AntallFrittstaaendeEndevegger %>"
                    runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_ant_fev" onfocus="Javascript:ImgChoice.src='Image/friende.jpg';"
                        TabIndex="4" runat="server"></asp:TextBox>
                    stk</span>
                <br />
                <asp:Label AssociatedControlID="txt_hpg" Text="<%$ Resources: Resources, HoydeMedSTDBlokk %>"
                    runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_hpg" onfocus="Javascript:ImgChoice.src='Image/stdblokk.jpg';"
                        TabIndex="5" runat="server"></asp:TextBox>
                    m</span>
                <br />
                <asp:Label AssociatedControlID="txt_halvblokk" Text="<%$ Resources: Resources, AntallMeterHalvBlokk %>"
                    runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_halvblokk"
                        onfocus="Javascript:ImgChoice.src='Image/halvblokk.jpg';" TabIndex="6" runat="server"></asp:TextBox>
                    m</span>
                <br />
                <asp:Label AssociatedControlID="txt_ant_hj12bl" Text="<%$ Resources: Resources, AntallHjornerEnderHalvBlokk %>"
                    runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_ant_hj12bl"
                        onfocus="Javascript:ImgChoice.src='Image/U_05_HjørneEnde.jpg';" TabIndex="7"
                        runat="server"></asp:TextBox>
                    stk</span>
                <br />
                <asp:Label AssociatedControlID="txt_Ubl" Text="<%$ Resources: Resources, AntMeterUblokk %>"
                    runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_Ubl" onfocus="Javascript:ImgChoice.src='Image/Ublokk.jpg';"
                        TabIndex="8" runat="server"></asp:TextBox>
                    m</span>
                <br />
                <asp:Label AssociatedControlID="txt_ant_hjUbl" Text="<%$ Resources: Resources, AntallHjornerEnderUblokk %>"
                    runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_ant_hjUbl"
                        onfocus="Javascript:ImgChoice.src='Image/U_05_HjørneEnde.jpg';" TabIndex="9"
                        runat="server"></asp:TextBox>
                    stk</span>
                <br />
                <asp:Label AssociatedControlID="txt_mPuss" Text="<%$ Resources: Resources, AntallKvadratPussetVegg %>"
                    runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_mPuss" onfocus="<%$ Resources: Resources, PussBilde %>"
                        TabIndex="10" runat="server"></asp:TextBox>
                    m<sup>2</sup></span>
                <br />
                <asp:Label AssociatedControlID="txt_mEl" Text="<%$ Resources: Resources, AntallKvadratVeggTetningsMembran %>"
                    runat="server"></asp:Label>
                <span class="nowrap">
                    <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_mEl" onfocus="<%$ Resources: Resources, TetningsmembranBilde %>"
                        TabIndex="11" runat="server"></asp:TextBox>
                    m<sup>2</sup></span>
                <br />
                <asp:Panel ID="HideIfSwedishPanel" runat="server">
                    <asp:Label AssociatedControlID="txt_Sal" ID="txt_SalLabel" Text="<%$ Resources: Resources, SaaleblokkAntallMeter %>"
                        runat="server"></asp:Label>
                    <span class="nowrap">
                        <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_Sal" onfocus="Javascript:ImgChoice.src='Image/såleblokk.jpg';"
                            TabIndex="12" runat="server"></asp:TextBox>
                        m</span>
                    <br />
                    <asp:Label AssociatedControlID="txt_Gareal" ID="txt_GarealLabel" Text="<%$ Resources: Resources, ArealGulvisolasjon %>"
                        runat="server"></asp:Label>
                    <span class="nowrap">
                        <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_Gareal" onfocus="Javascript:ImgChoice.src='Image/areal.jpg';"
                            TabIndex="13" runat="server"></asp:TextBox>
                        m<sup>2</sup></span>
                    <br />
                </asp:Panel>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="384px" ShowMessageBox="True"
                    Height="35px"></asp:ValidationSummary>
                <div style="display: none; height: 0px">
                    <asp:RequiredFieldValidator ID="ReqFldVal_txt_Imv" runat="server" Width="2000px"
                        ControlToValidate="txt_Imv" ErrorMessage="<%$ Resources: Resources, AntallLopemetermaafyllesut %>"
                        Display="Dynamic">&nbsp;
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeVal_txt_Imv" runat="server" Width="16px" ControlToValidate="txt_Imv"
                        ErrorMessage="<%$ Resources: Resources, AntallLopemeterHarUgyldigVerdi %>" MaximumValue="999999999"
                        MinimumValue="0" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="ReqFldVal_txt_ant_hj" runat="server" ControlToValidate="txt_ant_hj"
                        ErrorMessage="<%$ Resources: Resources, AntallUtvendigeHjornerMaaFyllesUt %>"
                        Display="Dynamic">&nbsp;</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeVal_txt_ant_hj" runat="server" ControlToValidate="txt_ant_hj"
                        ErrorMessage="<%$ Resources: Resources, AntallUtvendigeHjornerMaaFyllesUt %>"
                        MaximumValue="999999999" MinimumValue="0" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_ant_innhj" runat="server" ControlToValidate="txt_ant_innhj"
                        ErrorMessage="<%$ Resources: Resources, AntallInnvendigeHjornerharUgyldigVerdi %>"
                        MaximumValue="999999999" MinimumValue="0" Display="Dynamic">&nbsp;</asp:RangeValidator><asp:RangeValidator
                            ID="RangeVal_txt_ant_fev" runat="server" ControlToValidate="txt_ant_fev" ErrorMessage="<%$ Resources: Resources, AntallFrittstaaendeEndeveggerHarUgyldigVerdi %>"
                            MaximumValue="999999999" MinimumValue="0" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="ReqFldVal_txt_hpg" runat="server" ControlToValidate="txt_hpg"
                        ErrorMessage="<%$ Resources: Resources, HoydeMedStdBlokkMaaFyllesUt %>" Display="Dynamic">&nbsp;</asp:RequiredFieldValidator><asp:RangeValidator
                            ID="RangeVal_txt_hpg" runat="server" ControlToValidate="txt_hpg" ErrorMessage="<%$ Resources: Resources, HoydeMedStdBlokkHarUgyldigVerdi %>"
                            MaximumValue="999999999" MinimumValue="0" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_halvblokk" runat="server" ControlToValidate="txt_halvblokk"
                        ErrorMessage="<%$ Resources: Resources, AntallMeterHalvBlokkHarUgyldigVerdi %>"
                        MaximumValue="999999999" MinimumValue="0" Display="Dynamic">&nbsp;</asp:RangeValidator><asp:RangeValidator
                            ID="RangeVal_txt_ant_hj12bl" runat="server" ControlToValidate="txt_ant_hj12bl"
                            ErrorMessage="<%$ Resources: Resources, AntallHjornerHalvblokkHarUgyldigVerdi %>"
                            MaximumValue="999999999" MinimumValue="0" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_Ubl" runat="server" ControlToValidate="txt_Ubl"
                        ErrorMessage="<%$ Resources: Resources, AntallMeterUblokkHarUgyldigVerdi %>"
                        MaximumValue="999999999" MinimumValue="0" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_hjUbl" runat="server" ControlToValidate="txt_ant_hjUbl"
                        ErrorMessage="<%$ Resources: Resources, AntallHjornerMedUBlokkHarUgyldigVerdi %>"
                        MaximumValue="999999999" MinimumValue="0" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="ReqFldVal_txt_mPuss" runat="server" ControlToValidate="txt_mPuss"
                        ErrorMessage="<%$ Resources: Resources, AntallKvadratPussetVeggMaFyllesUt %>"
                        Display="Dynamic">&nbsp;</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeVal_txt_mPuss" runat="server" ControlToValidate="txt_mPuss"
                        ErrorMessage="<%$ Resources: Resources, AntallKvadratPussetVeggHarUgyldigVerdi %>"
                        MaximumValue="999999999" MinimumValue="0" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="ReqFldVal_txt_mEl" runat="server" ControlToValidate="txt_mEl"
                        ErrorMessage="<%$ Resources: Resources, AntallKvadratVeggMedTetningsMembranMaFyllesUt %>"
                        Display="Dynamic">&nbsp;</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeVal_txt_mEl" runat="server" ControlToValidate="txt_mEl"
                        ErrorMessage="<%$ Resources: Resources, AntallKvadratVeggMedTetningsMembranHarUgyldigVerdi %>"
                        MaximumValue="999999999" MinimumValue="0" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="ReqFldVal_txt_Sal" runat="server" ControlToValidate="txt_Sal"
                        ErrorMessage="<%$ Resources: Resources, SaaleblokkAntallMeterMaaFyllesUt %>"
                        Display="Dynamic">&nbsp;</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeVal_txt_Sal" runat="server" ControlToValidate="txt_Sal"
                        ErrorMessage="<%$ Resources: Resources, SaaleblokkAntellMeterHarUgyldigVerdi %>"
                        MaximumValue="999999999" MinimumValue="0" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="ReqFldVal_txt_Gareal" runat="server" ControlToValidate="txt_Gareal"
                        ErrorMessage="<%$ Resources: Resources, ArealJackpor80MaaFyllesUt %>" Display="Dynamic">&nbsp;</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeVal_txt_GAreal" runat="server" ControlToValidate="txt_Gareal"
                        ErrorMessage="<%$ Resources: Resources, ArealJackpor80HarUgyldigVerdi %>" MaximumValue="999999999"
                        MinimumValue="0" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="ReqFldVal_txt_smyg_br1" runat="server" ControlToValidate="txt_smyg_br1"
                        ErrorMessage="<%$ Resources: Resources, SmyglisteKolonneBreddeManglerVerdiIRad %>"
                        Display="Dynamic">&nbsp;</asp:RequiredFieldValidator><asp:RequiredFieldValidator
                            ID="ReqFldVal_txt_smyg_hoy1" runat="server" ControlToValidate="txt_smyg_hoy1"
                            ErrorMessage="<%$ Resources: Resources, SmyglisteKolonneHoydeManglerVerdiIRad %>"
                            Display="Dynamic">&nbsp;</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="ReqFldVal_txt_smyg_ant1" runat="server" ControlToValidate="txt_smyg_ant1"
                        ErrorMessage="<%$ Resources: Resources, SmyglisteKolonneAntallManglerVerdiIRad %>"
                        Display="Dynamic">&nbsp;</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_br1" runat="server" ControlToValidate="txt_smyg_br1"
                        MaximumValue="999999999" MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_hoy1" runat="server" ControlToValidate="txt_smyg_hoy1"
                        MaximumValue="999999999" MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_ant1" runat="server" ControlToValidate="txt_smyg_ant1"
                        MaximumValue="999999999" MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_br2" runat="server" ControlToValidate="txt_smyg_br2"
                        MaximumValue="999999999" MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_hoy2" runat="server" ControlToValidate="txt_smyg_hoy2"
                        MaximumValue="999999999" MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_ant2" runat="server" ControlToValidate="txt_smyg_ant2"
                        MaximumValue="999999999" MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_br3" runat="server" ControlToValidate="txt_smyg_br3"
                        MaximumValue="999999999" MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_hoy3" runat="server" ControlToValidate="txt_smyg_hoy3"
                        MaximumValue="999999999" MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_ant3" runat="server" ControlToValidate="txt_smyg_ant3"
                        MaximumValue="999999999" MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_br4" runat="server" ControlToValidate="txt_smyg_br4"
                        MaximumValue="999999999" MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_hoy4" runat="server" ControlToValidate="txt_smyg_hoy4"
                        MaximumValue="999999999" MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_ant4" runat="server" ControlToValidate="txt_smyg_ant4"
                        MaximumValue="999999999" MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_br5" runat="server" ControlToValidate="txt_smyg_br5"
                        ErrorMessage="<%$ Resources: Resources, SmyglisteKolonneBreddeHarUgyldigVerdiIRad %> nr.5."
                        MaximumValue="999999999" MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_hoy5" runat="server" ControlToValidate="txt_smyg_hoy5"
                        ErrorMessage="Smygliste kolone høyde har ugyldig verdi i rad nr.5." MaximumValue="999999999"
                        MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_ant5" runat="server" ControlToValidate="txt_smyg_ant5"
                        MaximumValue="999999999" MinimumValue="0" Visible="true" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_br6" runat="server" ControlToValidate="txt_smyg_br6"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_hoy6" runat="server" ControlToValidate="txt_smyg_hoy6"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_ant6" runat="server" ControlToValidate="txt_smyg_ant6"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_br7" runat="server" ControlToValidate="txt_smyg_br7"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_hoy7" runat="server" ControlToValidate="txt_smyg_hoy7"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_ant7" runat="server" ControlToValidate="txt_smyg_ant7"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_br8" runat="server" ControlToValidate="txt_smyg_br8"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_hoy8" runat="server" ControlToValidate="txt_smyg_hoy8"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_ant8" runat="server" ControlToValidate="txt_smyg_ant8"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_br9" runat="server" ControlToValidate="txt_smyg_br9"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_hoy9" runat="server" ControlToValidate="txt_smyg_hoy9"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_ant9" runat="server" ControlToValidate="txt_smyg_ant9"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_br10" runat="server" ControlToValidate="txt_smyg_br10"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_hoy10" runat="server" ControlToValidate="txt_smyg_hoy10"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                    <asp:RangeValidator ID="RangeVal_txt_smyg_ant10" runat="server" ControlToValidate="txt_smyg_ant10"
                        MaximumValue="999999999" MinimumValue="0" Visible="True" Display="Dynamic">&nbsp;</asp:RangeValidator>
                </div>
            </div>
            <div class="sixcol last">
                <asp:Image ID="ImgChoice" runat="server" ImageUrl="Image/start.jpg" CssClass="helperImage"
                    ImageAlign="Top"></asp:Image>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="twelvecol last sectionHeader">
                <h3>
                    <asp:Localize ID="Localize14" Text="<%$ Resources: Resources, SmyglisterDorerogVinduer %>"
                        runat="server"></asp:Localize></h3>
            </div>
        </div>
        <div class="row">
            <div class="sixcol">
                <table class="tbl_Smygliste" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr>
                            <th>
                            </th>
                            <th class="td_col_smyg_head_bredde">
                                <asp:Localize ID="Localize19" Text="<%$ Resources: Resources, Bredde %>" runat="server"></asp:Localize>
                                (m)
                            </th>
                            <th class="td_col_smyg_head_hoyde">
                                <asp:Localize ID="Localize20" Text="<%$ Resources: Resources, Hoyde %>" runat="server"></asp:Localize>
                                (m)
                            </th>
                            <th class="td_col_smyg_head_antall">
                                <asp:Localize ID="Localize21" Text="<%$ Resources: Resources, Antall %>" runat="server"></asp:Localize>
                            </th>
                            <th>
                            </th>
                        </tr>
                    </thead>
                    <tr>
                        <td class="firstcol">
                            1.
                        </td>
                        <td class="td_col_smyg_bredde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_br1"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="14" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_hoyde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_hoy1"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="15" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_antall">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_ant1"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="16" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            2.
                        </td>
                        <td class="td_col_smyg_bredde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_br2"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="17" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_hoyde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_hoy2"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="18" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_antall">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_ant2"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="19" runat="server"></asp:TextBox>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            3.
                        </td>
                        <td class="td_col_smyg_bredde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_br3"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="20" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_hoyde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_hoy3"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="21" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_antall">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_ant3"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="22" runat="server"></asp:TextBox>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            4.
                        </td>
                        <td class="td_col_smyg_bredde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_br4"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="23" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_hoyde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_hoy4"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="24" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_antall">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_ant4"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="25" runat="server"></asp:TextBox>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            5.
                        </td>
                        <td class="td_col_smyg_bredde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_br5"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="26" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_hoyde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_hoy5"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="27" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_antall">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_ant5"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="28" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </div>
            <div class="sixcol last">
                <table class="tbl_Smygliste" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr class="smyglistHeaderRow2">
                            <th>
                            </th>
                            <th class="td_col_smyg_head_bredde">
                                <asp:Localize ID="Localize22" Text="<%$ Resources: Resources, Bredde %>" runat="server"></asp:Localize>
                                (m)
                            </th>
                            <th class="td_col_smyg_head_hoyde">
                                <asp:Localize ID="Localize23" Text="<%$ Resources: Resources, Hoyde %>" runat="server"></asp:Localize>
                                (m)
                            </th>
                            <th class="td_col_smyg_head_antall">
                                <asp:Localize ID="Localize24" Text="<%$ Resources: Resources, Antall %>" runat="server"></asp:Localize>
                            </th>
                            <th>
                            </th>
                        </tr>
                    </thead>
                    <tr>
                        <td class="firstcol">
                            6.
                        </td>
                        <td class="td_col_smyg_bredde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_br6"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="29" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_hoyde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_hoy6"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="30" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_antall">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_ant6"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="31" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            7.
                        </td>
                        <td class="td_col_smyg_bredde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_br7"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="32" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_hoyde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_hoy7"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="33" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_antall">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_ant7"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="34" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            8.
                        </td>
                        <td class="td_col_smyg_bredde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_br8"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="35" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_hoyde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_hoy8"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="36" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_antall">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_ant8"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="37" runat="server"></asp:TextBox>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            9.
                        </td>
                        <td class="td_col_smyg_bredde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_br9"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="38" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_hoyde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_hoy9"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="39" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_antall">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_ant9"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="40" runat="server"></asp:TextBox>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            10.
                        </td>
                        <td class="td_col_smyg_bredde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_br10"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="41" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_hoyde">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_hoy10"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="42" runat="server"></asp:TextBox>
                        </td>
                        <td class="td_col_smyg_antall">
                            <asp:TextBox type="number" step="any" min="0" CssClass="right" ID="txt_smyg_ant10"
                                onfocus="Javascript:ImgChoice.src='Image/Vindudor.jpg';" TabIndex="43" runat="server"></asp:TextBox>
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <br>
    </div>
    <div class="container">
        <div class="row">
            <div class="twelvecol last sectionHeader">
                <h3>
                    <asp:Localize ID="Localize15" Text="<%$ Resources: Resources, Kundeinformasjon %>"
                        runat="server"></asp:Localize></h3>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="sixcol contactinfo">
                <asp:Label AssociatedControlID="txtNavn" Text="<%$ Resources: Resources, NavnFirma%>"
                    runat="server" />
                <asp:TextBox ID="txtNavn" onfocus="Javascript:ImgChoice.src='Image/start.jpg';" TabIndex="44"
                    runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label1" AssociatedControlID="txtEpost" Text="<%$ Resources: Resources, Epost %>"
                    runat="server" />
                <asp:TextBox ID="txtEpost" type="email" onfocus="Javascript:ImgChoice.src='Image/start.jpg';"
                    TabIndex="45" runat="server"></asp:TextBox>
                <br />
                <asp:Label Text="<%$ Resources: Resources, Adresse %>" runat="server" AssociatedControlID="txtAdresse" />
                <asp:TextBox ID="txtAdresse" onfocus="Javascript:ImgChoice.src='Image/start.jpg';"
                    TabIndex="46" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" Text="<%$ Resources: Resources, postnrSted %>" runat="server"
                    AssociatedControlID="txtPoststed" />
                <asp:TextBox ID="txtPoststed" onfocus="Javascript:ImgChoice.src='Image/start.jpg';"
                    TabIndex="47" runat="server"></asp:TextBox>
                <br />
            </div>
            <div class="sixcol contactinfo last">
                <asp:Label ID="Label3" AssociatedControlID="txtTelefonMobil" Text="<%$ Resources: Resources, Telefon%>"
                    runat="server" />
                <asp:TextBox type="number" step="any" min="0" ID="txtTelefonMobil" onfocus="Javascript:ImgChoice.src='Image/start.jpg';"
                    TabIndex="48" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" AssociatedControlID="txtTelefaks" Text="<%$ Resources: Resources, Telefax%>"
                    runat="server" />
                <asp:TextBox type="number" step="any" min="0" ID="txtTelefaks" onfocus="Javascript:ImgChoice.src='Image/start.jpg';"
                    TabIndex="49" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" AssociatedControlID="txtDeresRef" Text="<%$ Resources: Resources, DeresRef%>"
                    runat="server" />
                <asp:TextBox ID="txtDeresRef" onfocus="Javascript:ImgChoice.src='Image/start.jpg';"
                    TabIndex="50" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label6" AssociatedControlID="txtProsjekt" Text="<%$ Resources: Resources, Prosjekt%>"
                    runat="server" />
                <asp:TextBox ID="txtProsjekt" onfocus="Javascript:ImgChoice.src='Image/start.jpg';"
                    TabIndex="51" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="eightcol">
            </div>
            <div class="fourcol">
                <asp:Button ID="btnBeregn" TabIndex="52" runat="server" Height="50px" Width="250px"
                    Text="<%$ Resources: Resources, StartBeregning %>" OnClick="btnBeregn_Click">
                </asp:Button>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
