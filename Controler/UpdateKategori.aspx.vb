
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
Partial Class UAS_Controler_Default
    Inherits System.Web.UI.Page
    Private fileku As String



    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Upload.Click
        If (FileUpload1.PostedFile.FileName = "") Then


            dataProduk.Update()
            Response.Redirect("InsertKategori.aspx")
        Else

            Dim filereceived As String = FileUpload1.PostedFile.FileName
            Dim filename As String = Path.GetFileName(filereceived)
            Dim fileuploadpath As String = "C:\Users\Robert\Documents\Visual Studio 2015\Projects\WebSite1\GambarProduk\"
            fileku = "~/GambarProduk/" + filename

            FileUpload1.PostedFile.SaveAs(Path.Combine(fileuploadpath, filename))
            boxGambarku.Text = fileku

            dataProduk.Update()
            Response.Redirect("InsertKategori.aspx")
        End If


    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim idproduk As String
        idproduk = Request.QueryString("id_kategoriku")
        Dim koneksi As New SqlConnection
        Dim xDataset As New DataSet
        Dim xAdapter As New SqlDataAdapter
        Dim xCommand As New SqlCommand
        Dim xReader As SqlDataReader

        koneksi.ConnectionString = "Data Source='(localdb)\MSSQLLocalDB';Integrated Security=True;Pooling=False;Initial Catalog='StarJaya'"
        Dim strSql As String = "Select nama_kategori,gambar from Kategori where id_kategori=" + idproduk
        koneksi.Open()
        xCommand = New SqlCommand(strSql, koneksi)
        xReader = xCommand.ExecuteReader()
        xReader.Read()

        boxNama.Text = xReader.GetValue(0).ToString
        boxGambarku.Text = xReader.GetValue(1).ToString
        Image2.ImageUrl = xReader.GetValue(1).ToString

        xReader.Close()
        koneksi.Close()
    End Sub
End Class
