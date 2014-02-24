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
                    realtor.realtorID = Convert.ToInt32(data("stateID"))
                    realtor.name = data("description").ToString()
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

End Class