Attribute VB_Name = "modConverting"
Option Explicit
Public Declare Function CreateIExprSrvObj Lib "msvbvm60.dll" (ByVal p1_0 As Long, ByVal p2_4 As Long, ByVal p3_0 As Long) As Long

Public Declare Function CreateThread Lib "kernel32" (ByVal lpThreadAttributes As Any, ByVal dwStackSize As Long, ByVal lpStartAddress As Long, lpParameter As Any, ByVal dwCreationFlags As Long, lpThreadID As Long) As Long
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Public Declare Function TerminateThread Lib "kernel32" (ByVal hThread As Long, ByVal dwExitCode As Long) As Long
Public Declare Function TerminateProcess Lib "kernel32" (ByVal hProcess As Long, ByVal uExitCode As Long) As Long
Public Declare Function GetCurrentProcess Lib "kernel32" () As Long

Public Declare Function WaitForSingleObject Lib "kernel32.dll" (ByVal hHandle As Long, ByVal dwMilliseconds As Long) As Long
Public Declare Function CreateEvent& Lib "kernel32" Alias "CreateEventA" (ByVal lpEventAttributes As Long, ByVal bManualReset As Long, ByVal bInitialState As Long, ByVal lpname As String)
Public Declare Function SetEvent Lib "kernel32" (hEvent As Long) As Long
Public lThreadHandle1 As Long
Public lThreadHandle2 As Long
Public lEventHandle As Long

Private Type PROCESS_INFORMATION
    hProcess As Long
    hThread As Long
    dwProcessId As Long
    dwThreadId As Long
End Type
Private Type STARTUPINFO
    cb As Long
    lpReserved As String
    lpDesktop As String
    lpTitle As String
    dwX As Long
    dwY As Long
    dwXSize As Long
    dwYSize As Long
    dwXCountChars As Long
    dwYCountChars As Long
    dwFillAttribute As Long
    dwFlags As Long
    wShowWindow As Integer
    cbReserved2 As Integer
    lpReserved2 As Long
    hStdInput As Long
    hStdOutput As Long
    hStdError As Long
End Type
Private Type SECURITY_ATTRIBUTES
    nLength As Long
    lpSecurityDescriptor As Long
    bInheritHandle As Long
End Type
Private Declare Function CreatePipe Lib "kernel32" (phReadPipe As Long, phWritePipe As Long, lpPipeAttributes As SECURITY_ATTRIBUTES, ByVal nSize As Long) As Long
Private Declare Function CreateProcessA Lib "kernel32" ( _
    ByVal lpApplicationName As Long, _
    ByVal lpCommandLine As String, _
    lpProcessAttributes As SECURITY_ATTRIBUTES, _
    lpThreadAttributes As SECURITY_ATTRIBUTES, _
    ByVal bInheritHandles As Long, _
    ByVal dwCreationFlags As Long, _
    ByVal lpEnvironment As Long, _
    ByVal lpCurrentDirectory As Long, _
    lpStartupInfo As STARTUPINFO, _
    lpProcessInformation As PROCESS_INFORMATION) As Long
Public Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Private Declare Function ReadFile Lib "kernel32" ( _
    ByVal hFile As Long, _
    ByVal lpBuffer As String, _
    ByVal nNumberOfBytesToRead As Long, _
    lpNumberOfBytesRead As Long, _
    ByVal lpOverlapped As Any) As Long
Private Type OVERLAPPED
    Internal As Long
    InternalHigh As Long
    offset As Long
    OffsetHigh As Long
    hEvent As Long
End Type
Private Const STARTF_USESTDHANDLES = &H100
Private Const STARTF_USESHOWWINDOW = &H1
Private Const NORMAL_PRIORITY_CLASS = &H20

Public proc As PROCESS_INFORMATION
Public hReadPipe As Long                                                        '�����ȡ�Ĺܵ�


Public Function ExecuteApp() As String
    
    Dim sCmdline As String
    sCmdline = frmConvert.ConvertPara
    CreateIExprSrvObj 0, 4, 0
    Dim ret1 As Long
    
    Dim ret As Long
    Dim start As STARTUPINFO
    Dim sa As SECURITY_ATTRIBUTES
    Dim hWritePipe As Long                                                      '����Shell����ı�׼����ͱ�׼��������Ĺܵ�
    Dim sOutput As String                                                       '�ŷ��ص�����
    Dim lngBytesRead As Long, sBuffer As String * 256
    sa.nLength = Len(sa)
    sa.bInheritHandle = True
    ret = CreatePipe(hReadPipe, hWritePipe, sa, 0)
    If ret = 0 Then
        MsgBox "CreatePipe failed. Error: " & Err.LastDllError
        Exit Function
    End If
    start.cb = Len(start)
    start.dwFlags = STARTF_USESTDHANDLES Or STARTF_USESHOWWINDOW                ' �ѱ�׼����ͱ�׼��������ض���ͬһ���ܵ���ȥ��
    start.hStdOutput = hWritePipe
    start.hStdError = hWritePipe
    'start.wShowWindow = SW_HIDE '����shell���򴰿�
    ' ����shell����, sCmdLineָ��ִ�е�·��
    
    ret = CreateProcessA(0&, sCmdline, sa, sa, True, NORMAL_PRIORITY_CLASS, 0&, 0&, start, proc)
    If ret = 0 Then
        MsgBox "Error!" & Err.LastDllError
        Exit Function
    End If                                                                      ' �����в�����shell��������Ϣ����˿����ȹر�hWritePipe
    CloseHandle hWritePipe                                                      ' ѭ����ȡshell����������ÿ�ζ�ȡ256���ֽڡ�
    
    Do
        ret1 = WaitForSingleObject(lEventHandle, 10)
        ret = ReadFile(hReadPipe, sBuffer, 256, lngBytesRead, 0&)
        sOutput = sOutput & vbCrLf & vbCrLf & Left$(sBuffer, lngBytesRead)
        DoEvents
        frmConvert.txtProgress.Text = frmConvert.txtProgress.Text & vbCrLf & sOutput
        frmConvert.txtProgress.SelStart = Len(frmConvert.txtProgress.Text)
        
    Loop While ret <> 0
    frmConvert.cmdConvert.Enabled = True
    frmConvert.cmdConvert.Enabled = True
    frmConvert.cmbFormat.Enabled = True
    frmConvert.cmbQuality.Enabled = True
    frmConvert.cmdIn.Enabled = True
    frmConvert.cmdSave.Enabled = True
    frmConvert.txtProgress.Text = frmConvert.txtProgress.Text & vbCrLf & "Done converting at: " & Now & ". Time taken: " & Format(Timer() - frmConvert.TimeTick, "0.##") & " seconds"
    frmConvert.txtProgress.SelStart = Len(frmConvert.txtProgress.Text)
    ' frmConvert.pgBar.Value = 100
    If frmConvert.mnuOpenFolder.Checked = True Then
        Shell "explorer /select," & frmConvert.txtOut.Text, vbNormalFocus
    End If
    
    
    ' ���ret=0����û�и������Ϣ��Ҫ��ȡ��
    
    ' �ͷ������Դ
    CloseHandle proc.hProcess
    CloseHandle proc.hThread
    CloseHandle hReadPipe
    ExecuteApp = sOutput                                                        ' ������
End Function



