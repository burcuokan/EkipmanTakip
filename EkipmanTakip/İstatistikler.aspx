<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="İstatistikler.aspx.cs" Inherits="EkipmanTakip.İstatistikler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>İstatistikler</h2>
    <div class="form-group">

        <div>
            <asp:TextBox ID="Textbox1" runat="server" CssClass="form-control" BackColor="LightBlue" Enabled="false">Toplam Kullanıcı Sayısı: 20</asp:TextBox>
        </div>
        <br />

        <div>
            <asp:TextBox ID="Textbox2" runat="server" CssClass="form-control" BackColor="LightPink" Enabled="false">Toplam Admin Sayısı: 10</asp:TextBox>
        </div>
        <br />

        <div>
            <asp:TextBox ID="Textbox3" runat="server" CssClass="form-control" BackColor="PaleGreen" Enabled="false">Toplam Kategori Sayısı: 10</asp:TextBox>
        </div>
        <br />

        <div>
            <asp:TextBox ID="Textbox4" runat="server" CssClass="form-control" BackColor="Khaki" Enabled="false">Toplam Ekipman Sayısı: 20</asp:TextBox>
        </div>
        <br />

        <div>
            <asp:TextBox ID="Textbox5" runat="server" CssClass="form-control" BackColor="LightSalmon" Enabled="false">Kullanımda Olan Ekipman Sayısı: 10</asp:TextBox>
        </div>
        <br />

        <div>
            <asp:TextBox ID="Textbox6" runat="server" CssClass="form-control" BackColor="LightBlue" Enabled="false">Boşta Olan Ekipman Sayısı: 8</asp:TextBox>
        </div>
        <br />

        <div>
            <asp:TextBox ID="Textbox7" runat="server" CssClass="form-control" BackColor="LightPink" Enabled="false">Arızalı Olan Ekipman Sayısı: 8</asp:TextBox>
        </div>
        <br />

        <div>
            <asp:TextBox ID="Textbox8" runat="server" CssClass="form-control" BackColor="PaleGreen" Enabled="false">En Fazla Zimmetlenen Ekipman: Tablet</asp:TextBox>
        </div>
        <br />

        <div>
            <asp:TextBox ID="Textbox9" runat="server" CssClass="form-control" BackColor="Khaki" Enabled="false">Zimmet Süresi Geçen Ekipman: Mouse</asp:TextBox>
        </div>
        <br />

        <div>
            <asp:TextBox ID="Textbox10" runat="server" CssClass="form-control" BackColor="LightSalmon" Enabled="false">En Fazla Zimmetlenen Kategori: Yazıcı</asp:TextBox>
        </div>
        <br />

        <div>
            <asp:TextBox ID="Textbox11" runat="server" CssClass="form-control" BackColor="LightBlue" Enabled="false">En Fazla Görev Üstlenen Meslek: 15</asp:TextBox>
        </div>
        <br />

        <div>
            <asp:TextBox ID="Textbox12" runat="server" CssClass="form-control" BackColor="LightPink" Enabled="false">Toplam Meslek Sayısı: Yazılımcı</asp:TextBox>
        </div>
        <br />

        </div>
</asp:Content>
