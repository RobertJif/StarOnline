<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)
        SqlDataSource1.Update()
        Response.Redirect("UpdateTransaksiAdmin.aspx")
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT * FROM [Transaksi]" UpdateCommand="UPDATE Transaksi SET status =@statusdatang where id_transaksi=@iddatang">
            <UpdateParameters>
                <asp:QueryStringParameter DefaultValue="Pending" Name="statusdatang" QueryStringField="statusnya" />
                <asp:QueryStringParameter DefaultValue="" Name="iddatang" QueryStringField="iddatangnya" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
