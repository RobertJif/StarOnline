
Partial Class UAS_Controler_DeleteKategori
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        SqlDataSource1.Delete()
        Response.Redirect("InsertKategori.aspx")
    End Sub
End Class
