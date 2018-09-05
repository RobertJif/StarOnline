
Partial Class UAS_loginadmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        tanggal.Text = Date.Now.ToString()
    End Sub
End Class
