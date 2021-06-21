<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mudur.aspx.cs" Inherits="otogalerisistemi.mudur" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <title>OTO GALERİ</title>

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
    </style>

</head>

<body>

    <!-- navbar -->
    <form runat="server">
        <nav class="navbar-expand bg-dark navbar-expand-lg justify-content-between sticky-top ">
            <div class="container py-4">
                <div class="row">
                    <div class="col-4">
                        <a class="navbar-brand text-warning"><b>OTO GALERİ ŞUBE MÜDÜRLÜĞÜ</b></a>
                    </div>
                    <div class="col-4">
                        <asp:Button runat="server" CssClass="navbar-brand btn btn-dark text-white" ID="araclarlistbtn" Text="Araç Listesi" OnClick="araclarlistbtn_Click" />
                    </div>
                    <div class="col-4">
                        <asp:Button runat="server" ID="superuserekrani" CssClass="navbar-brand btn btn-dark text-white" Text="Super User Ekranı" OnClick="superuserekrani_Click" />
                    </div>
                </div>
            </div>
        </nav>

        <!-- -->


        <section class="py-5 bg-light">
            <div class="container">
                <div class="row">
                    <h5 class="py-3">ARAÇ ALIM - SATIM</h5>
                    <div class="col-6">
                        <div class="form-group">
                            <label for="EkleSilaracno" id="aracnotext" runat="server"><b>ARAÇ NO</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="EkleSilaracno"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="eklesube" id="eklesubetext" runat="server"><b>ARACIN BULUNDUĞU ŞUBE</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="eklesube"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="eklemarka" id="eklemarkatext" runat="server"><b>MARKA</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="eklemarka"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="eklemodel" id="eklemodeltext" runat="server"><b>MODEL</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="eklemodel"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="eklepaket" id="eklepakettext" runat="server"><b>DONANIM PAKETİ</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="eklepaket"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="ekleyil" id="ekleyiltext" runat="server"><b>YIL</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="ekleyil"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="eklerenk" id="eklerenktext" runat="server"><b>RENK</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="eklerenk"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="ekleyakit" id="ekleyakittext" runat="server"><b>YAKIT</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="ekleyakit"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="eklevites" id="eklevitestext" runat="server"><b>VİTES</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="eklevites"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="eklekm" id="eklekmtext" runat="server"><b>KM</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="eklekm"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="eklekasatipi" id="eklekasatipitext" runat="server"><b>KASA TİPİ</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="eklekasatipi"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="eklemotorgucu" id="eklemotorgucutext" runat="server"><b>MOTOR GÜCÜ</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="eklemotorgucu"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="eklemotorhacmi" id="eklemotorhacmitext" runat="server"><b>MOTOR HACMİ</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="eklemotorhacmi"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="eklealisfiyati" id="eklealisfiyatitext" runat="server"><b>ALIŞ FİYATI</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="eklealisfiyati"></asp:TextBox>
                        </div>
                        <div class="mt-4">
                            <asp:Button type="submit" class="btn bg-dark text-white" runat="server" ID="aracAlbtn" Text="Araç Alım İşlemini Onayla" OnClick="aracAlbtn_Click"></asp:Button>
                        </div>
                    </div>
                    <div class="col-6">
                        <div>
                            <label for="satilacakaracno" id="satilacakaracnotext" runat="server"><b>SATILACAK ARACIN NUMARASI</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="satilacakaracno"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="satMarka" runat="server" id="satMarkatext"><b>MARKA</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="satMarka"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="satModel" runat="server" id="satModeltext"><b>MODEL</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="satModel"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="satisfiyat" runat="server" id="satisfiyattext"><b>SATIŞ FİYATI</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="satisfiyat"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="aliciad" runat="server" id="aliciadtext"><b>MÜŞTERİ AD-SOYAD</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="aliciad"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="alicitelno" runat="server" id="alicitelnotext"><b>MÜŞTERİ TELEFON NUMARASI</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="alicitelno"></asp:TextBox>
                        </div>
                        <div class="mt-2 py-3">
                            <asp:Button type="submit" class="btn bg-dark text-white" runat="server" ID="aracSatbtn" Text="Araç Satışını Onayla" OnClick="aracSatbtn_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="py-5 lightgray">
            <div class="container">
                <div class="row">
                    <h5>ŞUBE GELİRİ GİRİŞİ</h5>
                    <div class="col-6">
                        <div class="form-group">
                           <asp:GridView runat="server" ID="GdGelir" AutoGenerateColumns="false" CssClass="table table-bordered table-light">
                               <Columns>
                                   <asp:BoundField HeaderText="TOPLAM GELİR" DataField="satisfiyati" />
                               </Columns>
                           </asp:GridView>
                        </div>
                       <div class="mt-2 py-3">
                            <asp:Button runat="server" ID="gelirbtn" CssClass="btn bg-dark text-white" Text="Gelir Girişini Onayla" OnClick="gelirbtn_Click" />
                        </div> 
                    </div>
                    <h5 class="py-3">ŞUBE GİDERLERİ GİRİŞİ</h5>
                    <div class="col-6">
                        <div class="form-group">
                            <label for="eklekira" id="eklekiratext" runat="server"><b>KİRA BEDELİ</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="eklekira"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="eklefaturalar" id="eklefaturalartext" runat="server"><b>FATURALAR</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="eklefaturalar"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="eklemaaslar" id="eklemaaslartext" runat="server"><b>MAAŞLAR</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="eklemaaslar"></asp:TextBox>
                        </div>
                        <div class="mt-2 py-3">
                            <asp:Button type="submit" class="btn bg-dark text-white" runat="server" ID="giderEklebtn" Text="Gider Girişini Onyla" OnClick="giderEklebtn_Click"></asp:Button>
                        </div>
                    </div>
                    <div class="col-6">
                        <h5>ŞUBE GİDERLERİ</h5>
                        <asp:GridView runat="server" ID="GVgider" AutoGenerateColumns="false" CssClass="table bg-white table-bordered">
                            <Columns>
                                <asp:BoundField HeaderText="KİRA" DataField="kira" />
                                <asp:BoundField HeaderText="FATURALAR" DataField="faturalar" />
                                <asp:BoundField HeaderText="MAAŞLAR" DataField="maaslar" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </section>
        <section class="py-5 darkgray">
            <div class="container">
                <div class="row">
                    <h5 class="py-3">MASRAFLAR / MALİYET</h5>
                    <div class="col-6">
                        <div class="form-group">
                            <label for="aracnoMaliyet" id="aracnoMaliyetText" runat="server"><b>ARAÇ NUMARASI</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="aracnoMaliyet"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="markaMaliyet" id="markaMaliyetText" runat="server"><b>ARAÇ MARKA</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="markaMaliyet"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="modelMaliyet" id="modelMaliyetText" runat="server"><b>ARAÇ MODEL</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="modelMaliyet"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="alisfiyatiMaliyet" id="alisfiyatiMaliyetText" runat="server"><b>ARAÇ ALIŞ FİYATI</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="alisfiyatiMaliyet"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="vergimaliyet" id="vergimaliyetText" runat="server"><b>ARAÇ VERGİSİ</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="vergimaliyet"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="aracbakim" id="aracbakimText" runat="server"><b>ARAÇ BAKIM MASRAFI</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="aracbakim"></asp:TextBox>
                        </div>
                        <div class="mt-2 py-3">
                            <asp:Button runat="server" CssClass="btn bg-dark text-white" Text="Araç Masraf Girişlerini Onayla" ID="maliyet" OnClick="maliyet_Click" />
                        </div>
                    </div>
                    <div class="col-6">
                        toplam maliyeti(vergi+bakim+alisfiyati) gösteren alan kodları--- ARAÇ İÇİN MALİYET GÖSTERECEK GRİDVİEW ALANI ---
                    </div>
                </div>
            </div>
        </section>
        <section class="py-5 gray">
            <div class="container">
                <div class="row">
                    <div>
                        <div class="form-group">
                            <label for="calisanADekle" id="calisanADekletext" runat="server"><b>AD</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="calisanADekle"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="calisanADekle" id="calisanSOYADekletext" runat="server"><b>SOYAD</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="calisanSOYADekle"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="calisanTCekle" id="calisanTCtext" runat="server"><b>TC KİMLİK NO</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="calisanTCekle"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="calisanSUBEekle" id="calisanSUBEekletext" runat="server"><b>ŞUBE</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="calisanSUBEekle"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="calisanMAASekle" id="calisanMAASekletext" runat="server"><b>MAAŞ</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="calisanMAASekle"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="calisanYETKİROLEekle" id="calisanYETKİROLEekletext" runat="server"><b>UNVAN</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="calisanYETKİROLEekle"></asp:TextBox>
                        </div>
                        <div class="mt-2 py-3">
                            <asp:Button type="submit" class="btn bg-dark text-white" runat="server" ID="calisaneklebtn" Text="Yeni Çalışan Girişini Onayla" OnClick="calisaneklebtn_Click"></asp:Button>
                        </div>
                    </div>
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
