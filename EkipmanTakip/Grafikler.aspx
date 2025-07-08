<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="EkipmanTakip.Grafikler" %>
<%@ Register namespace="DevExpress.XtraCharts.Web" tagprefix="Web" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td>
                <asp:Chart ID="Chart1" runat="server" Height="344px" Width="479px">
                    <series>
                        <asp:Series Name="Kategoriler">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
            </td>
            <td>
                <asp:Chart ID="Chart5" runat="server" Height="344px" Width="479px">
                    <series>
                        <asp:Series ChartType="Pie" Name="Personeller" YValuesPerPoint="6">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Chart ID="Chart6" runat="server" Height="344px" Palette="EarthTones" Width="479px">
                    <series>
                        <asp:Series ChartType="Doughnut" Name="Görevler" LegendText="{A}">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
            </td>
            <td>
                <asp:Chart ID="Chart7" runat="server" Height="344px" Palette="EarthTones" Width="479px">
                    <series>
                        <asp:Series ChartType="RangeBar" Name="Durumlar" YValuesPerPoint="2">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
            </td>
        </tr>
    </table>
</asp:Content>
