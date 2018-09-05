<%@ Page Language="VB" AutoEventWireup="false" CodeFile="InsertKategori - Copy.aspx.vb" Inherits="UAS_Controler_InsertKategori" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 257px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td>Nama Kategori</td>
                <td class="auto-style2">
        <asp:TextBox ID="NamaKategori" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NamaKategori" ErrorMessage="Nama Kategori Tidak Boleh kosong" ValidationGroup="kategori"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Gambar</td>
                <td class="auto-style2">
        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Gambar Tidak Boleh Kosong" ValidationGroup="kategori"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
        <asp:Button ID="ButtonInsertKategori" runat="server" Text="Tambah" Width="97px" ValidationGroup="kategori" />
    
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
                    <asp:TextBox ID="boxGambarku" runat="server" Visible="False"></asp:TextBox>
        <br />
        <br />
    
    </div>
        <asp:SqlDataSource ID="dataKategori" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT * FROM [Kategori]" DeleteCommand="DELETE FROM [Kategori] WHERE [id_kategori] = @id_kategori" InsertCommand="INSERT INTO Kategori(nama_kategori, gambar) VALUES (@nama_kategori,@gambar)" UpdateCommand="UPDATE Kategori SET nama_kategori =@nama_kategori, gambar = @gambar where id_kategori=@id_kategori">
            <DeleteParameters>
                <asp:Parameter Name="id_kategori" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="NamaKategori" Name="nama_kategori" PropertyName="Text" />
                <asp:ControlParameter ControlID="boxGambarku" Name="gambar" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nama_kategori" />
                <asp:Parameter Name="gambar" />
                <asp:Parameter Name="id_kategori" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_kategori" DataSourceID="dataKategori" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="id_kategori" HeaderText="ID Kategori" InsertVisible="False" ReadOnly="True" SortExpression="id_kategori" />
                <asp:BoundField DataField="nama_kategori" HeaderText="Nama Kategori" SortExpression="nama_kategori" />
                <asp:BoundField DataField="gambar" HeaderText="Url Gambar" SortExpression="gambar" ApplyFormatInEditMode="True" />
                <asp:ImageField DataImageUrlField="gambar" HeaderText="Gambar" ReadOnly="True">
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
                <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
    </form>
</body>
</html>
