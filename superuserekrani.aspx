<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="superuserekrani.aspx.cs" Inherits="otogalerisistemi.superuserekrani" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <title>OTO GALERİ İşlemler</title>

    <style>
        
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
                    <asp:Button runat="server" ID="eklesilguncelle" CssClass="navbar-brand btn btn-dark text-warning" Text="ARAÇ/ŞUBE/ÇALIŞAN DÜZENLE" OnClick="eklesilguncelle_Click" />
                </div>
                <div class="col-3">
                    <asp:Button runat="server"  ID="subeler" CssClass="navbar-brand btn btn-dark text-white" Text="ŞUBELER" OnClick="subeler_Click"/>
                </div>
                <div class="col-3">
                    <asp:Button runat="server" ID="mudurekrani" CssClass="navbar-brand btn btn-dark text-white" Text="MÜDÜR EKRANLARI" OnClick="mudurekrani_Click" />
                </div>
            </div>
        </div>
    </nav>

    <!-- -->
    
        <div class="container">
            <div class="row">
                <div class="col-6 col-md-6">
                    <div class="form-check form-check-inline my-5">
                        <input class="form-check-input" type="radio" name="inlineRadioOptions" runat="server" id="inlineRadioArac" onclick="Arac_Click" value="option1" />
                        <label class="form-check-label" for="inlineRadioArac" id="aractext" runat="server"><b>ARAÇ</b></label>
                    </div>
                    <div class="form-check form-check-inline my-5 ">
                        <input class="form-check-input" type="radio" name="inlineRadioOptions" runat="server" id="inlineRadioSube" onclick="Sube_Click" value="option2" />
                        <label class="form-check-label" for="inlineRadioSube" id="subetext" runat="server"><b>ŞUBE</b></label>
                    </div>
                    <div class="form-check form-check-inline my-5 ">
                        <input class="form-check-input" type="radio" name="inlineRadioOptions" runat="server" id="inlineRadioCalisan" onclick="Calisan_Click" value="option3" />
                        <label class="form-check-label" for="inlineRadioCalisan" id="calisantext" runat="server"><b>ÇALIŞAN</b></label>
                    </div>
                </div>
            </div>
        </div>

        <div class="container mt-1">
            <div class="row">
                <div class="col-md-4 col-4 card">
                    <div class="form-group">
                        <label for="EkleSilaracno" id="aracnotext" runat="server"><b>Araç No</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="EkleSilaracno"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklearacsube" id="eklearacsubetext" runat="server"><b>Aracın Bulunduğu Şube</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklearacsube"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklemarka" id="eklemarkatext" runat="server"><b>Marka</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklemarka"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklemodel" id="eklemodeltext" runat="server"><b>Model</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklemodel"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklepaket" id="eklepakettext" runat="server"><b>Donanım Paketi</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklepaket"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="ekleyil" id="ekleyiltext" runat="server"><b>Yıl</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="ekleyil"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklerenk" id="eklerenktext" runat="server"><b>Renk</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklerenk"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="ekleyakit" id="ekleyakittext" runat="server"><b>Yakıt</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="ekleyakit"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklevites" id="eklevitestext" runat="server"><b>Vites</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklevites"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklekm" id="eklekmtext" runat="server"><b>KM</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklekm"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklekasatipi" id="eklekasatipitext" runat="server"><b>Kasa Tipi</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklekasatipi"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklemotorgucu" id="eklemotorgucutext" runat="server"><b>Motor Gücü</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklemotorgucu"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklemotorhacmi" id="eklemotorhacmitext" runat="server"><b>Motor Hacmi</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklemotorhacmi"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklealisfiyati" id="eklealisfiyatitext" runat="server"><b>Alış Fiyatı</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklealisfiyati"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4 col-4 card">
                    <div class="form-group">
                        <label for="EkleSilsubeadi" id="eklesubeaditext" runat="server"><b>Şube Adı</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="EkleSilsubeadi"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklesubeadres" id="eklesubeadrestext" runat="server"><b>Şube Adresi</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklesubeadres"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklemuduradi" id="eklemuduraditext" runat="server"><b>Şube Müdürü Adı</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklemuduradi"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklemudursoyadi" id="eklemudursoyaditext" runat="server"><b>Şube Müdürü Soyadı</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklemudursoyadi"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4 col-4 card">
                    <div class="form-group">
                        <label for="EkleSilcalisanadi" id="eklecalisanaditext" runat="server"><b>Ad</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklecalisanadi"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="EkleSilcalisansoyad" id="eklecalisansoyadtext" runat="server"><b>Soyad</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklecalisansoyad"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="EkleSilcalisanTC" id="EkleSilcalisanTCtext" runat="server"><b>Tc Kimlik No</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="EkleSilcalisanTC"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklecalisanSubesi" id="eklecalisanSubesitext" runat="server"><b>Şube</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklecalisanSubesi"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="eklemaas" id="eklemaastext" runat="server"><b>Maaş</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="eklemaas"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="ekleyetkirole" id="ekleunvantext" runat="server"><b>Unvan</b></label>
                        <asp:TextBox class="form-control" runat="server" ID="ekleyetkirole"></asp:TextBox>
                    </div>
                </div>
                <div class="mt-2 py-3">
                    <asp:Button type="submit" class="btn bg-dark text-white" runat="server" ID="eklebutton" OnClick="eklebutton_Click" Text="EKLE"></asp:Button>
                    <asp:Button type="submit" class="btn bg-dark text-white" runat="server" ID="silbutton" OnClick="silbutton_Click" Text="SİL"></asp:Button>
                </div>
            </div>

            <div class="container mt-1">
                <div class="row">
                    <div class="col-md-4 col-4 card">
                        <div>
                            <label for="guncellenecekaracno" id="guncellenecekaracnotext" runat="server"><b>Güncellenecek Aracın No'su</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncellenecekaracno"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleAracno" runat="server" id="guncelleAracnotext"><b>Araç No</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleAracno"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleAracsube" runat="server" id="guncelleAracsubetext"><b>Aracın Bulunduğu Şube</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleAracsube"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleMarka" runat="server" id="guncelleMarkatext"><b>Marka</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleMarka"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleModel" runat="server" id="guncelleModeltext"><b>Model</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleModel"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncellePaket" runat="server" id="guncellePakettext"><b>Donanım Paketi</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncellePaket"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleYil" runat="server" id="guncelleYiltext"><b>Yıl</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleYil"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleRenk" runat="server" id="guncelleRenktext"><b>Renk</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleRenk"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleYakit" runat="server" id="guncelleYakittext"><b>Yakit</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleYakit"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleVites" runat="server" id="guncelleVitestext"><b>Vites</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleVites"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleKM" runat="server" id="guncelleKMtext"><b>KM</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleKM"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleKasatipi" runat="server" id="guncelleKasatipitext"><b>Kasa Tipi</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleKasatipi"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleMotorgucu" runat="server" id="guncelleMotorgucutext"><b>Motor Gücü</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleMotorgucu"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleMotorhacmi" runat="server" id="guncelleMotorhacmitext"><b>Motor Hacmi</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleMotorhacmi"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleAlisfiyat" runat="server" id="guncelleAlisfiyattext"><b>Alış Fiyatı</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleAlisfiyat"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleSatisfiyat" runat="server" id="guncelleSatisfiyattext"><b>Satış Fiyatı</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleSatisfiyat"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4 col-4 card">
                        <div>
                            <label for="guncelleneceksube" id="guncelleneceksubetext" runat="server"><b>Güncellenecek Şubenin Adı</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleneceksube"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleSube" runat="server" id="guncelleSubetext"><b>Yeni Şube Adı</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleSube"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleSubeAdres" runat="server" id="guncelleSubeAdrestext"><b>Şube Adresi</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleSubeAdres"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleMuduradi" runat="server" id="guncelleMuduraditext"><b>Şube Müdürü Adı</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleMuduradi"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleMudursoyadi" runat="server" id="guncelleMudursoyaditext"><b>Şube Müdürü Soyadı</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleMudursoyadi"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4 col-4 card">
                        <div>
                            <label for="guncellenecekCalisanTC" id="guncellenecekCalisanTCtext" runat="server"><b>Güncellenecek Çalışanın TC'si</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncellenecekCalisanTC"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncellecalisanadi" runat="server" id="guncellecalisanaditext"><b>Çalışan Adı</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncellecalisanadi"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncellecalisanSoyadi" runat="server" id="guncellecalisanSoyaditext"><b>Çalışan Soyadı</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncellecalisanSoyadi"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncellecalisanTC" runat="server" id="guncellecalisanTCtext"><b>TC Kimlik No</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncellecalisanTC"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncellecalisanSubesi" runat="server" id="guncellecalisanSubesitext"><b>Çalıştığı Şube Adı</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncellecalisanSubesi"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncelleMaas" runat="server" id="guncelleMaastext"><b>Maaşı</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncelleMaas"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="guncellecUnvan" runat="server" id="guncellecUnvantext"><b>Çalışan Unvanı</b></label>
                            <asp:TextBox class="form-control" runat="server" ID="guncellecUnvan"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mt-2 py-3">
                        <asp:Button type="submit" class="btn bg-dark text-white" runat="server" ID="guncellebutton" OnClick="guncellebutton_Click" Text="GÜNCELLE"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
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
