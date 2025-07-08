<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TalepDurumları.aspx.cs" Inherits="EkipmanTakip.TalepDurumları" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">EKİPMAN ADI</th>
            <th scope="col">AÇIKLAMA</th>
            <th scope="col">DURUM</th>
            <th scope="col">TALEP TARİHİ</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("Adı") %></td>
                        <td><%#Eval("Aciklama") %></td>
                        <td><%#Eval("Durum") %></td>
                        <td style="white-space: nowrap;"><%#Eval("TalepTarihi","{0:yyyy-MM-dd}") %></td>                       
                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>

    </table>

</asp:Content>
