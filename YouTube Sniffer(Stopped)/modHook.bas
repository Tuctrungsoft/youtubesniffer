Attribute VB_Name = "modHook"
Option Explicit
                                                                 
Private Declare Function Send Lib "ws2_32.dll" Alias "send" (s As Long, buf As Any, buflen As Long, Flags As Long) As Long
Private Declare Function GetModuleHandle Lib "kernel32" Alias "GetModuleHandleA" (ByVal lpModuleName As String) As Long
Private Declare Function GetProcAddress Lib "kernel32.dll" (ByVal hLib As Long, ByVal szFuncName As String) As Long
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (ByVal Destination As Long, ByVal Source As Long, ByVal Length As Long)
Private Declare Function WriteProcessMemory Lib "kernel32.dll" (ByVal a As Long, ByVal b As Long, ByVal c As Long, ByVal d As Long, ByVal e As Long) As Long
Private Declare Function MessageBox Lib "user32" Alias "MessageBoxA" (ByVal hwnd As Long, ByVal lpText As String, ByVal lpCaption As String, ByVal wType As Long) As Long
Dim OldCode(4)  As Byte
Dim NewCode(4)  As Byte
Dim FunAddress  As Long
Public strSendInfo() As String

Public Function Hook()
    Dim JmpAddress As Long
    '--GetModuleHandle��ȡws2_32.dll�ľ��,GetProcAddress��ȡdll���send������ڵ�ַ--
    FunAddress = GetProcAddress(GetModuleHandle("ws2_32.dll"), "send")
    If FunAddress = 0 Then
        If App.LogMode = 0 Then UnHook
        Exit Function
    End If
    '--ԭ��ַ--
    CopyMemory VarPtr(OldCode(0)), FunAddress, 5
    '--JMP�Ļ�����--
    NewCode(0) = &HE9
    '--����ƫ�Ƶ�ַ--
    JmpAddress = SubPtr(AddressOf SendFunction) - FunAddress - 5
    Debug.Print "JMP:" & Hex(VarPtr(JmpAddress))
    '--�µĵ�ַΪ�ص�������ַ--
    CopyMemory VarPtr(NewCode(1)), VarPtr(JmpAddress), 4
    '--�޸ĺ��������ת--
    WriteProcessMemory -1, FunAddress, VarPtr(NewCode(0)), 5, 0
End Function
                                                                    
Public Function UnHook()
    WriteProcessMemory -1, FunAddress, VarPtr(OldCode(0)), 5, 0
End Function

Private Function SubPtr(ByVal AnyPtr As Long) As Long
    SubPtr = AnyPtr
End Function

Public Function SendFunction(s As Long, buf As Long, buflen As Long, Flags As Long) As Long
    Static nCount As Long
    Dim nI As Long
    Dim bufSend() As Byte
    ReDim Preserve bufSend(VarPtr(buflen))
    CopyMemory VarPtr(bufSend(0)), VarPtr(buf), VarPtr(buflen)
    ReDim Preserve strSendInfo(nCount)
    
    For nI = 0 To UBound(bufSend)
        strSendInfo(nCount) = strSendInfo(nCount) & Chr(bufSend(nI))
    Next
    If InStr(strSendInfo(nCount), "jpg") > 0 Then Debug.Print strSendInfo(nCount)
    CopyMemory VarPtr(bufSend(0)), VarPtr(buf), VarPtr(buflen)
    WriteProcessMemory -1, FunAddress, VarPtr(OldCode(0)), 5, 0
    SendFunction = Send(s, buf, buflen, Flags)
    WriteProcessMemory -1, FunAddress, VarPtr(NewCode(0)), 5, 0
    nCount = nCount + 1
End Function
                                                                    
