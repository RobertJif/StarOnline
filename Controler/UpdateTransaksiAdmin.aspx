<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UpdateTransaksiAdmin.aspx.vb" Inherits="UAS_Controler_UpdateTransaksiAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 89%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_transaksi" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id_transaksi" HeaderText="Id_transaksi" InsertVisible="False" ReadOnly="True" SortExpression="Id_transaksi" />
                <asp:BoundField DataField="nama_pelanggan" HeaderText="nama_pelanggan" SortExpression="nama_pelanggan" />
                <asp:BoundField DataField="nama_produk" HeaderText="nama_produk" SortExpression="nama_produk" />
                <asp:BoundField DataField="jumlah" HeaderText="jumlah" SortExpression="jumlah" />
                <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                <asp:BoundField DataField="waktu_pembelian" HeaderText="waktu_pembelian" SortExpression="waktu_pembelian" />
                <asp:BoundField DataField="alamat" HeaderText="alamat" SortExpression="alamat" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                <asp:TemplateField HeaderText="Aksi">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:Button ID="Lunas" runat="server" Text="Lunas" Width="70px" PostBackUrl='<%# Eval("id_transaksi", "~/UAS/Controler/LunasBatal.aspx?iddatangnya={0}&statusnya=Lunas") %>'/>
                                </td>
                                <td>
                                    <asp:Button ID="Batal" runat="server" Text="Batal" Width="70px" PostBackUrl='<%# Eval("id_transaksi", "~/UAS/Controler/LunasBatal.aspx?iddatangnya={0}&statusnya=Batal") %>'/>
                                </td>
                                <td>
                                    <asp:Button ID="Pending" runat="server" Text="Pending" Width="70px" PostBackUrl='<%# Eval("id_transaksi", "~/UAS/Controler/LunasBatal.aspx?iddatangnya={0}&statusnya=Pending") %>'/>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <sortedascendingcellstyle backcolor="#F5F7FB" />
            <sortedascendingheaderstyle backcolor="#6D95E1" />
            <sorteddescendingcellstyle backcolor="#E9EBEF" />
            <sorteddescendingheaderstyle backcolor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT Transaksi.Id_transaksi, Transaksi.nama_pelanggan, Transaksi.jumlah, Transaksi.total, Transaksi.waktu_pembelian, Transaksi.alamat, Transaksi.email, Transaksi.status, Produk.nama_produk FROM Transaksi INNER JOIN Produk ON Transaksi.id_produk = Produk.id_produk"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
