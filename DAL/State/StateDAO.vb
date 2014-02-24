Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text
Imports System.Threading.Tasks
Imports System.Data.SqlClient

Public Class StateDAO
    Inherits Write
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
                    state.active = Convert.ToBoolean(data("active"))
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
    Public Function GetStates() As List(Of State)
        Return ReadState("GetState", nothing)
    End Function
End Class