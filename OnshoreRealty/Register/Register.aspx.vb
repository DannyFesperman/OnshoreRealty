Imports BLL

Public Class Register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Register_Click(sender As Object, e As EventArgs)
        Dim log As RegisterServices = New RegisterServices()
        Dim user = New UserFM()
        user.email = email.ToString
        user.firstName = firstName.ToString
        user.lastName = lastName.ToString
        user.password = password.ToString
        user.confirmPass = confirmPass.ToString
        user.acceptsEmail = checkbox.Checked
        If log.ValidRegister(user) Then
            log.RegisterUser(user)
        End If

    End Sub

End Class