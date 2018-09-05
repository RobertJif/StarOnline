<%@ Page Language="VB" AutoEventWireup="false" CodeFile="InsertProduk.aspx.vb" Inherits="UAS_Controler_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 86%;
        }
        .auto-style2 {
            width: 183px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Nama Produk</td>
                <td>
                    <asp:TextBox ID="boxNama" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="boxNama" ErrorMessage="Nama Produk Tidak Boleh Kosong" ValidationGroup="nilai"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Stok</td>
                <td>
                    <asp:TextBox ID="boxStok" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="boxStok" ErrorMessage="Stok Tidak Boleh Kosong" ValidationGroup="nilai"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="boxStok" ErrorMessage="Stok tidak boleh negatif" Operator="GreaterThanEqual" ValueToCompare="0" ValidationGroup="nilai"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Harga</td>
                <td>
                    <asp:TextBox ID="boxHarga" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="boxHarga" ErrorMessage="Harga Tidak Boleh Kosong" ValidationGroup="nilai"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Harga Modal</td>
                <td>
                    <asp:TextBox ID="boxHargaModal" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="boxHargaModal" ErrorMessage="Harga Modal Tidak Boleh Kosong" ValidationGroup="nilai"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Letak</td>
                <td>
                    <asp:TextBox ID="boxLetak" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="boxLetak" ErrorMessage="Letak Tidak Boleh Kosong" ValidationGroup="nilai"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Kategori</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dataKategoriProduk" DataTextField="nama_kategori" DataValueField="id_kategori">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
        <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
        <br />
                    <asp:TextBox ID="boxGambarku" runat="server" Visible="False"></asp:TextBox>
        <br />
        <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Kembali" Width="73px" />
                </td>
                <td>
        <asp:Button ID="Upload" runat="server" Text="Submit" Width="97px" ValidationGroup="nilai" />
    
                </td>
            </tr>
            <tr>
            &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:SqlDataSource ID="dataKategoriProduk" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT [id_kategori], [nama_kategori] FROM [Kategori]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:SqlDataSource ID="dataProduk" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" InsertCommand="INSERT INTO Produk(nama_produk, stok, harga, harga_modal, letak, id_kategori, gambar) VALUES (@nama_produk,@stok, @harga, @harga_modal, @letak, @id_kategori, @gambar)" SelectCommand="SELECT * FROM [Produk]" DeleteCommand="DELETE FROM Produk where id_kategori = @id_kategori" UpdateCommand="UPDATE Produk SET nama_produk =@nama_produk, stok = @stok, harga = @harga, harga_modal =@harga_modal, letak =@letak, id_kategori =@id_kategori">
            <DeleteParameters>
                <asp:Parameter Name="id_kategori" />
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
                <asp:Parameter Name="id_kategori" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Image ID="Image1" runat="server" />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>

</body>
</html>
