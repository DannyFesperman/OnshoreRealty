Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text
Imports System.Threading.Tasks
Imports System.Data.SqlClient

Public Class StatusTypeDAO
    Inherits Write
    Public Function ReadStatus(statement As String, parameters As SqlParameter()) As List(Of StatusType)
        Using connection As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=Onshore Realty;Integrated Security=SSPI;")
            connection.Open()
            Using command As New SqlCommand(statement, connection)
                command.CommandType = System.Data.CommandType.StoredProcedure
                If parameters IsNot Nothing Then
                    command.Parameters.AddRange(parameters)
                End If
                Dim data As SqlDataReader = command.ExecuteReader()
                Dim types As New List(Of StatusType)()
                While data.Read()
                    Dim type As New StatusType()
                    type.statusID = Convert.ToInt32(data("statusID"))
                    type.description = data("description").ToString()
                    type.active = Convert.ToBoolean(data("active"))
                    types.Add(type)
                End While
                Try
                    Return types
                Catch generatedExceptionName As Exception
                    Return Nothing
                End Try
            End Using
        End Using
    End Function
    Public Function GetStatus() As List(Of StatusType)
        Return ReadStatus("GetStatus", Nothing)
    End Function
End Class