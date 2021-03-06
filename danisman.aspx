<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="danisman.aspx.cs" Inherits="otogalerisistemi.danisman" %>

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
    </style>

</head>

<body>

    <!-- navbar -->
    <form runat="server">
        <nav class="navbar-expand bg-dark navbar-expand-lg justify-content-between sticky-top ">
            <div class="container py-4">
                <div class="row">
                    <div class="col-6 col-md-6 ">
                        <a class="navbar-brand text-warning"><b>OTO GALERİ ŞUBE MÜDÜRLÜĞÜ SATIŞ DANIŞMANLIĞI</b></a>
                    </div>
                </div>
            </div>
        </nav>

        <!-- -->
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="mt-5">
                        <p><b>ARAÇLAR LİSTESİ</b></p>
                        <asp:GridView runat="Server" ID="GdAraclar" AutoGenerateColumns="False" CssClass="table table-bordered bg-light">
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
                </div>
            </div>
        </section>

      <%-- <section class="py-5 lightgray">
            <div class="container">
                <div class="row">
                    <p><b>ARAÇLAR LİSTESİ</b></p>
                    <asp:GridView runat="Server" ID="GdAraclar2" AutoGenerateColumns="False" CssClass="table table-bordered bg-light">
                        <Columns>
                            <asp:BoundField HeaderText="ARAÇ NUMARASI" DataField="aracno" />
                            <asp:BoundField HeaderText="SATILDIĞI ŞUBE" DataField="aracsube" />
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
            </div>
        </section>--%>
        <footer class="bg-dark py-5 pt-4" style="margin-top: 530px;"></footer>
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
