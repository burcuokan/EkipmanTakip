<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ZimmetListesi.aspx.cs" Inherits="EkipmanTakip.ZimmetListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">AD SOYAD</th>
            <th scope="col">EKİPMAN ADI</th>
            <th scope="col">Alım Tarihi</th>
            <th scope="col">DURUM</th>
            <th scope="col">TESLİM TARİHİ</th>
            <th scope="col">AÇIKLAMA</th>
            <th scope="col">Güncelle</th>
            <th scope="col">Sil</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("ZımmetID") %></td>
                        <td style="white-space: nowrap;"><%#Eval("KullanıcıAdSoyad") %></td>
                        <td style="white-space: nowrap;"><%#Eval("EkipmanAd") %></td>
                        <td style="white-space: nowrap;"><%#Eval("ZımmetTarihi","{0:yyyy-MM-dd}") %></td>
                        <td style="white-space: nowrap;"><%#Eval("Durum") %></td>
                        <td style="white-space: nowrap;"><%#Eval("TeslimTarihi","{0:yyyy-MM-dd}") %></td>
                        <td><%#Eval("Aciklama") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/ZimmetGuncelle.aspx?ZımmetID="+Eval("ZımmetID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>                           
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/ZimmetSil.aspx?ZımmetID="+Eval("ZımmetID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>

    </table>

</asp:Content>
