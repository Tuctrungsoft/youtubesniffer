VERSION 5.00
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmMain 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "AG Youtube Video Grabber"
   ClientHeight    =   6825
   ClientLeft      =   1680
   ClientTop       =   3495
   ClientWidth     =   14610
   BeginProperty Font 
      Name            =   "Segoe UI"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   455
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   974
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1575
      Left            =   120
      ScaleHeight     =   103
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   103
      TabIndex        =   1
      Top             =   120
      Width           =   1575
   End
   Begin VB.ListBox lstState 
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   31
      ToolTipText     =   "Program Status"
      Top             =   6480
      Width           =   14175
   End
   Begin VB.Frame Frame5 
      Caption         =   "Download List"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6375
      Left            =   10920
      TabIndex        =   28
      Top             =   0
      Width           =   3495
      Begin VB.CommandButton cmdDownSelected 
         Caption         =   "Download Selected"
         Enabled         =   0   'False
         Height          =   375
         Left            =   120
         TabIndex        =   39
         ToolTipText     =   "Download Selected Video"
         Top             =   5520
         Width           =   1815
      End
      Begin VB.CommandButton cmdDownAll 
         Caption         =   "Download All"
         Enabled         =   0   'False
         Height          =   375
         Left            =   1920
         TabIndex        =   38
         ToolTipText     =   "Download All Video In The Download List"
         Top             =   5520
         Width           =   1455
      End
      Begin VB.CommandButton cmdDelete 
         Caption         =   "Delete Selected"
         Enabled         =   0   'False
         Height          =   375
         Left            =   1920
         TabIndex        =   37
         ToolTipText     =   "Delect Selected Video Entry"
         Top             =   5880
         Width           =   1455
      End
      Begin VB.CommandButton cmdClear 
         Caption         =   "Clear All"
         Height          =   375
         Left            =   120
         TabIndex        =   36
         ToolTipText     =   "Clear All Entries In The Download List"
         Top             =   5880
         Width           =   1815
      End
      Begin MSComctlLib.ListView lvwDownloadList 
         Height          =   5175
         Left            =   120
         TabIndex        =   29
         ToolTipText     =   "Download List"
         Top             =   240
         Width           =   3255
         _ExtentX        =   5741
         _ExtentY        =   9128
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         MousePointer    =   99
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MouseIcon       =   "frmMain.frx":5F32
         NumItems        =   5
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Download Link"
            Object.Width           =   4410
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Quality"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Status"
            Object.Width           =   3528
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Title"
            Object.Width           =   4410
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "File Format"
            Object.Width           =   2540
         EndProperty
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Click On The Node Select Quality"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Left            =   360
      TabIndex        =   27
      Top             =   2040
      Width           =   10215
      Begin MSComctlLib.TreeView tvwQuality 
         Height          =   1815
         Left            =   120
         TabIndex        =   30
         ToolTipText     =   "Click At The Link To Select A Download Link"
         Top             =   240
         Width           =   9855
         _ExtentX        =   17383
         _ExtentY        =   3201
         _Version        =   393217
         LabelEdit       =   1
         Style           =   4
         FullRowSelect   =   -1  'True
         BorderStyle     =   1
         Appearance      =   0
         MousePointer    =   99
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MouseIcon       =   "frmMain.frx":6094
      End
   End
   Begin AGYouTubeVideoGrabber.ctlTray Tray 
      Left            =   0
      Top             =   2160
      _ExtentX        =   847
      _ExtentY        =   847
      PictureIcon     =   "frmMain.frx":61F6
   End
   Begin VB.Timer trmGetClipData 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   0
      Top             =   2400
   End
   Begin MSComDlg.CommonDialog cdSave 
      Left            =   0
      Top             =   3600
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin InetCtlsObjects.Inet InetFileSize 
      Left            =   0
      Top             =   2760
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin VB.Frame Frame2 
      Caption         =   "Main"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   1800
      TabIndex        =   4
      Top             =   0
      Width           =   9015
      Begin VB.CommandButton cmdVisit 
         Caption         =   "Visit"
         Enabled         =   0   'False
         Height          =   255
         Left            =   8040
         TabIndex        =   35
         ToolTipText     =   "Visit YouTube Channel"
         Top             =   1320
         Width           =   735
      End
      Begin VB.TextBox txtLength 
         Height          =   315
         Left            =   6960
         Locked          =   -1  'True
         TabIndex        =   23
         ToolTipText     =   "Video's Duration"
         Top             =   600
         Width           =   1815
      End
      Begin VB.TextBox txtView 
         Height          =   315
         Left            =   4080
         Locked          =   -1  'True
         TabIndex        =   14
         ToolTipText     =   "Video's Views"
         Top             =   600
         Width           =   1575
      End
      Begin VB.TextBox txtLink 
         Height          =   315
         Left            =   120
         TabIndex        =   2
         Text            =   "Paste the YouTube video link here... Press enter when you're done"
         ToolTipText     =   "Enter YouTube Video Link Here"
         Top             =   240
         Width           =   8655
      End
      Begin VB.TextBox txtID 
         Height          =   315
         Left            =   1440
         Locked          =   -1  'True
         TabIndex        =   8
         ToolTipText     =   "YouTube Video ID"
         Top             =   600
         Width           =   1935
      End
      Begin VB.TextBox txtTitle 
         Height          =   315
         Left            =   1440
         Locked          =   -1  'True
         TabIndex        =   7
         ToolTipText     =   "Video's Title"
         Top             =   960
         Width           =   7335
      End
      Begin VB.TextBox txtHome 
         Height          =   315
         Left            =   5400
         Locked          =   -1  'True
         TabIndex        =   6
         ToolTipText     =   "Author's YouTube Channel"
         Top             =   1320
         Width           =   2535
      End
      Begin VB.TextBox txtUploader 
         Height          =   315
         Left            =   1440
         Locked          =   -1  'True
         TabIndex        =   5
         ToolTipText     =   "Video's Author"
         Top             =   1320
         Width           =   2055
      End
      Begin VB.Label Label13 
         Caption         =   "Video Length:"
         Height          =   255
         Left            =   5760
         TabIndex        =   24
         Top             =   600
         Width           =   1215
      End
      Begin VB.Label Label11 
         Caption         =   "Views:"
         Height          =   255
         Left            =   3480
         TabIndex        =   13
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label4 
         Caption         =   "Youtube ID:"
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   600
         Width           =   1215
      End
      Begin VB.Label Label5 
         Caption         =   "Video's Title: "
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   960
         Width           =   1335
      End
      Begin VB.Label Label8 
         Caption         =   "Uploader's Channel:"
         Height          =   255
         Left            =   3600
         TabIndex        =   10
         Top             =   1320
         Width           =   1815
      End
      Begin VB.Label Label10 
         Caption         =   "Uploaded By:"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   1320
         Width           =   1335
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Download Option"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4575
      Left            =   120
      TabIndex        =   3
      Top             =   1800
      Width           =   10695
      Begin VB.CommandButton cmdAddDown 
         Caption         =   "Add To Download List >>>"
         Enabled         =   0   'False
         Height          =   975
         Left            =   7320
         TabIndex        =   34
         ToolTipText     =   "Add Selected Video To Download List "
         Top             =   3240
         Width           =   3135
      End
      Begin VB.CommandButton cmdBrowse 
         Caption         =   "Open Selected Video In Browser"
         Enabled         =   0   'False
         Height          =   495
         Left            =   240
         TabIndex        =   33
         ToolTipText     =   "Open The Video In Your Default Browser"
         Top             =   3720
         Width           =   7095
      End
      Begin VB.CommandButton cmdDown 
         Caption         =   "Download Selected Video"
         Enabled         =   0   'False
         Height          =   495
         Left            =   240
         TabIndex        =   32
         ToolTipText     =   "Download The Selected Video"
         Top             =   3240
         Width           =   7095
      End
      Begin VB.TextBox txtQuality 
         Height          =   315
         Left            =   6000
         Locked          =   -1  'True
         TabIndex        =   26
         ToolTipText     =   "Video's Quality"
         Top             =   2880
         Width           =   1455
      End
      Begin VB.TextBox txtFileSize 
         Height          =   315
         Left            =   8400
         Locked          =   -1  'True
         TabIndex        =   22
         ToolTipText     =   "Video File Size"
         Top             =   2880
         Width           =   2055
      End
      Begin VB.TextBox txtExtension 
         Height          =   315
         Left            =   3720
         Locked          =   -1  'True
         TabIndex        =   20
         ToolTipText     =   "Video's Format"
         Top             =   2880
         Width           =   1335
      End
      Begin VB.TextBox txtCodec 
         Height          =   315
         Left            =   960
         Locked          =   -1  'True
         TabIndex        =   18
         ToolTipText     =   "Video's Codec"
         Top             =   2880
         Width           =   1455
      End
      Begin VB.TextBox txtDownloadLink 
         Height          =   315
         IMEMode         =   3  'DISABLE
         Left            =   1800
         Locked          =   -1  'True
         TabIndex        =   16
         ToolTipText     =   "Selected Download Liink"
         Top             =   2520
         Width           =   8655
      End
      Begin VB.Label Label15 
         Caption         =   "Quality:"
         Height          =   255
         Left            =   5160
         TabIndex        =   25
         Top             =   2880
         Width           =   855
      End
      Begin VB.Label Label12 
         Caption         =   "File Size: "
         Height          =   255
         Left            =   7560
         TabIndex        =   21
         Top             =   2880
         Width           =   1455
      End
      Begin VB.Label Label9 
         Caption         =   "File Format:"
         Height          =   255
         Left            =   2520
         TabIndex        =   19
         Top             =   2880
         Width           =   1335
      End
      Begin VB.Label Label6 
         Caption         =   "Codec:"
         Height          =   255
         Left            =   240
         TabIndex        =   17
         Top             =   2880
         Width           =   1455
      End
      Begin VB.Label Label2 
         Caption         =   "Download Link:"
         Height          =   255
         Left            =   240
         TabIndex        =   15
         Top             =   2520
         Width           =   1575
      End
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   120
      ScaleHeight     =   101
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   101
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Menu mnuTools 
      Caption         =   "Tools"
      Begin VB.Menu mnuSubSavePicAs 
         Caption         =   "Save Screenshot As..."
      End
      Begin VB.Menu mnuCopyLink 
         Caption         =   "Copy Selected Download Link"
      End
      Begin VB.Menu mnuOpti 
         Caption         =   "Optimize My Usage"
      End
      Begin VB.Menu mnuRestart 
         Caption         =   "Restart Grabber"
      End
   End
   Begin VB.Menu mnuLite 
      Caption         =   "Lite Version"
   End
   Begin VB.Menu mnuSetting 
      Caption         =   "Settings"
   End
   Begin VB.Menu mnuAbout 
      Caption         =   "About"
   End
   Begin VB.Menu mnuPopDL 
      Caption         =   "PopUpD"
      Visible         =   0   'False
      Begin VB.Menu mnuDownSelected 
         Caption         =   "Download Selected"
      End
      Begin VB.Menu mnuDownloadAll 
         Caption         =   "Download All"
      End
      Begin VB.Menu mnuClearAll 
         Caption         =   "Clear All"
      End
      Begin VB.Menu mnuDelSelected 
         Caption         =   "Delete Selected"
      End
      Begin VB.Menu mnuLvwCopy 
         Caption         =   "Copy Selected Download Link"
      End
   End
   Begin VB.Menu mnuPopQua 
      Caption         =   "PopUpQua"
      Visible         =   0   'False
      Begin VB.Menu mnuExpand 
         Caption         =   "Expand All"
      End
      Begin VB.Menu mnuCollapse 
         Caption         =   "Collapse All"
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Dim Pm As POINTAPI                                                              'Mouse Cursor Coordinate
'Dim PRct As RECT

'Dim OldFrmSize As POINTAPI                                                      ' Old Form Size
'Dim YoutubeDLink As String, WebSwf As String
'Dim WebHtml As String
'DecodeString As String,
'Public DlFileEx As String
Dim nVideoFileSize As String                                                       'For Getting URL size True=Get
Dim strVideoType As String

'Dim URLCheckTmp As Boolean
'Dim InetFail As Boolean
'Dim PrevWndProc_frmmain As Long


'Private Sub cmbDownloadOption_Click()
'If cmbDownloadOption.ListIndex = 0 Then
'txtDownloadLink.Text = ""
'txtCodec.Text = ""
'txtExtension.Text = ""
'txtFileSize.Text = ""
'cmdBrowse.Enabled = False
'cmdDown.Enabled = False
'txtQuality.Text = ""
'cmdAddDown.Enabled = False
'cmdPlay.Enabled = False
'Exit Sub
'End If
'MsgBox cmbDownloadOption.List(0)
'txtDownloadLink.Text = cmbDownloadOption.List(cmbDownloadOption.ListIndex)
'End Sub

Private Sub cmdAddDown_Click()
    Dim lvwItems As ListItem
    
    Set lvwItems = lvwDownloadList.ListItems.Add(, , txtDownloadLink.Text)
    
    lvwItems.SubItems(1) = txtQuality.Text
    lvwItems.SubItems(2) = "Pending..."
    lvwItems.SubItems(3) = txtTitle.Text
    lvwItems.SubItems(4) = txtExtension.Text
    If lvwDownloadList.ListItems.Count <> 0 Then cmdDownAll.Enabled = True
End Sub

Private Sub cmdBrowse_Click()
    VisitURL txtDownloadLink.Text
End Sub

Private Sub cmdClear_Click()
    lvwDownloadList.ListItems.Clear
    cmdDownAll.Enabled = False
    cmdDownSelected.Enabled = False
    cmdDelete.Enabled = False
End Sub

Private Sub cmdDelete_Click()
    With lvwDownloadList
        Dim nI As Long
        For nI = .ListItems.Count To 1 Step -1
            If .ListItems(nI).Selected = True Then
                .ListItems.Remove nI
            End If
        Next
    End With
    cmdDownAll.Enabled = False
    cmdDownSelected.Enabled = False
    cmdDelete.Enabled = False
End Sub

Private Sub cmdDown_Click()
    Load frmDownload
    Dim lvwItems As ListItem
    Set lvwItems = frmDownload.lvwDownload.ListItems.Add(, , txtDownloadLink.Text)
    frmDownload.DownForm.Caption = txtDownloadLink.Text
    frmDownload.DownTo.Text = App.Path & "\" & txtTitle.Text & Right(txtExtension.Text, Len(txtExtension.Text) - 1)
    'lvwDownloadList.SelectedItem
    lvwItems.SubItems(1) = txtQuality.Text
    lvwItems.SubItems(2) = "Pending..."
    lvwItems.SubItems(3) = txtTitle.Text
    lvwItems.SubItems(4) = txtExtension.Text
    
    
    
    frmDownload.Show 1
    'Unload frmDownload
End Sub

Private Sub cmdDownAll_Click()
    Dim nI As Long
    Load frmDownload
    Dim lvwItems As ListItem
    For nI = 1 To lvwDownloadList.ListItems.Count
        'Debug.Print lvwDownloadList.ListItems.Item(nI)
        'Debug.Print lvwDownloadList.ListItems.Item(nI).SubItems(1)
        Set lvwItems = frmDownload.lvwDownload.ListItems.Add(, , lvwDownloadList.ListItems.Item(nI))
        lvwItems.SubItems(1) = lvwDownloadList.ListItems.Item(nI).SubItems(1)
        lvwItems.SubItems(2) = lvwDownloadList.ListItems.Item(nI).SubItems(2)
        lvwItems.SubItems(3) = lvwDownloadList.ListItems.Item(nI).SubItems(3)
        lvwItems.SubItems(4) = lvwDownloadList.ListItems.Item(nI).SubItems(4)
    Next
    frmDownload.Show 1
End Sub

Private Sub cmdDownSelected_Click()
    Load frmDownload
    Dim lvwItems As ListItem
    Set lvwItems = frmDownload.lvwDownload.ListItems.Add(, , lvwDownloadList.SelectedItem)
    frmDownload.DownForm.Caption = lvwDownloadList.SelectedItem
    frmDownload.DownTo.Text = App.Path & "\" & lvwDownloadList.SelectedItem.SubItems(3) & Right(lvwDownloadList.SelectedItem.SubItems(4), Len(lvwDownloadList.SelectedItem.SubItems(4)) - 1)
    'lvwDownloadList.SelectedItem
    lvwItems.SubItems(1) = lvwDownloadList.SelectedItem.SubItems(1)
    lvwItems.SubItems(2) = lvwDownloadList.SelectedItem.SubItems(2)
    lvwItems.SubItems(3) = lvwDownloadList.SelectedItem.SubItems(3)
    lvwItems.SubItems(4) = lvwDownloadList.SelectedItem.SubItems(4)
    frmDownload.Show 1
End Sub



'Private Sub cmdPlay_Click()
'Load frmPlay
'Dim lx As ListItem
'Set lx = frmPlay.lvwPlayList.ListItems.Add(, , txtDownloadLink.Text)
'lx.SubItems(2) = "Network File"
'frmPlay.Show 1
'End Sub

Private Sub cmdVisit_Click()
    VisitURL (txtHome.Text)
End Sub


Private Sub Form_Load()
    'cmbDownloadOption.AddItem "Please select..."
    'If App.LogMode = 0 Then
    'MsgBox "Don't Run At IDE Please!", vbInformation
    'RemoveMenu GetSystemMenu(hWnd, 0), SC_CLOSE, MF_REMOVE
    'End
    If App.LogMode Then
        Attach Me.hWnd
    End If
    LoopFormControls Me
    Load frmSettings
    trmGetClipData.Enabled = True
    txtTips txtLink, "Paste the YouTube video link here... Press enter when you're done", True
    'If Dir$(App.Path & "\ffmpeg.exe") = "" Then
    'MsgBox "ffmpeg.exe not found" & vbNewLine & "Please Redownload!", vbCritical, "Error!"
    'End
    'End If
    'If Dir$(App.Path & "\BAK_" & App.EXEName & ".exe") <> "" Then
    'Kill App.Path & "\BAK_" & App.EXEName & ".exe"
    'End If
    'If Dir$(App.Path & "\ffplay.exe") = "" Then
    'MsgBox "ffplay.exe not found" & vbNewLine & "Please Redownload!", vbCritical, "Error!"
    'End
    'End If
    'With OldPicSize
    '.lvwItems = Picture2.Width
    '.y = Picture2.Height
    'End With
    'With OldFrmSize
    '.lvwItems = Me.Width
    '.y = Me.Height
    'End With
    
    'cmbDownloadOption.ListIndex = 0
    
    'lstAdd "Loading User Settings"
    
    'mnuMinToTray.Checked = GetIni("General", "MinimizeToTray", True, App.Path & "\YoutubeGrabberOption.ini")
    'mnuAppActivate.Checked = GetIni("Main", "ActivateApp", True, App.Path & "\YoutubeGrabberOption.ini")
    'mnuGetLinkClip.Checked = GetIni("Main", "AutoGetLink", True, App.Path & "\YoutubeGrabberOption.ini")
    'mnuCheckUpAuto.Checked = GetIni("Main", "AutoUpdate", True, App.Path & "\YoutubeGrabberOption.ini")
    'mnuShowStat.Checked = GetIni("General", "ShowStatusWindow", True, App.Path & "\YoutubeGrabberOption.ini")
    'lstAdd "User Settings Loaded"
    'If mnuShowStat.Checked Then Form2.Show
    'Form2.Width = Me.Width
    'Form2.lstState.Width = Me.Width
    'pWndProc = GetWindowLong(Me.hwnd, GWL_WNDPROC)
    'SetWindowLong Me.hwnd, GWL_WNDPROC, AddressOf WindowProc
    'PrevWndProc_frmmain = GetWindowLong(Me.hwnd, GWL_WNDPROC)
    'Call SetWindowLong(Me.hwnd, GWL_WNDPROC, AddressOf SubWndProc_frmmain)
    
    
    'lvwFullRow lvwDownloadList
    
    
    'Picture3.FontSize = 8
    'Picture3.ForeColor = vbRed
    'Picture3.Print "nI Still Can't"
    'Picture3.Print "Fix This..."
    'Picture3.Print "ScreenShot"
    'Picture3.Print "Currently"
    'Picture3.Print "Unavailable."
    'Picture3.ForeColor = vbBlue
    'Picture3.Print "Sorry :("
    'Picture3.Print "   ---GaryNg"
    
    'lblVer.Caption = "Build: " & App.Major & "." & App.Minor & "." & App.Revision & "  - By GaryNg from AG Dev Team"
End Sub

Private Sub Form_Resize()
    If Me.WindowState = 1 And frmSettings.swhMinimize.Value = True Then
        Me.Hide
        'Form2.Hide
        Tray.Show
        Tray.ShowBubble App.Title, "Click Me To Restore", NIIF_GUID
        'If frmUpdate.Visible = True Then frmUpdate.Visible = False
    End If
    
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    'SetWindowLong Me.hwnd, GWL_WNDPROC, pWndProc
    Tray.Hide
    
    
    'Unload Form2
    'Unload frmConvert
    Unload frmDownload
    Unload frmMain
    'Unload frmPlay
    Unload frmAbout
    ' Unload frmSupportedFileType
    Unload frmUpdate
    Unload frmSettings
    Unload Me
    If App.LogMode Then
        Detach Me.hWnd
        TerminateProcess GetCurrentProcess, ByVal 0&
    End If
    
    
End Sub

Private Sub InetFileSize_StateChanged(ByVal State As Integer)
    On Error Resume Next
    'Dim vtData As String
    If State = 12 Then
        nVideoFileSize = VBStrFormatByteSize(InetFileSize.GetHeader("content-length"))
        strVideoType = Replace(Replace(Replace(InetFileSize.GetHeader("content-type"), "x-", ""), "video/", ""), "3gpp", "3gp")
        'vtData = InetFileSize.GetHeader("content-length")
        'MsgBox InetFileSize.GetHeader("content-type")
        'Do While InetFileSize.StillExecuting
        'DoEvents
        'Loop
        'Dim DataTmp As String
        'DataTmp = Replace$(vtData, vbCrLf, "")
        'Debug.Print DataTmp
        
        'VBStrFormatByteSize (Val(Mid$(DataTmp, InStr(LCase$(DataTmp), "content-length: ") + Len("content-length: "), InStr(LCase$(DataTmp), "connection: ") - InStr(LCase$(DataTmp), "content-length: ") - Len("content-length: "))))
    End If
End Sub

Private Sub lvwDownloadList_ItemClick(ByVal Item As ListItem)
    cmdDelete.Enabled = True
    cmdDownSelected.Enabled = True
    cmdDownAll.Enabled = True
End Sub

Private Sub lvwDownloadList_MouseDown(Button As Integer, Shift As Integer, lvwItems As Single, Y As Single)
    If lvwDownloadList.ListItems.Count = 0 Then Exit Sub
    If Button = 2 And lvwDownloadList.SelectedItem <> "" Then
        PopupMenu mnuPopDL
    End If
End Sub

Private Sub mnuAbout_Click()
    frmAbout.Show 1
End Sub

Private Sub mnuClearAll_Click()
    lvwDownloadList.ListItems.Clear
    cmdDownAll.Enabled = False
    cmdDownSelected.Enabled = False
    cmdDelete.Enabled = False
End Sub

Private Sub mnuCollapse_Click()
    Dim nI As Long
    For nI = 1 To tvwQuality.Nodes.Count
        tvwQuality.Nodes(nI).Expanded = False
    Next nI
End Sub

Private Sub mnuCopyLink_Click()
    If txtDownloadLink.Text <> "" Then
        Clipboard.Clear
        Clipboard.SetText txtDownloadLink.Text
        lstAdd "Download Link Copied."
        
    End If
End Sub

Private Sub mnuDelSelected_Click()
    With lvwDownloadList
        Dim nI As Long
        For nI = .ListItems.Count To 1 Step -1
            If .ListItems(nI).Selected = True Then
                .ListItems.Remove nI
            End If
        Next
    End With
    cmdDownAll.Enabled = False
    cmdDownSelected.Enabled = False
    cmdDelete.Enabled = False
End Sub

Private Sub mnuDownloadAll_Click()
    Dim nI As Long
    Load frmDownload
    Dim lvwItems As ListItem
    For nI = 1 To lvwDownloadList.ListItems.Count
        'Debug.Print lvwDownloadList.ListItems.Item(nI)
        'Debug.Print lvwDownloadList.ListItems.Item(nI).SubItems(1)
        Set lvwItems = frmDownload.lvwDownload.ListItems.Add(, , lvwDownloadList.ListItems.Item(nI))
        lvwItems.SubItems(1) = lvwDownloadList.ListItems.Item(nI).SubItems(1)
        lvwItems.SubItems(2) = lvwDownloadList.ListItems.Item(nI).SubItems(2)
        lvwItems.SubItems(3) = lvwDownloadList.ListItems.Item(nI).SubItems(3)
        lvwItems.SubItems(4) = lvwDownloadList.ListItems.Item(nI).SubItems(4)
    Next
    frmDownload.Show 1
End Sub

Private Sub mnuDownSelected_Click()
    Load frmDownload
    Dim lvwItems As ListItem
    Set lvwItems = frmDownload.lvwDownload.ListItems.Add(, , lvwDownloadList.SelectedItem)
    frmDownload.DownForm.Caption = lvwDownloadList.SelectedItem
    frmDownload.DownTo.Text = App.Path & "\" & lvwDownloadList.SelectedItem.SubItems(3) & Right(lvwDownloadList.SelectedItem.SubItems(4), Len(lvwDownloadList.SelectedItem.SubItems(4)) - 1)
    'lvwDownloadList.SelectedItem
    lvwItems.SubItems(1) = lvwDownloadList.SelectedItem.SubItems(1)
    lvwItems.SubItems(2) = lvwDownloadList.SelectedItem.SubItems(2)
    lvwItems.SubItems(3) = lvwDownloadList.SelectedItem.SubItems(3)
    lvwItems.SubItems(4) = lvwDownloadList.SelectedItem.SubItems(4)
    frmDownload.Show 1
End Sub

Private Sub mnuExpand_Click()
    Dim nI As Long
    For nI = 1 To tvwQuality.Nodes.Count
        tvwQuality.Nodes(nI).Expanded = True
    Next nI
End Sub



Private Sub mnuLite_Click()
    Load frmMainLite
    frmMainLite.Show
    Me.Hide
End Sub

Private Sub mnuLvwCopy_Click()
    Clipboard.Clear
    Clipboard.SetText lvwDownloadList.SelectedItem.Text
    lstAdd "Link Copied"
End Sub


Private Sub mnuOpti_Click()
    OptiUsage GetCurrentProcess
End Sub


Private Sub mnuRestart_Click()
    Do Until OpenProcess(&H400, 0, Shell(App.Path & "\" & App.EXEName & ".exe")) <> 0
        DoEvents
    Loop
    End
End Sub

'Private Sub mnuPlayer_Click()
'frmPlay.Show 1
'End Sub

Private Sub mnuSetting_Click()
    frmSettings.Show
End Sub

'Private Sub mnuShowStat_Click()
'mnuShowStat.Checked = Not mnuShowStat.Checked
'Form2.Visible = Not Form2.Visible
'WriteKey "General", "ShowStatusWindow", mnuShowStat.Checked, App.Path & "\YoutubeGrabberOption.ini"
'End Sub

Private Sub mnuSubSavePicAs_Click()
    With cdSave
        .DefaultExt = ".bmp"
        .Filter = "Bitmap File (*.BMP)|*.BMP"
        .ShowSave
        If Len(.FileName) = 0 Then
            Exit Sub
        Else
            If Dir$(.FileName) <> "" Then
                Static Num As Integer
                Dim TextPicTmp As String
                If TextPicTmp = "" Then TextPicTmp = .FileName
                Do Until Dir$(.FileName) = ""
                    If Num = 0 Then Num = 1
                    .FileName = Mid$(TextPicTmp, 1, InStrRev(TextPicTmp, ".") - 1) & "(" & Num & ")" & Right$(TextPicTmp, Len(TextPicTmp) - InStrRev(TextPicTmp, ".") + 1)
                    Num = Num + 1
                Loop
            End If
            Picture1.Picture = Picture1.Image
            SavePicture Picture1.Picture, .FileName
            lstAdd "ScreenShot Saved."
            
        End If
    End With
End Sub

'Private Sub Picture2_Click()
'Static Run As Boolean
'If Run = False Then
'Picture2.Height = Picture1.Height + 200
' Me.Height = Picture1.Height + 1000
'Picture2.Width = Picture1.Width + 200
'Me.Width = Picture1.Width + 1000
'FitPictureToBox Picture1, Picture2
'Run = True
'ElseIf Run = True Then
'Picture2.Height = OldPicSize.y
'Picture2.Width = OldPicSize.lvwItems
'Me.Height = OldFrmSize.y
'Me.Width = OldFrmSize.lvwItems
'FitPictureToBox Picture1, Picture2
'Run = False
'End If
'End Sub

'Private Sub optDownload_Click(Index As Integer)
'If txtDownload(Index).Text <> "" Then
'Load frmDownload
'Select Case Index
'Case Is <= 1
'DlFileEx = ".flv"
'Case 2
'DlFileEx = ".mp4"
'End Select
'If frmDownload.Visible = False Then
'frmDownload.DownForm = txtDownload(Index).Text
'Else
'Dim NewDownForm As New frmDownload
'Load NewDownForm
'With NewDownForm
'.DownForm = txtDownload(Index).Text
'.Show
'End With
'End If
'cmdDown.Enabled = True
'cmdBrowse.Enabled = True
'URLForVisit = txtDownload(Index).Text

'Else
'cmdDown.Enabled = False
'cmdBrowse.Enabled = True
'End If

'End Sub

'Public Sub LoadWebImage(ByVal PicSource As PictureBox, PicDestination As PictureBox)
'On Error Resume Next
'Dim byt() As Byte
'Inet1.Cancel
'byt() = Inet1.OpenURL(Mid$(WebHtml, InStr(WebHtml, "<meta property=""og:image"" content=") + 35, InStr(WebHtml, "hqdefault.jpg"">") - InStr(WebHtml, "<meta property=""og:image"" content=") - 35 + 13), icByteArray) '����ͼƬ�ĵ�ַ


'Set PicSource.Picture = ShowPictureFromStream("http://www.vbgood.com/vucenter/data/avatar/000/14/08/45_avatar_middle.jpg")
'FitPictureToBox PicSource, PicDestination

'End Sub

Private Sub Tray_Click()
    Me.WindowState = 0
    Me.Show
    'Form2.Show
    Tray.Hide
    'If frmUpdate.Visible = False And Opened <> 1 Then frmUpdate.Visible = True
End Sub

Private Sub trmGetClipData_Timer()
    On Error Resume Next
    If frmSettings.swhAutoGetLink.Value = False Then Exit Sub
    If ExtractMatch(Clipboard.GetText, "v=([A-Za-z0-9-_]+)") = "" Then Exit Sub
    If InStr(LCase$(Clipboard.GetText), "www.youtube.com") <> 0 And LCase$(txtLink.Text) <> LCase$(Clipboard.GetText) Then
        lstAdd "Found Link In Clipboard"
        txtLink.Text = Clipboard.GetText
        If frmSettings.swhActivateApp.Value = True Then
            AppActivate Me.Caption
        End If
        txtLink_KeyDown 13, 0
    End If
    Exit Sub
End Sub

Private Sub tvwQuality_MouseDown(Button As Integer, Shift As Integer, lvwItems As Single, Y As Single)
    If Button = 2 And tvwQuality.Nodes.Count > 0 Then
        PopupMenu mnuPopQua
    End If
End Sub

Private Sub tvwQuality_NodeClick(ByVal Node As Node)
    If tvwQuality.SelectedItem = txtDownloadLink.Text Then Exit Sub
    Dim nI As Long
    If tvwQuality.SelectedItem.children <> 0 Then Exit Sub
    'If tvwQuality.SelectedItem.Child.Selected = False Then Exit Sub
    'If tvwQuality.SelectedItem.Child.Parent.Selected Then Exit Sub
    
    If tvwQuality.SelectedItem.children = 0 Then
        
        For nI = 1 To tvwQuality.Nodes.Count
            If tvwQuality.Nodes(nI).Selected Then
                lstAdd "Quality Selected. Analyzing"
                
                txtDownloadLink.Text = tvwQuality.Nodes(nI).Text
                'Dim h As Long
                'For h = 0 To cmbDownloadOption.ListCount - 1
                'If cmbDownloadOption.List(h) = tvwQuality.Nodes(nI).Text Then
                'cmbDownloadOption.ListIndex = h
                'Exit For
                'End If
                '    Next
                'cmbDownloadOption.List(cmbDownloadOption.ListIndex) = tvwQuality.Nodes(nI).Text
            End If
        Next nI
    End If
End Sub

Private Sub txtDownloadLink_Change()
    On Error GoTo goterr
    If txtDownloadLink.Text = "" Then Exit Sub
    lstAdd "Getting Video Info"
    tvwQuality.Enabled = False
    'If InStr(txtDownloadLink.Text, "type=video/webm") Then
    'txtCodec.Text = "video/webm"
    'txtExtension.Text = "*.webm"
    'ElseIf InStr(txtDownloadLink.Text, "&type=video/mp4") Then
    'txtCodec.Text = "video/mp4"
    'txtExtension.Text = "*.mp4"
    'ElseIf InStr(txtDownloadLink.Text, "&type=video/lvwItems-flv") Then
    'txtCodec.Text = "video/lvwItems-flv"
    'txtExtension.Text = "*.flv"
    'End If
    
    lstAdd "Getting Video Quality"
    
    txtQuality.Text = ExtractMatch(txtDownloadLink.Text, "&quality=([a-zA-Z0-9]*)")
    lstAdd "Video Quality Loaded"
    lstAdd "Getting Video File Size"
    InetFileSize.Cancel
    InetFileSize.Execute txtDownloadLink.Text, "GET"
    Do Until nVideoFileSize <> ""
        DoEvents
    Loop
    txtFileSize.Text = nVideoFileSize
    nVideoFileSize = ""
    lstAdd "Video File Size Loaded"
    txtCodec.Text = strVideoType
    strVideoType = Replace(strVideoType, "lvwItems-", "")
    txtExtension.Text = "*." & strVideoType
    
    cmdBrowse.Enabled = True
    cmdDown.Enabled = True
    cmdAddDown.Enabled = True
    tvwQuality.Enabled = True
    'cmdPlay.Enabled = True
    Load frmDownload
    frmDownload.DownForm.Caption = txtDownloadLink.Text
    'cmbDownloadOption.SetFocus
    lstAdd "Everything Done"
    OptiUsage GetCurrentProcess
    Exit Sub
goterr:
    lstAdd Err.Description
    
    'cmbDownloadOption.Enabled = True
    txtDownloadLink.Text = ""
    txtCodec.Text = ""
    txtExtension.Text = ""
    InetFileSize.Cancel
    Unload frmDownload
End Sub

Private Sub txtLink_GotFocus()
    If txtLink.Text = "Paste the YouTube video link here... Press enter when you're done" Then
        txtTips txtLink, "Paste the YouTube video link here... Press enter when you're done", False
    End If
End Sub

Private Sub txtLink_KeyDown(KeyCode As Integer, Shift As Integer)
    Dim nTimeCount As Long
    nTimeCount = timeGetTime
    On Error Resume Next
    If KeyCode = 13 Then
        If txtLink.Text = "" Then CleanUp: Exit Sub
        txtLink.Enabled = False
        tvwQuality.SetFocus
        'Dim lvwItems As Integer
        CleanUp
        txtLink.Font.Italic = False
        txtLink.ForeColor = vbBlack
        trmGetClipData.Enabled = False
        If InStr(LCase(txtLink.Text), "www.youtube.com") = 0 Then lstAdd "Invalid Link": txtLink.Text = "": txtLink.SetFocus: Exit Sub
        lstAdd "Getting Web Source Code"
        If SeperateSWF(txtLink.Text) = "ERROR" Then
            lstAdd "Hey! No data recieved! Check your network connection"
            CleanUp
            Exit Sub
        End If
        lstAdd "Loading Video's Info"
        LoadVideoInfo txtLink.Text, txtID, txtTitle, txtView, txtLength, txtUploader, txtHome, Picture1, Picture2
        Dim strDownloadLinks() As String
        lstAdd "Processing Download Links"
        ProcessDownloadLinks strDownloadLinks
        cmdVisit.Enabled = True
        Dim tvwNode As Node
        lstAdd "Analyzing And Catergorizing Video Quality"
        
        Dim strQuality As String
        Dim nI As Long
        For nI = 1 To UBound(strDownloadLinks)
            strQuality = LCase(ExtractMatch(strDownloadLinks(nI), "&quality=([a-zA-Z0-9]*)"))
            If strQuality <> "" Then
                Set tvwNode = tvwQuality.Nodes.Add(, , strQuality, strQuality)
                Set tvwNode = tvwQuality.Nodes.Add(strQuality, tvwChild, , strDownloadLinks(nI))
            End If
            DoEvents
        Next
        lstAdd "Everything Done. " & "TIME:" & timeGetTime - nTimeCount & "ms"
        'MsgBox "TIME ELAPSED : " & timeGetTime - tm & "ms"
        OptiUsage GetCurrentProcess
    End If
    trmGetClipData.Enabled = True
    Exit Sub
goterr:
    lstAdd "Program Error!"
    CleanUp
    txtLink.Enabled = True
    trmGetClipData.Enabled = True
End Sub

Private Sub CleanUp()
    'cmbDownloadOption.Clear
    'cmbDownloadOption.AddItem "Please Select..."
    'cmbDownloadOption.ListIndex = 0
    txtID.Text = ""
    'txtLike.Text = ""
    'txtDislikes.Text = ""
    txtView.Text = ""
    tvwQuality.Nodes.Clear
    txtLink.Enabled = True
    txtTitle.Text = ""
    txtLength.Text = ""
    txtUploader.Text = ""
    txtHome.Text = ""
    txtDownloadLink.Text = ""
    txtCodec.Text = ""
    txtExtension.Text = ""
    txtQuality.Text = ""
    txtFileSize.Text = ""
    'txtLink.Text = ""
    'txtLink.Enabled = True
    Picture1 = LoadPicture("")
    Picture2 = LoadPicture("")
    'txtTips txtLink, "Paste the YouTube video link here... Press enter when you're done", False
    OptiUsage GetCurrentProcess
End Sub

Private Sub lstAdd(ByVal InName As String)
    lstState.AddItem Date & "-" & Time & ": " & InName
    lstState.ListIndex = lstState.NewIndex
End Sub

Private Sub txtLink_LostFocus()
    If txtLink.Text = "" Then
        txtTips txtLink, "Paste the YouTube video link here... Press enter when you're done", True
    End If
End Sub
