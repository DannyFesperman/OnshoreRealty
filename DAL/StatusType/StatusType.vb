Public Class StatusType
    Inherits BaseCodeTable
    Public Property statusID() As Integer
        Get
            Return m_statusID
        End Get
        Set(value As Integer)
            m_statusID = value
        End Set
    End Property
    Private m_statusID As Integer

End Class