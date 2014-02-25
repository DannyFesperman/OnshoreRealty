Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text
Imports System.Threading.Tasks
Imports System.Data.SqlClient

Public Class SortTypeDAO
    Inherits Write
    Public Function ReadSort(statement As String, parameters As SqlParameter()) As List(Of SortType)
        Using connection As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=Onshore Realty;Integrated Security=SSPI;")
            connection.Open()
            Using command As New SqlCommand(statement, connection)
                command.CommandType = System.Data.CommandType.StoredProcedure
                If parameters IsNot Nothing Then
                    command.Parameters.AddRange(parameters)
                End If
                Dim data As SqlDataReader = command.ExecuteReader()
                Dim types As New List(Of SortType)()
                While data.Read()
                    Dim type As New SortType()
                    type.sortID = Convert.ToInt32(data("sortID"))
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
    Public Function GetSort() As List(Of SortType)
        Return ReadSort("GetSort", Nothing)
    End Function
End Class