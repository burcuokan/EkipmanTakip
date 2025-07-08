<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Ekipmanlar.aspx.cs" Inherits="EkipmanTakip.Ekipmanlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">EKİPMAN ADI</th>
            <th scope="col">Alım Tarihi</th>
            <th scope="col">DURUM</th>
            <th scope="col">TESLİM TARİHİ</th>
            <th scope="col">AÇIKLAMA</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("ZımmetID") %></td>
                        <td><%#Eval("EkipmanAd") %></td>
                        <td><%#Eval("ZımmetTarihi","{0:yyyy-MM-dd}") %></td>
                        <td><%#Eval("Durum") %></td>
                        <td><%#Eval("TeslimTarihi","{0:yyyy-MM-dd}") %></td>
                        <td><%#Eval("Aciklama") %></td>                       
                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>

    </table>


</asp:Content>
