Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text
Imports System.Threading.Tasks
Imports System.Data.SqlClient

Public Class StateDAO
    Public Sub Write(statement As String, parameters As SqlParameter())
        Using connection As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=Onshore_Realty;Integrated Security=SSPI;")
            connection.Open()
            Using command As New SqlCommand(statement, connection)
                command.CommandType = System.Data.CommandType.StoredProcedure
                command.Parameters.AddRange(parameters)
                command.ExecuteNonQuery()
            End Using
        End Using
    End Sub
    Public Function ReadState(statement As String, parameters As SqlParameter()) As List(Of State)
        Using connection As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=Onshore_Realty;Integrated Security=SSPI;")
            connection.Open()
            Using command As New SqlCommand(statement, connection)
                command.CommandType = System.Data.CommandType.StoredProcedure
                If parameters IsNot Nothing Then
                    command.Parameters.AddRange(parameters)
                End If
                Dim data As SqlDataReader = command.ExecuteReader()
                Dim states As New List(Of State)()
                While data.Read()
                    Dim state As New State()
                    state.stateID = Convert.ToInt32(data("stateID"))
                    state.description = data("description").ToString()
                    states.Add(state)
                End While
                Try
                    Return states
                Catch generatedExceptionName As Exception
                    Return Nothing
                End Try
            End Using
        End Using
    End Function

End Class