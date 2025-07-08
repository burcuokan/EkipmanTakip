<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriGuncelle.aspx.cs" Inherits="EkipmanTakip.KategoriGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="form-group">
           <div>
               <asp:Label for="TxtKategoriid" runat="server">ID</asp:Label>
               <asp:TextBox ID="TxtKategoriid" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
    <br />
         <div>
               <asp:Label for="TxtKategoriAd" runat="server">Kategori Adı</asp:Label>
               <asp:TextBox ID="TxtKategoriAd" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />

      <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle"  CssClass="btn btn-primary" OnClick="BtnGuncelle_Click" />

</asp:Content>
