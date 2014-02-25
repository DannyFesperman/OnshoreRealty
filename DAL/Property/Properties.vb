Public Class Properties
    Inherits BaseCodeTable
    Public Property propertyID() As Integer
        Get
            Return m_propertyID
        End Get
        Set(value As Integer)
            m_propertyID = value
        End Set
    End Property
    Private m_propertyID As Integer
    Public Property typeID() As Integer
        Get
            Return m_typeID
        End Get
        Set(value As Integer)
            m_typeID = value
        End Set
    End Property
    Private m_typeID As Integer

    Public Property stateID() As Integer
        Get
            Return m_stateID
        End Get
        Set(value As Integer)
            m_stateID = value
        End Set
    End Property
    Private m_stateID As Integer
    Public Property realtorID() As Integer
        Get
            Return m_realtorID
        End Get
        Set(value As Integer)
            m_realtorID = value
        End Set
    End Property
    Private m_realtorID As Integer
    Public Property statusDate() As Date
        Get
            Return m_statusDate
        End Get
        Set(value As Date)
            m_statusDate = value
        End Set
    End Property
    Private m_statusDate As Date
    Public Property address() As String
        Get
            Return m_address
        End Get
        Set(value As String)
            m_address = value
        End Set
    End Property
    Private m_address As String
    Public Property zipCode() As Integer
        Get
            Return m_zipCode
        End Get
        Set(value As Integer)
            m_zipCode = value
        End Set
    End Property
    Private m_zipCode As Integer
    Public Property city() As String
        Get
            Return m_city
        End Get
        Set(value As String)
            m_city = value
        End Set
    End Property
    Private m_city As String
    Public Property price() As Integer
        Get
            Return m_price
        End Get
        Set(value As Integer)
            m_price = value
        End Set
    End Property
    Private m_price As Integer
    Public Property acre() As Integer
        Get
            Return m_acre
        End Get
        Set(value As Integer)
            m_acre = value
        End Set
    End Property
    Private m_acre As Integer
    Public Property beds() As Integer
        Get
            Return m_beds
        End Get
        Set(value As Integer)
            m_beds = value
        End Set
    End Property
    Private m_beds As Integer
    Public Property baths() As Integer
        Get
            Return m_baths
        End Get
        Set(value As Integer)
            m_baths = value
        End Set
    End Property
    Private m_baths As Integer
    Public Property sqft() As Integer
        Get
            Return m_sqft
        End Get
        Set(value As Integer)
            m_sqft = value
        End Set
    End Property
    Private m_sqft As Integer
    Public Property age() As Integer
        Get
            Return m_age
        End Get
        Set(value As Integer)
            m_age = value
        End Set
    End Property
    Private m_age As Integer
End Class