Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text
Imports System.Threading.Tasks
Imports System.Data.SqlClient

Public Class UserDAO
    Inherits Write
    Public Function ReadUsers(statement As String, parameters As SqlParameter()) As List(Of User)
        Using connection As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=Onshore_Realty;Integrated Security=SSPI;")
            connection.Open()
            Using command As New SqlCommand(statement, connection)
                command.CommandType = System.Data.CommandType.StoredProcedure
                If parameters IsNot Nothing Then
                    command.Parameters.AddRange(parameters)
                End If
                Dim data As SqlDataReader = command.ExecuteReader()
                Dim users As New List(Of User)()
                While data.Read()
                    Dim user As New User()
                    user.userID = Convert.ToInt32(data("userID"))
                    user.firstName = data("firstName").ToString()
                    user.lastName = data("lastName").ToString()
                    user.email = data("email").ToString()
                    user.password = data("password").ToString()
                    user.acceptEmail = Convert.ToBoolean(data("acceptEmail"))
                    users.Add(user)
                End While
                Try
                    Return users
                Catch generatedExceptionName As Exception
                    Return Nothing
                End Try
            End Using
        End Using
    End Function
    Public Sub CreateUser(user As User)
        Dim parameters As SqlParameter() = New SqlParameter() {New SqlParameter("@firstName", user.firstName), New SqlParameter("@lastName", user.lastName), New SqlParameter("@email", user.email), New SqlParameter("@password", user.password)}
        Write("CreateUser", parameters)
    End Sub
    Public Sub UpdateUser(user As User)
        Dim parameters As SqlParameter() = New SqlParameter() {New SqlParameter("@userID", user.userID), New SqlParameter("@email", user.email), New SqlParameter("@password", user.password)}
        Write("UpdateUser", parameters)
    End Sub
    Public Sub RemoveUser(userID As Integer)
        Dim parameters As SqlParameter() = New SqlParameter() {New SqlParameter("@userID", userID)}
        Write("RemoveUser", parameters)
    End Sub
    Public Function GetUserID(userID As Integer) As User
        Try
            Dim parameters As SqlParameter() = New SqlParameter() {New SqlParameter("@userID", userID)}
            Return ReadUsers("GetUserID", parameters).SingleOrDefault()
        Catch e As Exception
            Console.WriteLine("Error: " & vbLf + e.Message)
            Console.ReadKey()
            Return Nothing
        End Try
    End Function
    Public Function GetUserEmail(email As String) As User
        Dim parameters As SqlParameter() = New SqlParameter() {New SqlParameter("@email", email)}
        Return ReadUsers("GetUserEmail", parameters).SingleOrDefault()
    End Function
End Class