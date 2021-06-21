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
                <div class="col-3" style="text-align:right">
                    <asp:Button runat="server" ID="mudurekrani3" CssClass="navbar-brand btn btn-dark text-white" Text="MÜDÜR EKRANLARI" OnClick="mudurekrani3_Click" />
                </div>
            </div>
        </div>
    </nav>

    <!-- -->
 
        <div class="container">
            <div class="row">
                <div class="mt-5">
                    <p><b>ARAÇLAR LİSTESİ</b></p>
                    <asp:GridView runat="Server" ID="GdAraclar" AutoGenerateColumns="False" CssClass="table table-bordered">
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
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
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
