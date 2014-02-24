Public Class Realtor
    Public Property realtorID() As String
        Get
            Return m_realtorID
        End Get
        Set(value As String)
            m_realtorID = value
        End Set
    End Property
    Private m_realtorID As String
    Public Property name() As String
        Get
            Return m_name
        End Get
        Set(value As String)
            m_name = value
        End Set
    End Property
    Private m_name As String

End Class