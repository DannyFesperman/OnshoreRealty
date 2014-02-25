Imports BLL

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Login_Click(sender As Object, ByVal e As System.EventArgs)
        Dim log As LoginServices = New LoginServices()
        Dim user = New UserFM()
        user.email = email.Text
        user.password = password.Text
        If log.ValidCredentials(user) Then
            Session("UserID") = log.GetUserID(user.email)
            Response.Redirect("~/Search/Search.aspx")
        End If
    End Sub

    Protected Sub NewUser_Click(sender As Object, e As EventArgs)
        Response.Redirect("~/Register/Register.aspx")
    End Sub
End Class