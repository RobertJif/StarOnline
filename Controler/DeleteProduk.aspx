<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DeleteProduk.aspx.vb" Inherits="UAS_Controler_Delelte" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" DeleteCommand="DELETE FROM Produk where id_produk=@hapuz" SelectCommand="SELECT FROM Produk">
            <DeleteParameters>
                <asp:QueryStringParameter Name="hapuz" QueryStringField="deletenya" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
