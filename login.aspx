<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="otogalerisistemi.login" %>

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

 
    <form runat="server" id="form1">
        <h1>Login Page</h1>
        <table>
            <tr>
                <td>
                    username: 
                </td>
                <td>
                    <asp:TextBox runat="server" ID="kullaniciadi"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ID="RFV1" ControlToValidate="kullaniciadi" Display="Dynamic" ErrorMessage="Boş Bırakılamaz"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
                    <asp:TextBox runat="server" ID="sifre" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ID="RFV2" ControlToValidate="sifre" ErrorMessage="Boş Bırakılamaz"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Remember me?
                </td>
                <td>
                    <asp:CheckBox runat="server" ID="cboxPersist" />
                </td>
            </tr>
        </table>
        <asp:Button runat="server"  ID="loginbtn" OnClick="loginbtn_Click1" Text="Giriş Yap"/>
        <p>
            <asp:Label runat="server" ID="msg" ForeColor="Gray"></asp:Label>
        </p>
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
