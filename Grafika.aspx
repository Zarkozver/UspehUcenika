<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grafika.aspx.cs" Inherits="UspehUcenika.Grafika" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grafika</title>
    <link href="stil/stil.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Graficki prikaz uspeha ucenika</h1>
        </div>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
            <series>
                <asp:Series Name="Series1" XValueMember="Razred" YValueMembers="ProsOcena">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VebMaturaConnectionString %>" SelectCommand="SELECT * FROM [Uspeh]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Razred"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Prosecna ocena"></asp:Label>

        <a href="Pocetna.aspx">Tabelarni prikaz uspeha ucenika</a><br />
        <a href="O autoru.aspx">Podaci o autoru</a><br />
    </form>
</body>
</html>
