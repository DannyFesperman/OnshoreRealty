Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text
Imports System.Threading.Tasks
Imports System.Data.SqlClient

Public Class PropertiesDAO
    Inherits Write
    Public Function ReadProperties(statement As String, parameters As SqlParameter()) As List(Of Properties)
        Using connection As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=Onshore Realty;Integrated Security=SSPI;")
            connection.Open()
            Using command As New SqlCommand(statement, connection)
                command.CommandType = System.Data.CommandType.StoredProcedure
                If parameters IsNot Nothing Then
                    command.Parameters.AddRange(parameters)
                End If
                Dim data As SqlDataReader = command.ExecuteReader()
                Dim props As New List(Of Properties)()
                While data.Read()
                    Dim prop As New Properties()
                    prop.propertyID = Convert.ToInt32(data("propertyID"))
                    prop.typeID = Convert.ToInt32(data("typeID"))
                    prop.statusID = Convert.ToInt32(data("statusID"))
                    prop.stateID = Convert.ToInt32(data("stateID"))
                    prop.realtorID = Convert.ToInt32(data("realtorID"))
                    prop.statusDate = Convert.ToDateTime(data("statusDate"))
                    prop.address = data("address").ToString()
                    prop.zipCode = Convert.ToInt32(data("zipCode"))
                    prop.city = data("city").ToString()
                    prop.price = Convert.ToInt32(data("price"))
                    prop.acre = Convert.ToInt32(data("acre"))
                    prop.beds = Convert.ToInt32(data("beds"))
                    prop.baths = Convert.ToInt32(data("baths"))
                    prop.sqft = Convert.ToInt32(data("sqft"))
                    prop.description = data("desctiption")
                    prop.age = Convert.ToInt32(data("age"))
                    prop.active = Convert.ToBoolean(data("active"))
                    props.Add(prop)
                End While
                Try
                    Return props
                Catch generatedExceptionName As Exception
                    Return Nothing
                End Try
            End Using
        End Using
    End Function

End Class