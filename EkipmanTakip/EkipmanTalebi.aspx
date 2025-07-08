<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="EkipmanTalebi.aspx.cs" Inherits="EkipmanTakip.EkipmanTalebi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-group">

        <asp:Label for="ddlEkipman" runat="server" Text="Label">Ekipman Seçiniz:</asp:Label>
        <asp:DropDownList ID="ddlEkipman" runat="server" CssClass="form-control"></asp:DropDownList>
        <br />

        <asp:Label for="ddlKategori" runat="server" Text="Kategori Seçiniz:"></asp:Label>
        <asp:DropDownList ID="ddlKategori" runat="server" CssClass="form-control"></asp:DropDownList>
        <br />

        <asp:Label for="TxtAciklama" runat="server" Text="Açıklama:"></asp:Label>
        <asp:TextBox ID="TxtAciklama" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control"></asp:TextBox>
        <br />

        <asp:Button ID="BtnTalepGonder" runat="server" Text="Talebi Gönder" CssClass="btn btn-primary" OnClick="BtnTalepGonder_Click"/>

    </div>

</asp:Content>
