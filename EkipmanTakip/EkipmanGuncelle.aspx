<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EkipmanGuncelle.aspx.cs" Inherits="EkipmanTakip.EkipmanGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="form-group">
           <div>
               <asp:Label for="TxtEkipmanid" runat="server">Ekipman Id</asp:Label>
               <asp:TextBox ID="TxtEkipmanid" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtAd" runat="server">Ekipman Adı</asp:Label>
               <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtMarka" runat="server">Marka</asp:Label>
               <asp:TextBox ID="TxtMarka" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtModel" runat="server">Model</asp:Label>
               <asp:TextBox ID="TxtModel" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtSerino" runat="server">Seri No</asp:Label>
               <asp:TextBox ID="TxtSerino" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtDurum" runat="server">Durum</asp:Label>
               <asp:TextBox ID="TxtDurum" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtKategori" runat="server">Kategori</asp:Label>
               <asp:TextBox ID="TxtKategori" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
         <br />
          <div>
               <asp:Label for="TxtTarih" runat="server">Alım tarihi</asp:Label>
               <asp:TextBox ID="TxtTarih" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
  </div>
    <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle"  CssClass="btn btn-primary" OnClick="BtnGuncelle_Click"  />

</asp:Content>
