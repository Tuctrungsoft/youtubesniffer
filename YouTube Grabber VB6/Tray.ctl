VERSION 5.00
Begin VB.UserControl Tray 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00404040&
   ClientHeight    =   3600
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4800
   InvisibleAtRuntime=   -1  'True
   ScaleHeight     =   3600
   ScaleWidth      =   4800
End
Attribute VB_Name = "Tray"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
                                                                 
Private Declare Function Shell_NotifyIcon Lib "shell32.dll" Alias "Shell_NotifyIconA" (ByVal dwMessage As Long, lpData As NOTIFYICONDATA) As Long
Private Const NIM_ADD = &H0                                                     '��������������һ��ͼ��
Private Const NIM_DELETE = &H2                                                  'ɾ���������е�һ��ͼ��
Private Const NIM_MODIFY = &H1                                                  '�޸��������и�ͼ����Ϣ
Private Const NIM_SETFOCUS = &H3
Private Const NIF_MESSAGE = &H1
Private Const NIF_ICON = &H2
Private Const NIF_TIP = &H4
Private Const NIF_STATE = &H8
Private Const NIF_INFO = &H10
Private Const NIS_HIDDEN = &H1
Private Const NIS_SHAREDICON = &H2
Private Const WM_MOUSEMOVE = &H200
Private Const WM_RBUTTONUP = &H205
Private Type NOTIFYICONDATA
    cbSize        As Long                                                       '�����ݽṹ�Ĵ�С
    hwnd          As Long                                                       '������������ͼ��Ĵ��ھ��
    uID           As Long                                                       '�������������ͼ��ı�ʶ
    uFlags        As Long                                                       '������ͼ�깦�ܿ��ƣ�����������ֵ����ϣ�һ��ȫ������
    uCallbackMessage As Long                                                    '������ͼ��ͨ�������û����򽻻���Ϣ���������Ϣ�Ĵ�����hWnd����
    hIcon         As Long                                                       '�������е�ͼ��Ŀ��ƾ��
    szTip         As String * 128                                               'ͼ�����ʾ��Ϣ����Ҫ����������ʾ��Ϣ����һ��Ҫ128���ԣ�Ϊ64���޷��������ݣ��������ܶ�������ԭ����
    dwState       As Long
    dwStateMask   As Long
    szInfo        As String * 256                                               '������ʾ����
    uTimeout      As Long                                                       '������ʾ��ʾʱ��
    szInfoTitle   As String * 64                                                '������ʾ����
    dwInfoFlags   As Long                                                       '������ʾ���ͣ��� NIIF_*** ����
End Type
Public Enum Ico                                                                 '������ʾ����
    NIIF_NONE = &H0                                                             '��ͼ��
    NIIF_INFO = &H1                                                             '��Ϣͼ��
    NIIF_WARNING = &H2                                                          '����ͼ��
    NIIF_ERROR = &H3                                                            '����ͼ��
    NIIF_GUID = &H4                                                             '���̵�ͼ��
End Enum
Private IconData  As NOTIFYICONDATA
Dim PictureIcon   As StdPicture                                                 'ͼ��
Event PopupMenu()                                                               '�Ҽ��˵��¼�
Event Click()                                                                   '���̵����¼�

'��������
Public Sub Show()
    '����ϵͳ����ͼ��
    With IconData
        .cbSize = Len(IconData)
        .hwnd = UserControl.hwnd                                                '.Extender.Parent.hwnd
        .uID = 0
        .uFlags = NIF_ICON Or NIF_INFO Or NIF_MESSAGE Or NIF_TIP
        .uCallbackMessage = WM_MOUSEMOVE                                        '��Ӧ����¼� 'WM_LBUTTONDOWN
        If PictureIcon Is Nothing Then
            .hIcon = UserControl.Extender.Parent.Icon                           'Ĭ��Ϊ���ڵ�ͼ��
        Else
            .hIcon = PictureIcon
        End If
    End With
    Shell_NotifyIcon NIM_ADD, IconData                                          '��������ͼ��
End Sub

'\\\\\������ʾ
Public Sub ShowBubble(ByVal Title As String, Text As String, Optional ByVal Style As Ico)
    With IconData
        .szInfoTitle = Title & Chr(0)
        .szInfo = Text & Chr(0)
        .dwInfoFlags = Style
    End With
    Shell_NotifyIcon NIM_MODIFY, IconData                                       '�޸�����ͼ�꼰�����Ϣ
End Sub

'��������ͼ��
Public Sub ChangeIcon(Optional ByVal Icon = 0)
    With IconData
        .szInfoTitle = Chr(0)
        .szInfo = Chr(0)
        .hIcon = Icon
    End With
    Shell_NotifyIcon NIM_MODIFY, IconData                                       '��������ͼ��
End Sub

'��������
Public Sub Hide()
    Shell_NotifyIcon NIM_DELETE, IconData                                       'ж������ͼ��
End Sub

'����ر� �ؼ�����ʱ�Զ����������ͼ��
Private Sub UserControl_Terminate()
    Call Hide
End Sub

Property Set Picture(New_Picture As StdPicture)                                 '���̵�ͼƬ
    Set PictureIcon = New_Picture
    Set UserControl.Picture = New_Picture
End Property

Property Get Picture() As StdPicture                                            '�ؼ�����ͼ
    Set Picture = PictureIcon
End Property

'�Ӵ������м�������ֵ
Private Sub UserControl_ReadProperties(PropBag As PropertyBag)
    Set PictureIcon = PropBag.ReadProperty("PictureIcon", Nothing)
    If PictureIcon Is Nothing Then Else Set UserControl.Picture = PictureIcon
End Sub

Private Sub UserControl_Resize()
    UserControl.Width = 32 * 15
    UserControl.Height = 32 * 15
End Sub

'������ֵд���洢��
Private Sub UserControl_WriteProperties(PropBag As PropertyBag)
    Call PropBag.WriteProperty("PictureIcon", PictureIcon, Nothing)
End Sub

'��ȡ���̵��¼�
Private Sub UserControl_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If Screen.TwipsPerPixelX <> 15 Then Exit Sub
    If Button = 1 Then RaiseEvent Click: Exit Sub
    If Button = 2 Then RaiseEvent PopupMenu: Exit Sub
End Sub
                                                                         
