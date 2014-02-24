Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text
Imports System.Threading.Tasks
Imports System.Data.SqlClient

Public Class RealtorDAO
    Inherits Write
    Public Function ReadRealtor(statement As String, parameters As SqlParameter()) As List(Of Realtor)
        Using connection As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=Onshore_Realty;Integrated Security=SSPI;")
            connection.Open()
            Using command As New SqlCommand(statement, connection)
                command.CommandType = System.Data.CommandType.StoredProcedure
                If parameters IsNot Nothing Then
                    command.Parameters.AddRange(parameters)
                End If
                Dim data As SqlDataReader = command.ExecuteReader()
                Dim realtors As New List(Of Realtor)()
                While data.Read()
                    Dim realtor As New Realtor()
                    realtor.realtorID = Convert.ToInt32(data("realtorID"))
                    realtor.name = data("name").ToString()
                    realtor.active = Convert.ToBoolean(data("active"))
                    realtors.Add(realtor)
                End While
                Try
                    Return realtors
                Catch generatedExceptionName As Exception
                    Return Nothing
                End Try
            End Using
        End Using
    End Function
    Public Function GetRealtor() As List(Of Realtor)
        Return ReadRealtor("GetRealtor", Nothing)
    End Function
End Class