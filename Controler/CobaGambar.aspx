<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CobaGambar.aspx.vb" Inherits="UAS_Controler_CobaGambar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id", "{0}") %>'></asp:Label>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT * FROM [Content]"></asp:SqlDataSource>
        <br />
        <br />
    
        <br />
    
    </div>
    </form>
</body>
</html>
