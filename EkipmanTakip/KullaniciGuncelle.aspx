<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KullaniciGuncelle.aspx.cs" Inherits="EkipmanTakip.KullaniciGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-group">
           <div>
               <asp:Label for="TxtKullaniciid" runat="server">Kullanıcı Id</asp:Label>
               <asp:TextBox ID="TxtKullaniciid" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
         <div>
               <asp:Label for="TxtKullaniciAd" runat="server">Kullanıcı Adı</asp:Label>
               <asp:TextBox ID="TxtKullaniciAd" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtKullaniciSoyad" runat="server">Kullanıcı Soyadı</asp:Label>
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
    <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle"  CssClass="btn btn-primary" OnClick="BtnGuncelle_Click" />


</asp:Content>
