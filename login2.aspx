<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login2.aspx.cs" Inherits="otogalerisistemi.login2" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <title>OTO GALERİ Login</title>

    <style>
        .body {
            background-image: url("img/background.jpg");
            background-repeat: no-repeat;
            background-position: center center;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>

</head>

<body class="body">

    <!-- navbar -->

    <nav class="navbar-expand bg-dark navbar-expand-lg justify-content-between sticky-top ">
        <div class="container py-4">
            <div class="row">
                <div class="col-6 col-md-6 ">
                    <a class="navbar-brand text-warning"><b>OTO GALERİ Sistem Giriş</b></a>
                </div>
            </div>
        </div>
    </nav>

    <form runat="server">
        <div class="container" style="width: 25%; background-color: grey; margin-top: 90px; border-radius: 10px">
            <div class="py-5">
                <h5 class="text-center text-warning py-3">OTO GALERİ SİSTEM KULLANICI GİRİŞİ</h5>
                <div class="form-group">
                    <label for="sube"><b>Şube</b></label>
                    <asp:TextBox class="form-control" runat="server" ID="sube"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="kadi"><b>Kullanıcı Adı</b></label>
                    <asp:TextBox class="form-control" runat="server" ID="kadi"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="psw"><b>Şifre</b></label>
                    <asp:TextBox class="form-control" runat="server" ID="psw"></asp:TextBox>
                </div>
                <div class="mt-2 py-3">
                    <asp:Button type="submit" class="btn bg-dark text-white form-control" runat="server" ID="loginbtn" OnClick="loginbtn_Click" Text="Giriş Yap"></asp:Button>
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
