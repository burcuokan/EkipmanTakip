<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KullaniciEkle.aspx.cs" Inherits="EkipmanTakip.KullaniciEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="form-group">
       <h2>Admin Kullanıcı Ekleme Sayfası</h2>
      
         <div>
               <asp:Label for="TxtKullaniciAd" runat="server">Adı</asp:Label>
               <asp:TextBox ID="TxtKullaniciAd" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtKullaniciSoyad" runat="server">Soyadı</asp:Label>
               <asp:TextBox ID="TxtKullaniciSoyad" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtTelefon" runat="server">Telefon</asp:Label>
               <asp:TextBox ID="TxtTelefon" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtMail" runat="server">Mail</asp:Label>
               <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtSifre" runat="server">Şİfre</asp:Label>
               <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtRol" runat="server">Rol</asp:Label>
               <asp:TextBox ID="TxtRol" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtGorev" runat="server">Görev</asp:Label>
               <asp:TextBox ID="TxtGorev" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
  </div>
    <asp:Button ID="BtnKaydet" runat="server" Text="Kaydet"  CssClass="btn btn-info" OnClick="BtnKaydet_Click"/>

</asp:Content>
