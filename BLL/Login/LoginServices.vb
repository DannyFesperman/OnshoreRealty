Imports DAL

Public Class LoginServices

    ''' <summary>
    ''' Verifies user's credentials
    ''' </summary>
    ''' <param name="user"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Function ValidCredentials(user As UserFM) As Boolean
        Dim dao As UserDAO = New UserDAO()
        Dim valid As Boolean = False
        Try
            If dao.GetUserEmail(user.email).password = user.password Then
                valid = True
            End If
        Catch ex As Exception
            valid = False
        End Try
        Return valid
    End Function

    ''' <summary>
    ''' Takes in an email address and returns the user's ID
    ''' </summary>
    ''' <param name="email"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Function GetUserID(email As String) As Integer
        Dim dao As UserDAO = New UserDAO()
        Return dao.GetUserEmail(email).userID
    End Function

End Class
