Public Class PropertyType
    Inherits BaseCodeTable
    Public Property typeID() As Integer
        Get
            Return m_typeID
        End Get
        Set(value As Integer)
            m_typeID = value
        End Set
    End Property
    Private m_typeID As Integer
End Class