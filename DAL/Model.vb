Public Class Model
    Public Property description() As String
        Get
            Return m_description
        End Get
        Set(value As String)
            m_description = value
        End Set
    End Property
    Private m_description As String
    Public Property active() As Boolean
        Get
            Return m_active
        End Get
        Set(value As Boolean)
            m_active = value
        End Set
    End Property
    Private m_active As Boolean
End Class