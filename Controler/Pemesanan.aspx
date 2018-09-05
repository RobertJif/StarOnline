<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Pemesanan.aspx.vb" Inherits="UAS_Controler_Pemesanan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
        }
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            width: 181px;
        }
        .auto-style6 {
            height: 25px;
            width: 181px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 181px;
            height: 26px;
        }
        .auto-style9 {
            width: 235px;
        }
        .auto-style10 {
            height: 25px;
            width: 235px;
        }
        .auto-style11 {
            height: 26px;
            width: 235px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
    <table>
                    <tr>
                        <td class="auto-style3" colspan="3" style="font-size:27px">Form Pemesanan</td>
                        <td class="auto-style5" style="font-size:27px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Nama Produk</td>
                        <td>:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="tbNProduk" runat="server" Enabled="False" Width="220px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="lbtanggal" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Harga</td>
                        <td>:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="tbHarga" runat="server" Enabled="False" Width="220px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="lbtotal" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Jumlah Pembelian</td>
                        <td>:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="tbjumlah" runat="server" Width="220px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:CompareValidator ID="ValidatorJumlah" runat="server" ControlToValidate="tbjumlah" Operator="LessThan" Type="Integer"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="3" style="font-size:23px">Data Diri</td>
                        <td class="auto-style5" style="font-size:23px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Nama</td>
                        <td>:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="tbnama" runat="server" Width="220px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:RequiredFieldValidator ID="ValidatorNama" runat="server" ControlToValidate="tbnama"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Alamat</td>
                        <td class="auto-style7">:</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="tbalamat" runat="server" Width="220px"></asp:TextBox>
                        </td>
                        <td class="auto-style8">
                            <asp:RequiredFieldValidator ID="ValidatorAlamat" runat="server" ControlToValidate="tbalamat"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Email</td>
                        <td class="auto-style4">:</td>
                        <td class="auto-style10">
                            <asp:TextBox ID="tbemail" runat="server" Width="220px"></asp:TextBox>
                        </td>
                        <td class="auto-style6">
                            <asp:RegularExpressionValidator ID="ValidatorEmail" runat="server" ControlToValidate="tbemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Bank</td>
                        <td>:</td>
                        <td class="auto-style9">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nama_bank" DataValueField="kode_bank">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">No. Rekening</td>
                        <td class="auto-style7">:</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="NoRek2" runat="server" Width="40px" Enabled="False"></asp:TextBox>
                            <asp:TextBox ID="NoRek3" runat="server" Width="172px"></asp:TextBox>
                        </td>
                        <td class="auto-style8">
                            <asp:RequiredFieldValidator ID="ValidatorNoRek" runat="server" ControlToValidate="NoRek3"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style9">
                            <asp:Button ID="Beli" runat="server" Text="Submit" Width="101px" OnClick="Beli_Click1" />
                        </td>
                        <td class="auto-style5">
                            &nbsp;</td>
                    </tr>
                </table>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT * FROM [Bank]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" InsertCommand="INSERT INTO Transaksi(id_produk, nama_pelanggan, jumlah, total, waktu_pembelian, alamat, email,status) VALUES (@id_produk,@nama_pelanggan,@jumlah,@total,@waktu_pembelian,@alamat,@email,@status)" SelectCommand="SELECT * FROM [Transaksi]">
            <InsertParameters>
                <asp:QueryStringParameter Name="id_produk" QueryStringField="idproduk" />
                <asp:ControlParameter ControlID="tbnama" Name="nama_pelanggan" PropertyName="Text" />
                <asp:ControlParameter ControlID="tbjumlah" Name="jumlah" PropertyName="Text" />
                <asp:ControlParameter ControlID="lbtotal" Name="total" PropertyName="Text" />
                <asp:ControlParameter ControlID="lbtanggal" Name="waktu_pembelian" PropertyName="Text" />
                <asp:ControlParameter ControlID="tbalamat" Name="alamat" PropertyName="Text" />
                <asp:ControlParameter ControlID="tbemail" Name="email" PropertyName="Text" />
                <asp:ControlParameter ControlID="Labelstatus" DefaultValue="Pending" Name="status" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT * FROM [Produk]" UpdateCommand="UPDATE Produk SET stok =@stokakhir where id_produk=@idupdate">
            <UpdateParameters>
                <asp:ControlParameter ControlID="stokakhir" DefaultValue="0" Name="stokakhir" PropertyName="Text" />
                <asp:QueryStringParameter Name="idupdate" QueryStringField="idproduk" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Labelstatus" runat="server" Text="Pending" Visible="False"></asp:Label>
        <asp:Label ID="stokakhir" runat="server" Visible="False"></asp:Label>
    </form>
</body>
</html>
