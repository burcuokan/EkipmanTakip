<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ZimmetEkle.aspx.cs" Inherits="EkipmanTakip.ZimmetEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="form-group">
      
           <div>
               <asp:Label for="DropDownList1" runat="server">Kullanıcı Ad Soyad</asp:Label>
               <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
           </div>
           <br />
            <div>
               <asp:Label for="DropDownList2" runat="server">Ekipman Adı</asp:Label>
               <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
           </div>
           <br />
          <div>
               <asp:Label for="TxtZımmetTarihi" runat="server">Alım Tarihi</asp:Label>
               <asp:TextBox ID="TxtZımmetTarihi" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtDurum" runat="server">Durum</asp:Label>
               <asp:TextBox ID="TxtDurum" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtTarih" runat="server">Teslim Tarihi</asp:Label>
               <asp:TextBox ID="TxtTarih" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label for="TxtAciklama" runat="server">Açıklama</asp:Label>
               <asp:TextBox ID="TxtAciklama" runat="server" CssClass="form-control"></asp:TextBox>
           </div>         
  </div>
    <asp:Button ID="BtnKaydet" runat="server" Text="Kaydet"  CssClass="btn btn-info" OnClick="BtnKaydet_Click" />

</asp:Content>
