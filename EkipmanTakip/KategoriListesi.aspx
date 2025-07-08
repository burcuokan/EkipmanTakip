<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriListesi.aspx.cs" Inherits="EkipmanTakip.KategoriListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">KATEGORİ</th>
            <th scope="col">İŞLEMLER</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("KategoriID") %></td>
                        <td><%#Eval("KategoriAd") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/KategoriGuncelle.aspx?KategoriID="+Eval("KategoriID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/KategoriSil.aspx?KategoriID="+Eval("KategoriID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>

    </table>

</asp:Content>
