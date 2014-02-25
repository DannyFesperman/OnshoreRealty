Imports BLL

Public Class Register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Register_Click(sender As Object, e As EventArgs)
        Dim log As RegisterServices = New RegisterServices()
        Dim user = New UserFM()
        user.email = email.Text
        user.firstName = firstName.Text
        user.lastName = lastName.Text
        user.password = password.Text
        user.confirmPass = confirmPass.Text
        user.acceptsEmail = checkbox.Checked
        If RadCaptcha1.IsValid And log.ValidRegister(user) Then
            log.RegisterUser(user)
        End If

    End Sub

End Class