Public Class User
    Public Property userID() As Integer
        Get
            Return m_userID
        End Get
        Set(value As Integer)
            m_userID = Value
        End Set
    End Property
    Private m_userID As Integer
    Public Property firstName() As String
        Get
            Return m_firstName
        End Get
        Set(value As String)
            m_firstName = Value
        End Set
    End Property
    Private m_firstName As String
    Public Property lastName() As String
        Get
            Return m_lastName
        End Get
        Set(value As String)
            m_lastName = Value
        End Set
    End Property
    Private m_lastName As String
    Public Property email() As String
        Get
            Return m_email
        End Get
        Set(value As String)
            m_email = Value
        End Set
    End Property
    Private m_email As String
    Public Property password() As String
        Get
            Return m_password
        End Get
        Set(value As String)
            m_password = value
        End Set
    End Property
    Private m_password As String
End Class