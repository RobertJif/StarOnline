
Imports System.Data
Imports System.IO

Imports System.Web
Imports System.Configuration
Imports System.Web.UI
Imports System.Web.Security
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts

Partial Class UAS_Controler_Default
    Inherits System.Web.UI.Page
    Private fileku As String



    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Upload.Click

        Dim msg = "Apakah anda yakin ?"
        Dim title = "Konfirmasi"
        Dim style = MsgBoxStyle.YesNo Or MsgBoxStyle.DefaultButton2 Or
            MsgBoxStyle.Question
        Dim response = MsgBox(msg, style, title)
        If response = MsgBoxResult.Yes Then

            Dim filereceived As String = FileUpload1.PostedFile.FileName
            Dim filename As String = Path.GetFileName(filereceived)
            Dim fileuploadpath As String = "C:\Users\Robert\Documents\Visual Studio 2015\Projects\WebSite1\GambarProduk\"
            fileku = "~/GambarProduk/" + filename

            FileUpload1.PostedFile.SaveAs(Path.Combine(fileuploadpath, filename))
            boxGambarku.Text = fileku
            dataProduk.Insert()
            boxNama.Text = ""
            boxStok.Text = ""
            boxHarga.Text = ""
            boxHargaModal.Text = ""
            boxLetak.Text = ""
            boxGambarku.Text = ""
            MsgBox("Insert Berhasil!", , title)
        Else

        End If


    End Sub

    Protected Sub Button1_Click1(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("ViewDeleteUpdateProduk.aspx")
    End Sub
End Class
