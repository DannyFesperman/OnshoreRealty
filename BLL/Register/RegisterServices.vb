Imports DAL

Public Class RegisterServices

    ''' <summary>
    ''' Handles all validation for registering a user
    ''' </summary>
    ''' <param name="user"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Function ValidRegister(user As UserFM) As Boolean
        Dim valid As Boolean = False
        If ValidateFields(user) And ValidateEmail(user.email) And ValidatePasswords(user.password, user.confirmPass) Then
            valid = True
        End If
        Return valid
    End Function

    ''' <summary>
    ''' Adds a user to the database
    ''' </summary>
    ''' <param name="user"></param>
    ''' <remarks></remarks>
    Sub RegisterUser(user As UserFM)
        Dim dao As UserDAO = New UserDAO()
        Dim log As UserServices = New UserServices()
        dao.CreateUser(log.ConvertUser(user))
    End Sub

    ''' <summary>
    ''' Determines if all fields are filled in and correct length.
    ''' </summary>
    ''' <param name="user"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Private Function ValidateFields(user As UserFM) As Boolean
        Dim valid As Boolean = False
        Try
            If ValidateNameFields(user.firstName, user.lastName) And ValidateEmail(user.email) And ValidatePasswords(user.password, user.confirmPass) Then
                valid = True
            End If
        Catch ex As Exception
            valid = False
        End Try
        Return valid
    End Function

    ''' <summary>
    ''' Validates that the email is not already in the database and that the email meets the length requirements.
    ''' </summary>
    ''' <param name="email"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Private Function ValidateEmail(email As String) As Boolean
        Dim dao As UserDAO = New UserDAO()
        Dim valid As Boolean = False
        If email.Length > 6 And email.Length < 101 Then
            valid = True
            ''Verifies that user in not already in db
            For Each user As User In dao.GetAllUsers()
                If user.email = email Then
                    Return False
                End If
            Next
        End If
        Return valid
    End Function

    ''' <summary>
    ''' Valid that Password field is valid length and matches confirmPass
    ''' </summary>
    ''' <param name="password"></param>
    ''' <param name="confirmPass"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Private Function ValidatePasswords(password As String, confirmPass As String) As Boolean
        Dim valid As Boolean = False
        If password.Length > 0 And password.Length < 21 And password = confirmPass Then
            valid = True
        End If
        Return valid
    End Function

    ''' <summary>
    ''' Validates that first and last names are the valid lengths
    ''' </summary>
    ''' <param name="first">first name</param>
    ''' <param name="last">last name</param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Private Function ValidateNameFields(first As String, last As String) As Boolean
        Dim valid As Boolean = False
        If first.Length > 0 And first.Length < 26 And last.Length > 0 And last.Length < 26 Then
            valid = True
        End If
        Return valid
    End Function

End Class
