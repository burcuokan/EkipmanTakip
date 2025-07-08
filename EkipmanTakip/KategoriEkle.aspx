<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriEkle.aspx.cs" Inherits="EkipmanTakip.KategoriEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="form-group">
      
         <div>
               <asp:Label for="TxtKategori" runat="server">Kategori Adı</asp:Label>
               <asp:TextBox ID="TxtKategori" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
         <br />

    <asp:Button ID="BtnKaydet" runat="server" Text="Kaydet"  CssClass="btn btn-info" OnClick="BtnKaydet_Click" />

</asp:Content>
