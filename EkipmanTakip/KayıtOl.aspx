<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KayıtOl.aspx.cs" Inherits="EkipmanTakip.KayıtOl" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kayıt Ol</title>
    <style>
        body {
            background-color: #e0f7fa;
            font-family: Arial, sans-serif;
        }

        .register-container {
            max-width: 400px;
            margin: 100px auto;
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            text-align: center;
        }

        .register-icon {
            font-size: 80px;
            color: #007bff;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            margin-top: 15px;
            text-align: left;
        }

        .form-label {
            font-weight: 600;
            color: #333;
            margin-bottom: 5px;
        }

        .form-control {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 15px;
            width: 100%;
        }

        .btn-primary {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
        }

            .btn-primary:hover {
                background-color: #0056b3;
            }

        .text-danger {
            color: red;
            margin-top: 10px;
            display: block;
        }

        .register-link {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="register-container">
            <h2>Yeni Bir Hesap Oluşturun</h2>
            <i class="register-icon fas fa-user-circle"></i>

            <!-- Ad alanı -->
            <div class="form-group">
                <label class="form-label" runat="server" for="txtAd">Ad</label>
                <input type="text" id="txtAd" runat="server" class="form-control" placeholder="Adınızı girin" required />
            </div>

            <!-- Soyad alanı -->
            <div class="form-group">
                <label class="form-label" runat="server" for="txtSoyad">Soyad</label>
                <input type="text" id="txtSoyad" runat="server" class="form-control" placeholder="Soyadınızı girin" required />
            </div>

            <!-- Telefon alanı -->
            <div class="form-group">
                <label class="form-label" runat="server" for="txtTelefon">Telefon</label>
                <input type="tel" id="txtTelefon" runat="server" class="form-control" placeholder="Telefon numaranızı girin" required />
            </div>

            <!-- E-posta alanı -->
            <div class="form-group">
                <label class="form-label" runat="server" for="txtEmail">E-Posta</label>
                <input type="email" id="txtEmail" runat="server" class="form-control" placeholder="E-posta adresinizi girin" required />
            </div>

            <!-- Şifre alanı -->
            <div class="form-group">
                <label class="form-label" runat="server" for="txtSifre">Şifre</label>
                <input type="password" id="txtSifre" runat="server" class="form-control" placeholder="Şifrenizi girin" required />
            </div>

            <!-- Rol seçimi -->
            <div class="form-group">
                <label class="form-label" runat="server" for="rblRol">
                    <span class="label-text">Rol Seçiniz</span><span class="label-dot">:</span>
                </label>
                <asp:RadioButtonList ID="rblRol" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Kullanıcı" Value="Kullanıcı" Selected="True"></asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <!-- Görev alanı (Textbox) -->
            <div class="form-group">
                <label class="form-label" runat="server" for="txtGorev">Görev</label>
                <input type="text" id="txtGorev" runat="server" class="form-control" placeholder="Görev girin" required />
            </div>

            <!-- Kayıt ol butonu -->
            <asp:Button ID="BtnKaydet" runat="server" Text="Kayıt Ol" CssClass="btn-primary" OnClick="BtnKaydet_Click" />

            <!-- Giriş linki -->
            <div class="register-link">
                <asp:HyperLink ID="lnkGiris" runat="server" NavigateUrl="~/LoginPanel.aspx">Zaten üye misiniz? Giriş yapın</asp:HyperLink>
            </div>

            <!-- Hata mesajları -->
            <asp:Label ID="lblMesaj" runat="server" CssClass="text-danger"></asp:Label>
        </div>
    </form>
</body>
</html>
