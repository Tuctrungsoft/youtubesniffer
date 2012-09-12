Attribute VB_Name = "modStickForm"
'���к�,�ƶ�Form2��frmmain����,�����Զ�����
'��ǰֻ��ʹForm2������frmmain���ұ߻��±�
'�������������ʹ������������λ��
'������,�����ƶ�������frmmain
'
Option Explicit

Public Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Public Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Public Declare Function CallWindowProc Lib "user32" Alias "CallWindowProcA" (ByVal lpPrevWndFunc As Long, ByVal hwnd As Long, ByVal Msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long

Public PrevWndProc_frmmain As Long
Public PrevWndProc_Form2 As Long

Public Const GWL_WNDPROC = (-4)
Private Const WM_MOVE = &H3
Private Const WM_NCLBUTTONUP = &HA2
Private Const WM_NCLBUTTONDOWN = &HA1
Private Const WM_SIZE = &H5

Private isRight As Boolean                                                      '��־,Form2�Ƿ�������frmmain���ұ�
Private isBottom As Boolean                                                     '��־,Form2�Ƿ�������frmmain�ĵױ�

Dim oldX&, oldY&                                                                '����frmmain�ƶ�ǰ��From2֮��ľ���
Const Distance As Integer = 200                                                 '��������,С�ڴ���ֵʱ���Զ�����

Public Function SubWndProc_frmmain(ByVal hwnd As Long, ByVal Msg As Long, _
    ByVal wParam As Long, ByVal lParam As Long) As Long
    
    If Msg = WM_MOVE Then                                                       '��frmmain�ƶ�ʱ
        
        If isRight Then                                                         '���Form2�������ұ�
            Form2.Left = frmMain.Left + frmMain.Width
            Form2.Top = frmMain.Top - oldY
        End If
        
        If isBottom Then                                                        '���Form2�������±�
            Form2.Top = frmMain.Top + frmMain.Height
            Form2.Left = frmMain.Left - oldX
        End If
    ElseIf Msg = WM_NCLBUTTONDOWN Then                                          '�����frmmain�ı�����ʱ,����Form2��frmmain�ľ���
        oldX = frmMain.Left - Form2.Left
        oldY = frmMain.Top - Form2.Top
    ElseIf Msg = WM_SIZE Then                                                   '������frmmainʱ
        If isRight Then
            Form2.Left = frmMain.Left + frmMain.Width
        End If
        
        If isBottom Then
            Form2.Top = frmMain.Top + frmMain.Height
        End If
    End If
    SubWndProc_frmmain = CallWindowProc(PrevWndProc_frmmain, hwnd, Msg, wParam, lParam)
End Function

Public Function SubWndProc_Form2(ByVal hwnd As Long, ByVal Msg As Long, _
    ByVal wParam As Long, ByVal lParam As Long) As Long
    
    If Msg = WM_MOVE Then                                                       '��Form2�ƶ�ʱ
        '���Form2�Ķ�����From1�ĵײ�����С���趨ֵ,���Զ�����
        If Abs(Form2.Top - (frmMain.Top + frmMain.Height)) < Distance Then
            Form2.Top = frmMain.Top + frmMain.Height
            isBottom = True
        Else
            isBottom = False
        End If
        '���Form2�������From1���ұ߾���С���趨ֵ,���Զ�����
        If Abs(Form2.Left - (frmMain.Left + frmMain.Width)) < Distance Then
            Form2.Left = frmMain.Left + frmMain.Width
            isRight = True
        Else
            isRight = False
        End If
    End If
    SubWndProc_Form2 = CallWindowProc(PrevWndProc_Form2, hwnd, Msg, wParam, lParam)
End Function





