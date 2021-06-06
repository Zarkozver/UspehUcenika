<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" Inherits="UspehUcenika.Pocetna" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tabelarni prikaz uspeha</title>
    <link href="stil/stil.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Tabelarni prikaz uspeha ucenika</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Razred" HeaderText="Razred" SortExpression="Razred" />
                    <asp:BoundField DataField="Odlican" HeaderText="Odlican" SortExpression="Odlican" />
                    <asp:BoundField DataField="Vrlodobar" HeaderText="Vrlodobar" SortExpression="Vrlodobar" />
                    <asp:BoundField DataField="Dobar" HeaderText="Dobar" SortExpression="Dobar" />
                    <asp:BoundField DataField="Dovoljan" HeaderText="Dovoljan" SortExpression="Dovoljan" />
                    <asp:BoundField DataField="Nedovoljan" HeaderText="Nedovoljan" SortExpression="Nedovoljan" />
                    <asp:BoundField DataField="ProsOcena" HeaderText="ProsOcena" SortExpression="ProsOcena" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VebMaturaConnectionString %>" SelectCommand="SELECT * FROM [Uspeh] ORDER BY [ProsOcena] DESC"></asp:SqlDataSource>

            <a href="Grafika.aspx">Graficki prikaz uspeha ucenika</a><br />
            <a href="O autoru.aspx">Podaci o autoru</a><br />
        </div>
    </form>
</body>
</html>
