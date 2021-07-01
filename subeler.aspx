<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="subeler.aspx.cs" Inherits="otogalerisistemi.subeler" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <title>OTO GALERİ Sistemi</title>

    <style>
        .lightgray {
            background-color: lightgray
        }

        .darkgray {
            background-color: darkgray;
        }

        .gray {
            background-color: gray;
        }

        .grayco {
            background-color: #3d3535
        }

        .gri {
            background-color: dimgray;
        }
    </style>

</head>

<body>

    <!-- navbar -->
    <form runat="server">
        <nav class="navbar-expand bg-dark navbar-expand-lg justify-content-between sticky-top ">
            <div class="container py-4">
                <div class="row">
                    <div class="col-3">
                        <a class="navbar-brand text-warning"><b>OTO GALERİ</b></a>
                    </div>
                    <div class="col-3">
                        <asp:Button runat="server" ID="eklesilguncelle2" CssClass="navbar-brand btn btn-dark text-white" Text="ARAÇ/ŞUBE/ÇALIŞAN DÜZENLE" OnClick="eklesilguncelle2_Click" />
                    </div>
                    <div class="col-3">
                        <asp:Button runat="server" ID="subeler2" CssClass="navbar-brand btn btn-dark text-warning" Text="ŞUBELER" OnClick="subeler2_Click" />
                    </div>
                    <div class="col-3">
                        <asp:Button runat="server" ID="mudurekrani2" CssClass="navbar-brand btn btn-dark text-white" Text="MÜDÜR EKRANLARI" OnClick="mudurekrani2_Click" />
                    </div>
                </div>
            </div>
        </nav>

        <!-- -->



        <section class="py-5 bg-light">
            <div class="container">
                <div class="row">
                    <div>
                        <asp:GridView runat="Server" ID="subebilgi" AutoGenerateColumns="False" CssClass="table table-bordered table-light border-warning">
                            <Columns>
                                <asp:BoundField HeaderText="ŞUBE ADI" DataField="subeadi" />
                                <asp:BoundField HeaderText="ŞUBE ADRES" DataField="subeadres" />
                                <asp:BoundField HeaderText="ŞUBE MÜDÜRÜ AD" DataField="muduradi" />
                                <asp:BoundField HeaderText="ŞUBE MÜDÜRÜ SOYAD" DataField="mudursoyadi" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </section>
        <section class="py-5 lightgray">
            <div class="container">
                <div class="row">
                    <div>
                        <h5>ŞUBE1 ÇALIŞANLARI</h5>
                        <asp:GridView runat="Server" ID="Gdsube1calisan" AutoGenerateColumns="False" CssClass="table table-bordered table-light">
                            <Columns>
                                <asp:BoundField HeaderText="AD" DataField="calisanad" />
                                <asp:BoundField HeaderText="SOYAD" DataField="calisansoyad" />
                                <asp:BoundField HeaderText="TC KIMLIK NO" DataField="calisanTC" />
                                <asp:BoundField HeaderText="ŞUBE" DataField="subesi" />
                                <asp:BoundField HeaderText="MAAŞ" DataField="maas" />
                                <asp:BoundField HeaderText="UNVAN" DataField="yetkirole" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div>
                        <h5>ŞUBE1 ARAÇLAR LİSTESİ</h5>
                        <asp:GridView runat="Server" ID="Gdsube1arac" AutoGenerateColumns="False" CssClass="table table-bordered table-light">
                            <Columns>
                                <asp:BoundField HeaderText="ARAÇ NUMARASI" DataField="aracno" />
                                <asp:BoundField HeaderText="MARKA" DataField="marka" />
                                <asp:BoundField HeaderText="MODEL" DataField="model" />
                                <asp:BoundField HeaderText="DONANIM PAKETİ" DataField="paket" />
                                <asp:BoundField HeaderText="YIL" DataField="yil" />
                                <asp:BoundField HeaderText="RENK" DataField="renk" />
                                <asp:BoundField HeaderText="YAKIT" DataField="yakit" />
                                <asp:BoundField HeaderText="VİTES" DataField="vites" />
                                <asp:BoundField HeaderText="KM" DataField="km" />
                                <asp:BoundField HeaderText="KASA TİPİ" DataField="kasatipi" />
                                <asp:BoundField HeaderText="MOTOR GÜCÜ" DataField="motorgucu" />
                                <asp:BoundField HeaderText="MOTOR HACMİ" DataField="motorhacmi" />
                                <asp:BoundField HeaderText="ALIŞ FİYATI" DataField="alisfiyati" />
                                <asp:BoundField HeaderText="ARAÇ DURUMU" DataField="durum" />
                                <asp:BoundField HeaderText="ALIŞ TARİHİ" DataField="alisTarih" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div>
                        <h5>ŞUBE1 GELİR TABLOSU</h5>
                        <asp:GridView runat="server" ID="Gdsube1gelir" AutoGenerateColumns="false" CssClass="table table-bordered table-light">
                            <Columns>
                                <asp:BoundField HeaderText="ARAÇ SATIŞINDAN TOPLAM GELİR" DataField="satisfiyati" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div>
                        <h5>ŞUBE1 GİDER TABLOSU</h5>
                        <asp:GridView runat="server" ID="Gdsube1gider" AutoGenerateColumns="false" CssClass="table table-bordered table-light">
                            <Columns>
                                <asp:BoundField HeaderText="KİRA" DataField="kira" />
                                <asp:BoundField HeaderText="FATURALAR" DataField="faturalar" />
                                <asp:BoundField HeaderText="MAASLAR" DataField="maaslar" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div>
                        <h5>ŞUBE1 MALİYET TABLOSU</h5>
                        <asp:GridView runat="server" ID="Gdsube1maliyet" AutoGenerateColumns="false" CssClass="table bg-white table-bordered">
                            <Columns>
                                <asp:BoundField HeaderText="Şube" DataField="subeadi" />
                                <asp:BoundField HeaderText="Araç Numarası" DataField="aracno" />
                                <asp:BoundField HeaderText="Marka" DataField="marka" />
                                <asp:BoundField HeaderText="Model" DataField="model" />
                                <asp:BoundField HeaderText="Alış Fiyatı" DataField="alisfiyati" />
                                <asp:BoundField HeaderText="Vergi" DataField="vergi" />
                                <asp:BoundField HeaderText="Bakım" DataField="bakim" />
                                <asp:BoundField HeaderText="TOPLAM MALİYET" DataField="maliyet" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </section>
        <section class="py-5 darkgray">
            <div class="container">
                <div class="row">
                    <div class="row">
                        <div>
                            <h5>ŞUBE2 ÇALIŞANLARI</h5>
                            <asp:GridView runat="Server" ID="Gdsube2calisan" AutoGenerateColumns="False" CssClass="table table-bordered table-light">
                                <Columns>
                                    <asp:BoundField HeaderText="AD" DataField="calisanad" />
                                    <asp:BoundField HeaderText="SOYAD" DataField="calisansoyad" />
                                    <asp:BoundField HeaderText="TC KIMLIK NO" DataField="calisanTC" />
                                    <asp:BoundField HeaderText="ŞUBE" DataField="subesi" />
                                    <asp:BoundField HeaderText="MAAŞ" DataField="maas" />
                                    <asp:BoundField HeaderText="UNVAN" DataField="yetkirole" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                    <div>
                        <h5>ŞUBE2 ARAÇLAR LİSTESİ</h5>
                        <asp:GridView runat="Server" ID="Gdsube2arac" AutoGenerateColumns="False" CssClass="table table-bordered table-light">
                            <Columns>
                                <asp:BoundField HeaderText="ARAÇ NUMARASI" DataField="aracno" />
                                <asp:BoundField HeaderText="MARKA" DataField="marka" />
                                <asp:BoundField HeaderText="MODEL" DataField="model" />
                                <asp:BoundField HeaderText="DONANIM PAKETİ" DataField="paket" />
                                <asp:BoundField HeaderText="YIL" DataField="yil" />
                                <asp:BoundField HeaderText="RENK" DataField="renk" />
                                <asp:BoundField HeaderText="YAKIT" DataField="yakit" />
                                <asp:BoundField HeaderText="VİTES" DataField="vites" />
                                <asp:BoundField HeaderText="KM" DataField="km" />
                                <asp:BoundField HeaderText="KASA TİPİ" DataField="kasatipi" />
                                <asp:BoundField HeaderText="MOTOR GÜCÜ" DataField="motorgucu" />
                                <asp:BoundField HeaderText="MOTOR HACMİ" DataField="motorhacmi" />
                                <asp:BoundField HeaderText="ALIŞ FİYATI" DataField="alisfiyati" />
                                <asp:BoundField HeaderText="ARAÇ DURUMU" DataField="durum" />
                                <asp:BoundField HeaderText="ALIŞ TARİHİ" DataField="alisTarih" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div>
                        <h5>ŞUBE2 GELİR TABLOSU</h5>
                        <asp:GridView runat="server" ID="Gdsube2gelir" AutoGenerateColumns="false" CssClass="table table-bordered table-light">
                            <Columns>
                                <asp:BoundField HeaderText="TOPLAM GELİR" DataField="satisfiyati" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div>
                        <h5>ŞUBE2 GİDER TABLOSU</h5>
                        <asp:GridView runat="server" ID="Gdsube2gider" AutoGenerateColumns="false" CssClass="table table-bordered table-light">
                            <Columns>
                                <asp:BoundField HeaderText="KİRA" DataField="kira" />
                                <asp:BoundField HeaderText="FATURALAR" DataField="faturalar" />
                                <asp:BoundField HeaderText="MAASLAR" DataField="maaslar" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div>
                        <h5>ŞUBE2 MALİYET TABLOSU</h5>
                        <asp:GridView runat="server" ID="Gdsube2maliyet" AutoGenerateColumns="false" CssClass="table table-bordered table-light">
                            <Columns>
                                <asp:BoundField HeaderText="Şube" DataField="subeadi" />
                                <asp:BoundField HeaderText="Araç Numarası" DataField="aracno" />
                                <asp:BoundField HeaderText="Marka" DataField="marka" />
                                <asp:BoundField HeaderText="Model" DataField="model" />
                                <asp:BoundField HeaderText="Alış Fiyatı" DataField="alisfiyati" />
                                <asp:BoundField HeaderText="Vergi" DataField="vergi" />
                                <asp:BoundField HeaderText="Bakım" DataField="bakim" />
                                <asp:BoundField HeaderText="TOPLAM MALİYET" DataField="maliyet" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </section>
       <%-- <section class="py-5 gray">
            <div class="container">
                <div class="row">
                    <div>
                       <h5>ŞUBE1+ŞUBE2 ARAÇLARIN TOPLAM MALİYET TABLOSU</h5>
                        <asp:GridView runat="server" ID="ToplamMaliyet" AutoGenerateColumns="false" CssClass="table table-bordered table-light">
                            <Columns>
                                <asp:BoundField HeaderText="Alış Fiyatı" DataField="alisfiyati" />
                                <asp:BoundField HeaderText="Vergi" DataField="vergi" />
                                <asp:BoundField HeaderText="Bakım" DataField="bakim" />
                                <asp:BoundField HeaderText="TOPLAM MALİYET" DataField="maliyet" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </section>--%>
        <section class="py-5 gri">
            <div class="container">
                <div class="row">
                    <p class="text-warning"><b>SATILAN ARAÇLAR LİSTESİ</b></p>
                    <asp:GridView runat="Server" ID="SatilanAraclar" AutoGenerateColumns="False" CssClass="table table-bordered table-light">
                        <Columns>
                            <asp:BoundField HeaderText="ARAÇ NO" DataField="aracno" />
                            <asp:BoundField HeaderText="SATILDIĞI ŞUBE" DataField="aracsube" />
                            <asp:BoundField HeaderText="MARKA" DataField="marka" />
                            <asp:BoundField HeaderText="MODEL" DataField="model" />
                            <asp:BoundField HeaderText="ALIŞ FİYATI" DataField="alisfiyati" />
                            <asp:BoundField HeaderText="ŞATIŞ FİYATI" DataField="satisfiyati" />
                            <asp:BoundField HeaderText="ALICI AD-SOYAD" DataField="aliciAS" />
                            <asp:BoundField HeaderText="ALICI TELEFON" DataField="alicitel" />
                            <asp:BoundField HeaderText="ARAÇ DURUMU" DataField="durum" />
                            <asp:BoundField HeaderText="SATIŞ TARİHİ" DataField="satisTarih" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </section>
        <footer class="bg-dark py-5 pt-4"></footer>
    </form>







    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/bootstrap.bundle.js.map"></script>
    <script src="js/bootstrap.esm.js"></script>
    <script src="js/bootstrap.esm.js.map"></script>
    <script src="js/bootstrap.esm.min.js"></script>
    <script src="js/bootstrap.esm.min.js.map"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.js.map"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.min.js.map"></script>
</body>
</html>
