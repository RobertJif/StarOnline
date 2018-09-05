<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ViewProdukPerKategori.aspx.vb" Inherits="UAS_Controler_ViewProdukCus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lbNamaKategori" runat="server" Font-Size="50pt"></asp:Label>
   <!-- <div>
    <table class="auto-style1">
            <tr>
                <td><asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" ItemStyle-HorizontalAlign="Center" DataKeyField="id_produk" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
            <ItemTemplate>
                
            
                &nbsp;<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("gambar") %>' Width="200px" Height="200px"/>
                <br />
                <br />
                <asp:Label ID="nama_produkLabel" runat="server" Text='<%# Eval("nama_produk") %>' />
                <br />
                <br />
                <asp:Label ID="hargaLabel" runat="server" Text='<%# Eval("harga", "Rp.{0},-") %>' />
<br />
                <asp:Label ID="stokLabel" runat="server" Text='<%# Eval("stok", "Stok Tersisa : {0}") %>' />
                
                <br />
                <asp:Button ID="Button1" runat="server" Text="Beli" PostBackUrl='<%# Eval("id_produk", "~/UAS/Controler/Pemesanan.aspx?idproduk={0}") %>' />
                <br />
            </ItemTemplate>
            
        </asp:DataList></td>



               




           
            </tr>
        </table>
        </div>-->
       <asp:ListView ID="ListView1" runat="server" DataKeyNames="id_produk,id_kategori" DataSourceID="SqlDataSource1" GroupItemCount="3" ItemStyle-HorizontalAlign="Center" >
            <AlternatingItemTemplate>
                <td runat="server" style="float:right">
                     &nbsp;<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("gambar") %>' Width="200px" Height="200px"/>
                <br />
                <br />
                <asp:Label ID="nama_produkLabel" runat="server" Text='<%# Eval("nama_produk") %>' />
                <br />
                <br />
                <asp:Label ID="hargaLabel" runat="server" Text='<%# Eval("harga", "Rp.{0},-") %>' />
<br />
                <asp:Label ID="stokLabel" runat="server" Text='<%# Eval("stok", "Stok Tersisa : {0}") %>' />
                
                <br />
                <asp:Button ID="Button1" runat="server" Text="Beli" PostBackUrl='<%# Eval("id_produk", "~/UAS/Controler/Pemesanan.aspx?idproduk={0}") %>' />
                <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="align-items:center">
                    &nbsp;<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("gambar") %>' Width="200px" Height="200px"/>
                <br />
                <br />
                <asp:Label ID="nama_produkLabel" runat="server" Text='<%# Eval("nama_produk") %>' />
                <br />
                <br />
                <asp:Label ID="hargaLabel" runat="server" Text='<%# Eval("harga", "Rp.{0},-") %>' />
<br />
                <asp:Label ID="stokLabel" runat="server" Text='<%# Eval("stok", "Stok Tersisa : {0}") %>' />
                
                <br />
                <asp:Button ID="Button1" runat="server" Text="Beli" PostBackUrl='<%# Eval("id_produk", "~/UAS/Controler/Pemesanan.aspx?idproduk={0}") %>' />
                <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="align-items:center">
                    <tr>
                        <td>Produk tidak ditemukan</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="align-items:center">
                    &nbsp;<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("gambar") %>' Width="200px" Height="200px"/>
                <br />
                <br />
                <asp:Label ID="nama_produkLabel" runat="server" Text='<%# Eval("nama_produk") %>' />
                <br />
                <br />
                <asp:Label ID="hargaLabel" runat="server" Text='<%# Eval("harga", "Rp.{0},-") %>' />
<br />
                <asp:Label ID="stokLabel" runat="server" Text='<%# Eval("stok", "Stok Tersisa : {0}") %>' />
                
                <br />
                <asp:Button ID="Button1" runat="server" Text="Beli" PostBackUrl='<%# Eval("id_produk", "~/UAS/Controler/Pemesanan.aspx?idproduk={0}") %>' />
                <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                
                <td runat="server" style="align-items:center">
                     &nbsp;<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("gambar") %>' Width="200px" Height="200px"/>
                <br />
                <br />
                <asp:Label ID="nama_produkLabel" runat="server" Text='<%# Eval("nama_produk") %>' />
                <br />
                <br />
                <asp:Label ID="hargaLabel" runat="server" Text='<%# Eval("harga", "Rp.{0},-") %>' />
<br />
                <asp:Label ID="stokLabel" runat="server" Text='<%# Eval("stok", "Stok Tersisa : {0}") %>' />
                
                <br />
                <asp:Button ID="Button1" runat="server" Text="Beli" PostBackUrl='<%# Eval("id_produk", "~/UAS/Controler/Pemesanan.aspx?idproduk={0}") %>' />
                <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="align-items:center">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">
                    &nbsp;<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("gambar") %>' Width="200px" Height="200px"/>
                <br />
                <br />
                <asp:Label ID="nama_produkLabel" runat="server" Text='<%# Eval("nama_produk") %>' />
                <br />
                <br />
                <asp:Label ID="hargaLabel" runat="server" Text='<%# Eval("harga", "Rp.{0},-") %>' />
<br />
                <asp:Label ID="stokLabel" runat="server" Text='<%# Eval("stok", "Stok Tersisa : {0}") %>' />
                
                <br />
                <asp:Button ID="Button1" runat="server" Text="Beli" PostBackUrl='<%# Eval("id_produk", "~/UAS/Controler/Pemesanan.aspx?idproduk={0}") %>' />
                <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>


        <br />
        <br />
        <br />


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT Produk.nama_produk, Produk.id_produk, Produk.harga, Produk.stok, Produk.gambar, Kategori.id_kategori FROM Produk INNER JOIN Kategori ON Produk.id_kategori = Kategori.id_kategori WHERE (Kategori.nama_kategori = @lbidkategori)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lbNamaKategori" Name="lbidkategori" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        

    </form>
</body>
</html>
