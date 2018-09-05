
Imports System.Data
Imports System.IO
Imports System.Web
Imports System.Configuration
Imports System.Web.UI
Imports System.Web.Security
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlDataReader
Partial Class UAS_Controler_Delelte
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        SqlDataSource1.Delete()
        Response.Redirect("ViewDeleteUpdateProduk.aspx")
    End Sub
End Class
