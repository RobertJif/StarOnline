
Imports System.Data
Imports System.IO
Imports System.Web
Imports System.Configuration
Imports System.Web.UI
Imports System.Web.Security
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Partial Class UAS_Controler_InsertKategori
    Inherits System.Web.UI.Page
    Private fileku As String
    Protected Sub ButtonInsertKategori_Click(sender As Object, e As EventArgs) Handles ButtonInsertKategori.Click

        Dim filereceived As String = FileUpload1.PostedFile.FileName
        Dim filename As String = Path.GetFileName(filereceived)
        Dim fileuploadpath As String = "C:\Users\Robert\Documents\Visual Studio 2015\Projects\WebSite1\GambarProduk\"
        fileku = "~/GambarProduk/" + filename

        FileUpload1.PostedFile.SaveAs(Path.Combine(fileuploadpath, filename))
        boxGambarku.Text = fileku
        dataKategori.Insert()
    End Sub
End Class
