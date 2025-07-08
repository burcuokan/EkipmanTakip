<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EkipmanTakip.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <table class="table table-bordered table-hover">    
        <tr>
            <th scope="col">ID</th>
            <th scope="col">AD</th>
            <th scope="col">SOYAD</th>
            <th scope="col">TELEFON</th>
            <th scope="col">MAİL</th>
            <th scope="col">ŞİFRE</th>
            <th scope="col">ROL</th>
            <th scope="col">GÖREV</th>
            <th scope="col">İŞLEMLER</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("KullaniciID") %></td>
                        <td><%#Eval("Ad") %></td>
                        <td><%#Eval("Soyad") %></td>
                        <td><%#Eval("Telefon") %></td>
                        <td><%#Eval("Mail") %></td>
                        <td><%#Eval("Sifre") %></td>
                        <td><%#Eval("Rol") %></td>
                        <td><%#Eval("Gorev") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/KullaniciGuncelle.aspx?KullaniciID="+Eval("KullaniciID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/KullaniciSil.aspx?KullaniciID="+Eval("KullaniciID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>

    </table>

</asp:Content>
