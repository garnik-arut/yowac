Attribute VB_Name = "Modul1"
Option Explicit
Function Clipboard$(Optional s$)
    Dim v: v = s  'Cast to variant for 64-bit VBA support
    With CreateObject("htmlfile")
    With .parentWindow.clipboardData
        Select Case True
            Case Len(s): .setData "text", v
            Case Else:   Clipboard = .getData("text")
        End Select
    End With
    End With
End Function
Function getPromt() As String

    Selection.Expand wdSentence
    getPromt = Selection.Text
    
End Function

Sub APIRequest()
    Dim objHTTP As Object
    Dim jsonText As String
    Dim promt As String
    Dim url As String
    
    Dim result As String
    
    promt = getPromt()
    
    jsonText = "{""promt"":""" & promt & """,""params"":null}"


    Set objHTTP = CreateObject("WinHttp.WinHttpRequest.5.1")
    url = ""
    objHTTP.Open "POST", url, False

    objHTTP.setRequestHeader "Content-type", "application/json"
    objHTTP.send (jsonText)
    result = objHTTP.responseText
    
    result = "2"
    
    Clipboard (promt & result)

    Selection.Paste
    
    Set objHTTP = Nothing

End Sub

