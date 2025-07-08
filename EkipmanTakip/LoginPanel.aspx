<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="EkipmanTakip.LoginPanel" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giriş Paneli</title>
    <style>
        body {
            background-color: #e0f7fa;
            font-family: Arial, sans-serif;
        }
        .login-container {
            max-width: 400px;
            margin: 100px auto;
            padding: 30px;
            background-color: white;
            border-radius: 10px; /*Köşeler yuvarlak*/
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            text-align: center;
        }
        .login-icon {
            font-size: 80px;
            color: #007bff;
        }
        .form-group {
            display: flex;
            align-items: center;
            margin-top: 15px;
            text-align: left;
        }
        .form-label {
            width: 100px;
            display: flex;
            justify-content: flex-start;
            font-weight: 600;
            color: #333;
        }
        .form-label span.label-text {
            min-width: 80px; 
            text-align: right;
            padding-right: 4px;
        }
        .form-label span.label-dot {
            width: 10px;
            text-align: left;
        }
        .form-control {
            flex: 1;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn-primary {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 1.5rem;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .text-danger {
            color: red;
            margin-top: 10px;
            display: block;
        }
        .forgot-link {
            margin-top: 1rem;
            text-align: center;
        }
    </style>
    <!-- Font Awesome ikonlarını kullanabilmek için CDN bağlantısı -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
</head>
<body>
    <form id="form1" runat="server">

        <!-- Giriş formu için ana kapsayıcı div -->
        <div class="login-container">
            <h2>Ekipman Takip Sistemi<br />Giriş Ekranı</h2>

              <!-- Kullanıcı ikonu, Font Awesome sınıfları ile -->
            <i class="login-icon fas fa-user-circle"></i>

            <!-- Rol seçimi için form grubu -->
            <div class="form-group">
                <label class="form-label" for="ddlRol">
                    <span class="label-text">Rol Seçiniz</span><span class="label-dot">:</span>
                </label>
                <asp:DropDownList ID="ddlRol" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
                    <asp:ListItem Text="Kullanıcı" Value="Kullanıcı"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label class="form-label" for="txtEmail">
                    <span class="label-text">E-Posta</span><span class="label-dot">:</span>
                </label>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control" />
            </div>

            <div class="form-group">
                <label class="form-label" for="txtPassword">
                    <span class="label-text">Şifre</span><span class="label-dot">:</span>
                </label>
                <asp:TextBox ID="TxtSifre" runat="server" TextMode="Password" CssClass="form-control" />
            </div>

            <asp:Button ID="btnGiris" runat="server" Text="Giriş Yap" CssClass="btn-primary" OnClick="btnGiris_Click" />

            <!-- Şifremi unuttum linki -->
            <div class="forgot-link">
                <asp:HyperLink ID="lnkSifreUnuttum" runat="server" NavigateUrl="~/SifreUnuttum.aspx">Şifremi Unuttum</asp:HyperLink>
                <asp:HyperLink ID="lnkKayıtOl" runat="server" NavigateUrl="~/KayıtOl.aspx">Kayıt Ol</asp:HyperLink>
            </div>

            <!-- Uyarı ve hata mesajı -->
            <asp:Label ID="lblMesaj" runat="server" CssClass="text-danger"></asp:Label>
        </div>
    </form>
</body>
</html>