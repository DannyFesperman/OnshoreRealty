Public Class State
    Inherits BaseCodeTable
    Public Property stateID() As Integer
        Get
            Return m_stateID
        End Get
        Set(value As Integer)
            m_stateID = value
        End Set
    End Property
    Private m_stateID As Integer
End Class