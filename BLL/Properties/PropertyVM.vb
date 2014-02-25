Imports DAL

Public Class PropertyVM

    Private m_propertyID As Integer
    Private m_typeID As Integer
    Private m_stateID As Integer
    Private m_state As String
    Private m_realtorID As Integer
    Private m_statusDate As Date
    Private m_address As String
    Private m_zipCode As Integer
    Private m_city As String
    Private m_price As Integer
    Private m_acre As Integer
    Private m_beds As Integer
    Private m_baths As Integer
    Private m_sqft As Integer
    Private m_age As Integer

    Public Property state() As String
        Get

        End Get
        Set(value As String)

        End Set
    End Property

    Public Property propertyID() As Integer
        Get
            Return m_propertyID
        End Get
        Set(value As Integer)
            m_propertyID = value
        End Set
    End Property

    Public Property typeID() As Integer
        Get
            Return m_typeID
        End Get
        Set(value As Integer)
            m_typeID = value
        End Set
    End Property

    Public Property stateID() As Integer
        Get
            Return m_stateID
        End Get
        Set(value As Integer)
            m_stateID = value
        End Set
    End Property

    Public Property realtorID() As Integer
        Get
            Return m_realtorID
        End Get
        Set(value As Integer)
            m_realtorID = value
        End Set
    End Property

    Public Property statusDate() As Date
        Get
            Return m_statusDate
        End Get
        Set(value As Date)
            m_statusDate = value
        End Set
    End Property

    Public Property address() As String
        Get
            Return m_address
        End Get
        Set(value As String)
            m_address = value
        End Set
    End Property

    Public Property zipCode() As Integer
        Get
            Return m_zipCode
        End Get
        Set(value As Integer)
            m_zipCode = value
        End Set
    End Property

    Public Property city() As String
        Get
            Return m_city
        End Get
        Set(value As String)
            m_city = value
        End Set
    End Property

    Public Property price() As Integer
        Get
            Return m_price
        End Get
        Set(value As Integer)
            m_price = value
        End Set
    End Property

    Public Property acre() As Integer
        Get
            Return m_acre
        End Get
        Set(value As Integer)
            m_acre = value
        End Set
    End Property

    Public Property beds() As Integer
        Get
            Return m_beds
        End Get
        Set(value As Integer)
            m_beds = value
        End Set
    End Property

    Public Property baths() As Integer
        Get
            Return m_baths
        End Get
        Set(value As Integer)
            m_baths = value
        End Set
    End Property

    Public Property sqft() As Integer
        Get
            Return m_sqft
        End Get
        Set(value As Integer)
            m_sqft = value
        End Set
    End Property

    Public Property age() As Integer
        Get
            Return m_age
        End Get
        Set(value As Integer)
            m_age = value
        End Set
    End Property

End Class