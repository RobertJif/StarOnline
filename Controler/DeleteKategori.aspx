<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DeleteKategori.aspx.vb" Inherits="UAS_Controler_DeleteKategori" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" DeleteCommand="DELETE FROM Kategori WHERE (id_kategori = @id_kategori)" SelectCommand="SELECT * FROM [Kategori]">
            <DeleteParameters>
                <asp:QueryStringParameter Name="id_kategori" QueryStringField="id_kategoriku" />
            </DeleteParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
