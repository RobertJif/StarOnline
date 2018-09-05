
Partial Class UAS_faq
    Inherits System.Web.UI.Page

    

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        A1.Visible = False
        A2.Visible = False
        A3.Visible = False
        A4.Visible = False
        A5.Visible = False
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles buka1.Click
        A1.Visible = True
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles tutup1.Click
        A1.Visible = False
    End Sub

    Protected Sub buka2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles buka2.Click
        A2.Visible = True
    End Sub

    Protected Sub tutup2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles tutup2.Click
        A2.Visible = False
    End Sub


    Protected Sub buka3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles buka3.Click
        A3.Visible = True
    End Sub

    Protected Sub tutup3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles tutup3.Click
        A3.Visible = False
    End Sub

    Protected Sub buka4_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles buka4.Click
        A4.Visible = True
    End Sub

    Protected Sub tutup4_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles tutup4.Click
        A4.Visible = False
    End Sub

    Protected Sub buka5_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles buka5.Click
        A5.Visible = True
    End Sub

    Protected Sub tutup5_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles tutup5.Click
        A5.Visible = False
    End Sub
End Class
