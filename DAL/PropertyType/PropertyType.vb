Public Class PropertyType
    Inherits BaseCodeTable
    Public Property typeID() As String
        Get
            Return m_typeID
        End Get
        Set(value As String)
            m_typeID = value
        End Set
    End Property
    Private m_typeID As String
End Class