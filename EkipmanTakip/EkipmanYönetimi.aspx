<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EkipmanYönetimi.aspx.cs" Inherits="EkipmanTakip.EkipmanYönetimi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">EKİPMAN ADI</th>
            <th scope="col">MARKA</th>
            <th scope="col">MODEL</th>
            <th scope="col">SERİ NO</th>
            <th scope="col">DURUM</th>
            <th scope="col">KATEGORİ</th>
            <th scope="col">ALIM TARİHİ</th>
            <th scope="col">GÜNCELLE</th>
            <th scope="col">SİL</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("EkipmanID") %></td>
                        <td><%#Eval("Adı") %></td>
                        <td><%#Eval("Marka") %></td>
                        <td><%#Eval("Model") %></td>
                        <td><%#Eval("SeriNo") %></td>
                        <td><%#Eval("Durum") %></td>
                        <td><%#Eval("KategoriAd") %></td>
                        <td><%#Eval("AlımTarihi") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/EkipmanGuncelle.aspx?EkipmanID="+Eval("EkipmanID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>                           
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/EkipmanSil.aspx?EkipmanID="+Eval("EkipmanID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>

    </table>

</asp:Content>
