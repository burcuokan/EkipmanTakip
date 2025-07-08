<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EkipmanEkle.aspx.cs" Inherits="EkipmanTakip.EkipmanEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="form-group">
      
         <div>
               <asp:Label for="TxtEkipmanAd" runat="server">Ekipman Adı</asp:Label>
               <asp:TextBox ID="TxtEkipmanAd" runat="server" CssClass="form-control"></asp:TextBox>
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
               <asp:Label for="TxtSeriNo" runat="server">Seri No</asp:Label>
               <asp:TextBox ID="TxtSeriNo" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtDurum" runat="server">Durum</asp:Label>
               <asp:TextBox ID="TxtDurum" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="DropDownList1" runat="server">Kategori</asp:Label>
               <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
           </div>
           <br />
           <div>
               <asp:Label for="TxtTarih" runat="server">Tarih</asp:Label>
               <asp:TextBox ID="TxtTarih" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
  </div>
    <asp:Button ID="BtnKaydet" runat="server" Text="Kaydet"  CssClass="btn btn-info" OnClick="BtnKaydet_Click"  />


</asp:Content>
