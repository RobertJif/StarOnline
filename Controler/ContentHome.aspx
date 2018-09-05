<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContentHome.aspx.vb" Inherits="UAS_Controler_ContentHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                
                <asp:Label ID="nama_contentLabel" runat="server" Text='<%# Eval("nama_content") %>' />
                <br />
                Isi : <br />
                <asp:Label ID="contentLabel" runat="server" Text='<%# Eval("content") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT [nama_content], [content] FROM [Content]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
