<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub

    Protected Sub tambah_Click(sender As Object, e As EventArgs)
        Response.Redirect("~/UAS/Controler/InsertProduk.aspx")
    End Sub
</script>
<head runat="server">
    <title></title>
</head>
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_produk" DataSourceID="dataProduk" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id_produk" HeaderText="id_produk" InsertVisible="False" ReadOnly="True" SortExpression="id_produk" />
                <asp:BoundField DataField="nama_produk" HeaderText="Nama Produk" SortExpression="nama_produk" />
                <asp:BoundField DataField="nama_kategori" HeaderText="Kategori" SortExpression="nama_kategori" ReadOnly="True" />
                <asp:BoundField DataField="stok" HeaderText="Stok" SortExpression="stok" />
                <asp:BoundField DataField="harga" HeaderText="Harga" SortExpression="harga" />
                <asp:BoundField DataField="harga_modal" HeaderText="Harga Modal" SortExpression="harga_modal" />
                <asp:BoundField DataField="letak" HeaderText="Letak" SortExpression="letak" />
                <asp:ImageField DataImageUrlField="gambar" HeaderText="Gambar">
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
                <asp:TemplateField HeaderText="Aksi">
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" PostBackUrl='<%# Eval("id_produk", "~/UAS/Controler/UpdateProduk.aspx?idproduknya={0}") %>' Text="Edit" />
                        <asp:Button ID="Button3" runat="server" PostBackUrl='<%# Eval("id_produk", "~/UAS/Controler/DeleteProduk.aspx?deletenya={0}") %>' Text="Hapus" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:Button ID="Button1" runat="server" Text='<%# Eval("nama_produk") %>' />
            </EmptyDataTemplate>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="dataProduk" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" InsertCommand="INSERT INTO Produk(nama_produk, stok, harga, harga_modal, letak, id_kategori, gambar) VALUES (@nama_produk,@stok, @harga, @harga_modal, @letak, @id_kategori, @gambar)" SelectCommand="SELECT Produk.id_produk, Produk.nama_produk, Produk.stok, Produk.harga, Produk.harga_modal, Produk.letak, Produk.gambar, Kategori.nama_kategori FROM Produk INNER JOIN Kategori ON Produk.id_kategori = Kategori.id_kategori" DeleteCommand="DELETE FROM Produk where id_produk = @id_produk" UpdateCommand="UPDATE Produk SET nama_produk =@nama_produk, stok = @stok, harga = @harga, harga_modal =@harga_modal, letak =@letak where id_produk = @id_produk">
            <DeleteParameters>
                <asp:Parameter Name="id_produk" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="boxNama" Name="nama_produk" PropertyName="Text" />
                <asp:ControlParameter ControlID="boxStok" DefaultValue="0" Name="stok" PropertyName="Text" />
                <asp:ControlParameter ControlID="boxHarga" DefaultValue="0" Name="harga" PropertyName="Text" />
                <asp:ControlParameter ControlID="boxHargaModal" DefaultValue="0" Name="harga_modal" PropertyName="Text" />
                <asp:ControlParameter ControlID="boxLetak" DefaultValue="" Name="letak" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="id_kategori" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="boxGambarku" Name="gambar" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nama_produk" />
                <asp:Parameter Name="stok" />
                <asp:Parameter Name="harga" />
                <asp:Parameter Name="harga_modal" />
                <asp:Parameter Name="letak" />
                <asp:Parameter Name="id_produk" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:Button ID="tambah" runat="server" Text="Tambah Produk" Width="151px" OnClick="tambah_Click" />
    
    </div>
    </form>
</body>
</html>
