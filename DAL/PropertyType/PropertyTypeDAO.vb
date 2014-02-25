Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text
Imports System.Threading.Tasks
Imports System.Data.SqlClient

Public Class PropertyTypeDAO
    Inherits Write
    Public Function ReadType(statement As String, parameters As SqlParameter()) As List(Of PropertyType)
        Using connection As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=Onshore_Realty;Integrated Security=SSPI;")
            connection.Open()
            Using command As New SqlCommand(statement, connection)
                command.CommandType = System.Data.CommandType.StoredProcedure
                If parameters IsNot Nothing Then
                    command.Parameters.AddRange(parameters)
                End If
                Dim data As SqlDataReader = command.ExecuteReader()
                Dim types As New List(Of PropertyType)()
                While data.Read()
                    Dim type As New PropertyType()
                    type.typeID = Convert.ToInt32(data("typeID"))
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
    Public Function GetTypes() As List(Of PropertyType)
        Return ReadType("GetType", Nothing)
    End Function
End Class