Public Class UserFM

    Private m_userID As Integer
    Private m_firstName As String
    Private m_lastName As String
    Private m_email As String
    Private m_password As String
    Private m_confirmPass As String
    Private m_acceptsEmail As Boolean

    Public Property userID() As Integer
        Get
            Return m_userID
        End Get
        Set(value As Integer)
            m_userID = value
        End Set
    End Property

    Public Property firstName() As String
        Get
            Return m_firstName
        End Get
        Set(value As String)
            m_firstName = value
        End Set
    End Property

    Public Property lastName() As String
        Get
            Return m_lastName
        End Get
        Set(value As String)
            m_lastName = value
        End Set
    End Property

    Public Property email() As String
        Get
            Return m_email
        End Get
        Set(value As String)
            m_email = value
        End Set
    End Property

    Public Property password() As String
        Get
            Return m_password
        End Get
        Set(value As String)
            m_password = value
        End Set
    End Property

    Public Property confirmPass() As String
        Get
            Return m_confirmPass
        End Get
        Set(value As String)
            m_confirmPass = value
        End Set
    End Property

    Public Property acceptsEmail() As Boolean
        Get
            Return m_acceptsEmail
        End Get
        Set(value As Boolean)
            m_acceptsEmail = value
        End Set
    End Property
End Class
