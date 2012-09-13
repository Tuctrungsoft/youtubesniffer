Attribute VB_Name = "modINIReader"
'**************************************************************************
'**ģ �� ����INI �ļ����� - ����ini.bas
'**˵    ����
'**�� �� �ˣ�icecept(ħ��)
'**��    �ڣ�2008-12-15 00:11:06
'**�� �� �ˣ�icecept(ħ��)
'**��    �ڣ�2009-1-9 01:20:23
'**��    ����icecept(ħ��)����
'**��    ����V1.0.0    http://icecept.blog.sohu.com
'*************************************************************************

Option Explicit

'�����Զ���INI�ļ�
Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
'д���Զ���INI�ļ�
Public Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
'�����Զ���INI�ļ��еĵ������μ�����м�����ֵ
Public Declare Function GetPrivateProfileSection Lib "kernel32" Alias "GetPrivateProfileSectionA" (ByVal lpAppName As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
'�����Զ���INI����������
Public Declare Function GetPrivateProfileSectionNames Lib "kernel32.dll" Alias "GetPrivateProfileSectionNamesA" (ByVal lpszReturnBuffer As String, ByVal nSize As Long, ByVal lpFileName As String) As Long

'*************************************************************************
'**�� �� ����GetIni
'**�������������Զ���ini�ļ��ж���Ϣ SectionName:������ KeyWord:������� DefString:��ȡʧ�ܺ󷵻�Ĭ�� FileName:ini�ļ�����·��
'**��    �䣺�����Ķ���String���͵�,�������������͵�,����VB��val()��������ת��
'*************************************************************************

Public Function GetIni(ByVal SectionName As String, ByVal KeyWord As String, ByVal DefString As String, ByVal FileName As String) As String
    Dim ResultString As String * 255
    If GetPrivateProfileString(ByVal SectionName, ByVal KeyWord, vbNullString, ByVal ResultString, ByVal Len(ResultString), ByVal FileName) > 0 Then '�ؼ��ʵ�ֵ��Ϊ��
        GetIni = Left(ResultString, InStr(ResultString, Chr(0)) - 1)
    Else                                                                        '��ȱʡֵд��INI�ļ�
        WritePrivateProfileString SectionName, KeyWord, DefString, FileName
        GetIni = DefString
    End If
End Function

'*************************************************************************
'**�� �� ����GetKeyWord
'**�������������Զ���ini�ļ��еõ�������ֵ
'**          SectionName:������  DefString:Ĭ��ֵ  FileName:ini�ļ�����·��
'**��    �䣺�
'*************************************************************************
Public Function GetKeyWord(ByVal SectionName As String, ByVal DefString As String, ByVal FileName As String) As String
    Dim szBuf As String * 255
    If GetPrivateProfileSection(ByVal SectionName, ByVal szBuf, Len(szBuf), ByVal FileName) > 0 Then
        'ͬʱ��ȡ������ֵ
        GetKeyWord = Left(szBuf, InStr(szBuf, Chr(0)) - 1)
    Else
        WritePrivateProfileString SectionName, DefString, vbNullString, FileName
        GetKeyWord = DefString
    End If
End Function

'*************************************************************************
'**�� �� ����GetKey
'**�������������Զ���ini�ļ��еõ�����
'**          SectionName:������  DefString:Ĭ��ֵ  FileName:ini�ļ�����·��
'**��    �䣺�
'*************************************************************************
Public Function GetKey(ByVal SectionName As String, ByVal DefString As String, ByVal FileName As String) As String
    Dim szBuf As String * 255, ResultString As String
    ResultString = GetKeyWord(ByVal SectionName, ByVal szBuf, ByVal FileName)
    If InStr(ResultString, "=") <> 0 Then
        GetKey = Left(ResultString, InStr(ResultString, "=") - 1)
    Else
        GetKey = DefString
    End If
End Function

Public Function WriteKey(ByVal ������ As String, ByVal ���� As String, ByVal ֵ As String, ByVal �ļ��� As String) As String
    WritePrivateProfileString ������, ����, ֵ, �ļ���
End Function

Public Function DelKey(ByVal ������ As String, ByVal ���� As String, ByVal �ļ��� As String) As String
    WritePrivateProfileString "������", "����", vbNullString, �ļ���
End Function
    'WritePrivateProfileString "a", "b", vbNullString, App.Path & "\test.ini"

'���ɵ�test.ini �ļ���ʽ:
'
'[a]              a: ������
'b=c��    ��������b������  c��ֵ
'[d]              d: ������
'e=f              e������  f��ֵ
'--------------------------------------------------------------------------------------
'����ini�ļ��ĺ����б�:
'ֻ�ܲ���win.ini�ĺ���
'WriteProfileString ��win.ini��ʼ���ļ�ָ��С��������һ���ִ�
'WriteProfileSection Ϊwin.ini��ʼ���ļ���һ��ָ����С����������������ֵ
'GetProfileInt ȡ��win.ini��ʼ���ļ���ָ����Ŀ��һ������ֵ
'GetProfileSection               ��ȡָ��С�ڣ���win.ini�ļ��У�����������ֵ��һ���б�
'GetProfileString Ϊwin.ini��ʼ���ļ���ָ������Ŀȡ���ִ�
'======================================================================================
'���ܲ���win.ini�ĺ��������ܲ����Զ���ini�ļ��ĺ���
'WritePrivateProfileString �ڳ�ʼ���ļ�ָ��С��������һ���ִ�
'WritePrivateProfileSection      Ϊһ����ʼ���ļ���.ini����ָ����С����������������ֵ
'GetPrivateProfileInt Ϊ��ʼ���ļ���ָ������Ŀ��ȡһ������ֵ
'GetPrivateProfileSection ��ȡָ��С������������ֵ��һ���б�
'GetPrivateProfileString Ϊ��ʼ���ļ���ָ������Ŀȡ���ִ�
'GetPrivateProfileSectionNames ����INI�ļ�������������

'Write
'      ��������������ֵ���ļ���
    'WritePrivateProfileString "a", "b", "c", App.Path & "\test.ini"
    'WritePrivateProfileString "d", "e", "f", App.Path & "\test.ini"
 '�޸ļ�ֵ
    'Dim AA As String
    'AA = InputBox("�������µ�a���μ���b�µ�ֵ", Me.Caption)
    'If AA <> vbNullString Then
        'WritePrivateProfileString "a", "b", AA, App.Path & "\test.ini"
        'MsgBox "�޸ĳɹ�"
    'End If
    
    'ɾ��a�����µ�һ������,ɾ�������󣬼����µ�ֵҲ��ͬʱɾ��
    '                        ������ ����
    'WritePrivateProfileString "a", "b", vbNullString, App.Path & "\test.ini"
'ɾ����������,,ɾ�����κ������µļ�����ֵҲ��ͬʱɾ��
    '        ������
    'WritePrivateProfileString "a", vbNullString, vbNullString, App.Path & "\test.ini"
    'WritePrivateProfileString "d", vbNullString, vbNullString, App.Path & "\test.ini"

'��ȡ����       ������     ����      Ĭ��ֵ             �ļ���
    'MsgBox GetIni("rBnwares", "Year", vbNullString, "c:\windows\win.ini")

'��ȡ����
    'Dim szBuf As String * 255
    '                ��������     ������    �ļ���
    'MsgBox GetKeyWord("rBnwares", szBuf, "c:\windows\win.ini")
 '��ȡ����
    'Dim szBuf As String * 255
    '                ��������   ������    �ļ���
    'MsgBox GetKey("rBnwares", szBuf, "c:\windows\win.ini")

