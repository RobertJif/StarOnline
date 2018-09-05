<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UpdateKategori.aspx.vb" Inherits="UAS_Controler_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 101%;
        }
        .auto-style2 {
            width: 183px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 100px;
        }
        .auto-style5 {
            width: 183px;
            height: 30px;
        }
        .auto-style7 {
            width: 455px;
        }
        .auto-style8 {
            height: 30px;
            width: 455px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Nama Kategori</td>
                <td class="auto-style7">
                    <asp:TextBox ID="boxNama" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="boxNama" ErrorMessage="Nama Produk Tidak Boleh Kosong"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">
        <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <br />
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style4">
                                <asp:Image ID="Image2" runat="server" Height="100px" Width="100px" />
                            </td>
                            <td>
                    <asp:TextBox ID="boxGambarku" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
        <br />
        <br />
                </td>
            </tr>
            <tr>
            &nbsp;</td>
                <td>
        <asp:Button ID="Upload" runat="server" Text="Submit" Width="97px" />
    
                </td>
            </tr>
        </table>
        <br />
        <asp:SqlDataSource ID="dataKategoriProduk" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT [id_kategori], [nama_kategori] FROM [Kategori]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:SqlDataSource ID="dataProduk" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT * FROM [Produk] where id_produk = @id_produkz" UpdateCommand="UPDATE Kategori SET nama_kategori = @nama, gambar = @gambar WHERE (id_kategori = @produkku)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id_produkz" QueryStringField="idproduknya" />
            </SelectParameters>
            <UpdateParameters>
                <asp:FormParameter FormField="boxNama" Name="nama" />
                <asp:ControlParameter ControlID="boxGambarku" Name="gambar" PropertyName="Text" />
                <asp:QueryStringParameter Name="produkku" QueryStringField="id_kategoriku" />
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
