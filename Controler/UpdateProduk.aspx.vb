
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
            Response.Redirect("ViewDeleteUpdateProduk.aspx")
        Else

            Dim filereceived As String = FileUpload1.PostedFile.FileName
            Dim filename As String = Path.GetFileName(filereceived)
            Dim fileuploadpath As String = "C:\Users\Robert\Documents\Visual Studio 2015\Projects\WebSite1\GambarProduk\"
            fileku = "~/GambarProduk/" + filename

            FileUpload1.PostedFile.SaveAs(Path.Combine(fileuploadpath, filename))
            boxGambarku.Text = fileku

            dataProduk.Update()
            Response.Redirect("ViewDeleteUpdateProduk.aspx")
        End If


    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim idproduk As String
        idproduk = Request.QueryString("idproduknya")
        Dim koneksi As New SqlConnection
        Dim xDataset As New DataSet
        Dim xAdapter As New SqlDataAdapter
        Dim xCommand As New SqlCommand
        Dim xReader As SqlDataReader

        koneksi.ConnectionString = "Data Source='(localdb)\MSSQLLocalDB';Integrated Security=True;Pooling=False;Initial Catalog='StarJaya'"
        Dim strSql As String = "Select Produk.nama_produk,Produk.stok,Produk.harga,Produk.harga_modal,Produk.letak,Kategori.id_kategori,Produk.gambar from Produk,Kategori where id_produk=" + idproduk
        koneksi.Open()
        xCommand = New SqlCommand(strSql, koneksi)
        xReader = xCommand.ExecuteReader()
        xReader.Read()

        boxNama.Text = xReader.GetValue(0).ToString
        boxStok.Text = xReader.GetValue(1).ToString
        boxHarga.Text = xReader.GetValue(2).ToString
        boxHargaModal.Text = xReader.GetValue(3).ToString
        boxLetak.Text = xReader.GetValue(4).ToString
        Dim selectedku As Integer = Integer.Parse(xReader.GetValue(5).ToString)
        DropDownList1.SelectedIndex = selectedku + 1
        boxGambarku.Text = xReader.GetValue(6).ToString
        Image2.ImageUrl = xReader.GetValue(6).ToString
        Dim stokku As Integer

        xReader.Close()
        koneksi.Close()
    End Sub
End Class
