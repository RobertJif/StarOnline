Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlDataReader
Partial Class UAS_Controler_Pemesanan
    Inherits System.Web.UI.Page
    Dim stokku As Integer


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim idproduk As String
        idproduk = Request.QueryString("idproduk")
        Dim koneksi As New SqlConnection
        Dim xDataset As New DataSet
        Dim xAdapter As New SqlDataAdapter
        Dim xCommand As New SqlCommand
        Dim xReader As SqlDataReader

        koneksi.ConnectionString = "Data Source='(localdb)\MSSQLLocalDB';Integrated Security=True;Pooling=False;Initial Catalog='StarJaya'"
        Dim strSql As String = "Select nama_produk,harga,stok from Produk where id_produk=" + idproduk
        koneksi.Open()
        xCommand = New SqlCommand(strSql, koneksi)
        xReader = xCommand.ExecuteReader()
        xReader.Read()

        tbNProduk.Text = xReader.GetValue(0).ToString
        tbHarga.Text = xReader.GetValue(1).ToString

        stokku = Integer.Parse(xReader.GetValue(2).ToString)
        ValidatorJumlah.ValueToCompare = stokku
        ValidatorJumlah.ErrorMessage = "Stok tersisa " + stokku.ToString
        ValidatorEmail.ErrorMessage = "Format email tidak sesuai"
        xReader.Close()
        koneksi.Close()


    End Sub



    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        NoRek2.Text = DropDownList1.SelectedItem.Value.ToString
    End Sub

    Protected Sub Beli_Click1(sender As Object, e As EventArgs)
        Dim jumlahbeli As Integer
        Dim hargabeli As Integer
        jumlahbeli = Integer.Parse(tbjumlah.Text.ToString)
        hargabeli = Integer.Parse(tbHarga.Text.ToString)
        Dim Totalku = jumlahbeli * hargabeli
        lbtotal.Text = Totalku.ToString
        lbtanggal.Text = DateTime.Now.ToString
        Dim dibeli As Integer = Integer.Parse(tbjumlah.Text)
        Dim msg = "Apakah anda yakin ?"
        Dim title = "Konfirmasi"
        Dim style = MsgBoxStyle.YesNo Or MsgBoxStyle.DefaultButton2 Or
            MsgBoxStyle.Question
        Dim response = MsgBox(msg, style, title)
        If response = MsgBoxResult.Yes Then

            SqlDataSource2.Insert()

            Dim hasilstok As Integer
            hasilstok = stokku - dibeli
            stokakhir.Text = hasilstok
            SqlDataSource3.Update()

            MsgBox("Pesanan berhasil ditambahkan!", , "Pemesanan")
            Server.Transfer("ViewKategori.aspx")
        Else

        End If

    End Sub
End Class
