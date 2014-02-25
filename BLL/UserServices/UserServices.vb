Imports DAL

Public Class UserServices

    ''' <summary>
    ''' Converts a UserFm into a User
    ''' </summary>
    ''' <param name="userFM"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Function ConvertUser(userFm As UserFM) As User
        Dim user As User = New User()
        user.firstName = userFm.firstName
        user.lastName = userFm.lastName
        user.email = userFm.email
        user.password = userFm.password
        user.acceptsEmail = userFm.acceptsEmail
    End Function

End Class
