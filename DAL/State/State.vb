Public Class State
    Public Property stateID() As String
        Get
            Return m_stateID
        End Get
        Set(value As String)
            m_stateID = value
        End Set
    End Property
    Private m_stateID As String
    Public Property description() As String
        Get
            Return m_description
        End Get
        Set(value As String)
            m_description = value
        End Set
    End Property
    Private m_description As String

End Class