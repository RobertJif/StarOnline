
Partial Class UAS_Controler_ViewDeleteUpdateProduk
    Inherits System.Web.UI.Page

    Protected Sub tambah_Click(sender As Object, e As EventArgs) Handles tambah.Click
        Response.Redirect("~/UAS/Controler/InsertProduk.aspx")
    End Sub
End Class
