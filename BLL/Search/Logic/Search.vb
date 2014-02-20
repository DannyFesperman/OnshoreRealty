Public Class Search

    Private Shared Sub(args As String())
    Public Function Search(s As String) As List(Of Subscribers)
        'retrieve list of users matching search parameters
        Dim parameters As SqlClient.SqlParameter() = New SqlClient.SqlParameter() {New SqlClient.SqlParameter("@search", s)}
        Return ReadSubscribers("SearchSubscribers", parameters)
    End Function
End Class
