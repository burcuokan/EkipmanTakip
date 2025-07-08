<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="EkipmanTakip.Ayarlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-group">

        <h2>Admin Ayarları</h2>

        <div>
            <asp:HiddenField ID="HiddenKullaniciID" runat="server" />
        </div>

        <div>
            <asp:Label for="TxtAd" runat="server">Adınız:</asp:Label>
            <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtSoyad" runat="server">Soyadınız:</asp:Label>
            <asp:TextBox ID="TxtSoyad" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtTelefon" runat="server">Telefon:</asp:Label>
            <asp:TextBox ID="TxtTelefon" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtMail" runat="server">Mail:</asp:Label>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtSifre" runat="server">Şifre:</asp:Label>
            <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />

        <asp:Button ID="BtnGuncelle" runat="server" Text="Bilgileri Güncelle" CssClass="btn btn-primary" OnClick="BtnGuncelle_Click" />
        <br />

        <div style="margin-top:15px;">
            <asp:Label ID="LblMesaj" runat="server" Visible="false" CssClass="alert alert-success" Text="Label"></asp:Label>
        </div>


    </div>

</asp:Content>
