Imports System.Data
Imports System.Data.SqlClient
Partial Class UAS_Controler_ViewProdukCus
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim Judul As String
        Judul = Request.QueryString("judul")
        lbNamaKategori.Text = Judul
    End Sub
End Class
