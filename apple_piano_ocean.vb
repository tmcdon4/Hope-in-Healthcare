'Hope in Health Care'

Public Class HopeInHealthCare
    'Class Variables
    Private m_strHopeInHealthCare As String
    Private m_strHealthCarePrograms As String
    Private m_strPatientAccessibility As String
    Private m_strMedicalAdvances As String
    Private m_strImprovedCare As String

    'Constructor
    Public Sub New()
        m_strHopeInHealthCare = ""
        m_strHealthCarePrograms = ""
        m_strPatientAccessibility = ""
        m_strMedicalAdvances = ""
        m_strImprovedCare = ""
    End Sub

    'WriteData
    Public Sub WriteData(ByVal strData As String)
        m_strHopeInHealthCare &= strData
    End Sub

    'WriteHealthCarePrograms
    Public Sub WriteHealthCarePrograms(ByVal strData As String)
        m_strHealthCarePrograms &= strData
    End Sub

    'WritePatientAccessibility
    Public Sub WritePatientAccessibility(ByVal strData As String)
        m_strPatientAccessibility &= strData
    End Sub

    'WriteMedicalAdvances
    Public Sub WriteMedicalAdvances(ByVal strData As String)
        m_strMedicalAdvances &= strData
    End Sub

    'WriteImprovedCare
    Public Sub WriteImprovedCare(ByVal strData As String)
        m_strImprovedCare &= strData
    End Sub

    'GetHopeInHealthCare
    Public Function GetHopeInHealthCare() As String
        Return m_strHopeInHealthCare
    End Function

    'GetHealthCarePrograms
    Public Function GetHealthCarePrograms() As String
        Return m_strHealthCarePrograms
    End Function

    'GetPatientAccessibility
    Public Function GetPatientAccessibility() As String
        Return m_strPatientAccessibility
    End Function

    'GetMedicalAdvances
    Public Function GetMedicalAdvances() As String
        Return m_strMedicalAdvances
    End Function

    'GetImprovedCare
    Public Function GetImprovedCare() As String
        Return m_strImprovedCare
    End Function

    'CompileData
    Public Function CompileData() As String
        Return GetHopeInHealthCare() & GetHealthCarePrograms() & GetPatientAccessibility() & GetMedicalAdvances() & GetImprovedCare()
    End Function

End Class