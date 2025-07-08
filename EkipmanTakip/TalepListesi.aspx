<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TalepListesi.aspx.cs" Inherits="EkipmanTakip.TalepListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">AD SOYAD</th>
            <th scope="col">EKİPMAN ADI</th>
            <th scope="col">KATEGORİ</th>
            <th scope="col">AÇIKLAMA</th>
            <th scope="col">DURUM</th>
            <th scope="col">TARİH</th>
            <th scope="col">ONAY</th>
            <th scope="col">REDDET</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" OnItemCommand="Repeater1_ItemCommand" runat="server">

                <ItemTemplate>

                    <tr>
                        <td style="white-space: nowrap;"><%#Eval("KullaniciAdSoyad") %></td>
                        <td><%#Eval("Adı") %></td>
                        <td style="white-space: nowrap;"><%#Eval("KategoriAd") %></td>
                        <td><%#Eval("Aciklama") %></td>
                        <td><%#Eval("Durum") %></td>
                        <td style="white-space: nowrap;"><%# Eval("TalepTarihi", "{0:yyyy-MM-dd}") %></td>
                        <td>
                            <asp:Button runat="server" Text="Onayla" CssClass="btn btn-success"  
                            CommandName="Onayla" CommandArgument='<%# Eval("TalepID") %>' />                                                    
                        </td>
                        <td>
                            <asp:Button runat="server" Text="Reddet" CssClass="btn btn-danger"
                            CommandName="Reddet" CommandArgument='<%# Eval("TalepID") %>' />
                        </td>
                    </tr>
   
                </ItemTemplate>

            </asp:Repeater>

        </tbody>

    </table>

</asp:Content>



