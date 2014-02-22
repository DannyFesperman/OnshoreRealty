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

End Class