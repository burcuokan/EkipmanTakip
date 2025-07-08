<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KullaniciDefault.aspx.cs" Inherits="EkipmanTakip.KullaniciDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
    <div>
        <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control" Enabled="false">Ad</asp:TextBox>
    </div>
    <br />
    <div>
        <asp:TextBox ID="TxtSoyad" runat="server" CssClass="form-control" Enabled="false">Soyad</asp:TextBox>
    </div>
    <br />
     <div>
        <asp:TextBox ID="TxtTelefon" runat="server" CssClass="form-control" Enabled="false">Telefon</asp:TextBox>
    </div>
    <br />
     <div>
        <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control" Enabled="false">Mail</asp:TextBox>
    </div>
    <br />
     <div>
        <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Enabled="false">Şifre</asp:TextBox>
    </div>
    <br />
     <div>
        <asp:TextBox ID="TxtRol" runat="server" CssClass="form-control" Enabled="false">Rol</asp:TextBox>
    </div>
    <br />
     <div>
        <asp:TextBox ID="TxtGorev" runat="server" CssClass="form-control" Enabled="false">Görev</asp:TextBox>
    </div>
    <br />


</asp:Content>
