VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   9264
   ClientLeft      =   4416
   ClientTop       =   1488
   ClientWidth     =   15216
   BeginProperty Font 
      Name            =   "新細明體"
      Size            =   16.2
      Charset         =   136
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   9264
   ScaleWidth      =   15216
   Begin VB.CommandButton Command4 
      Caption         =   "4"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   13.8
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   9960
      TabIndex        =   8
      Top             =   2880
      Width           =   852
   End
   Begin VB.CommandButton Command3 
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   13.8
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   9960
      TabIndex        =   7
      Top             =   2280
      Width           =   852
   End
   Begin VB.CommandButton Command2 
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   13.8
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   9960
      TabIndex        =   6
      Top             =   1680
      Width           =   852
   End
   Begin VB.CommandButton Command1 
      Caption         =   "請問這個David-18病毒有多少個刺突"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   13.8
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   972
      Left            =   6000
      TabIndex        =   2
      Top             =   480
      Width           =   2532
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   13.8
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   7212
      Left            =   600
      MultiLine       =   -1  'True
      TabIndex        =   1
      Text            =   "Form1.frx":0000
      Top             =   1800
      Width           =   9372
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   13.8
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   600
      TabIndex        =   0
      Text            =   "GATTCATCTAGAAT"
      Top             =   720
      Width           =   5292
   End
   Begin VB.Label Label3 
      Caption         =   "Label3"
      Height          =   612
      Left            =   8760
      TabIndex        =   5
      Top             =   600
      Width           =   1332
   End
   Begin VB.Image Image1 
      Height          =   684
      Left            =   12120
      Picture         =   "Form1.frx":0D03
      Top             =   6120
      Width           =   864
   End
   Begin VB.Image Image3 
      Height          =   3372
      Left            =   10800
      Picture         =   "Form1.frx":3D5D
      Stretch         =   -1  'True
      Top             =   240
      Width           =   3372
   End
   Begin VB.Label Label2 
      Caption         =   "David-18 DNA全序列"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   13.8
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   600
      TabIndex        =   4
      Top             =   1320
      Width           =   4332
   End
   Begin VB.Label Label1 
      Caption         =   "刺突DNA片段"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   13.8
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   600
      TabIndex        =   3
      Top             =   120
      Width           =   4812
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim p As Integer '第四題用來記錄游標在text2中的位置
Private Sub Command1_Click()
    '第一題，計算刺突個數
    a = Split(Text2, Text1)
    Label3 = UBound(a)
End Sub

Private Sub Command2_Click()
    Command1_Click
    '第二題，畫出刺突，簡化為2D
    Me.Cls  '清除form上面的所有作畫
    Me.DrawWidth = 2  '設定筆觸寬度
    X1 = (Image1.Left + Image1.Width / 2)
    Y1 = (Image1.Top + Image1.Height / 2)
    Me.Circle (X1, Y1), 2000, vbRed   '畫圓(座標),半徑，顏色
    
    Me.DrawWidth = 6
    For i = 1 To Label3
        X1 = (Image1.Left + Image1.Width / 2) + 2000 * Cos(i / Label3 * 2 * 3.14) 'cos(n)，n的值由0-2PI
        Y1 = (Image1.Top + Image1.Height / 2) + 2000 * Sin(i / Label3 * 2 * 3.14)
        
        X2 = (Image1.Left + Image1.Width / 2) + 2300 * Cos(i / Label3 * 2 * 3.14) 'cos(n)，n的值由0-2PI
        Y2 = (Image1.Top + Image1.Height / 2) + 2300 * Sin(i / Label3 * 2 * 3.14)
        
        Line (X1, Y1)-(X2, Y2), vbRed
        Me.Circle (X2, Y2), 200, vbRed
        
        Me.FontSize = 16
        Print i
    Next
End Sub

Private Sub Command3_Click()
    Command1_Click
    '第三題，畫出刺突，簡化為2D，中間畫3個
    Me.Cls  '清除form上面的所有作畫
    Me.DrawWidth = 2  '設定筆觸寬度
    X1 = (Image1.Left + Image1.Width / 2)
    Y1 = (Image1.Top + Image1.Height / 2)
    Me.Circle (X1, Y1), 2000, vbRed   '畫圓(座標),半徑，顏色
    
    Me.DrawWidth = 6
    For i = 1 To 3
        X2 = (Image1.Left + Image1.Width / 2) + 1000 * Cos(i / 3 * 2 * 3.14) 'cos(n)，n的值由0-2PI
        Y2 = (Image1.Top + Image1.Height / 2) + 1000 * Sin(i / 3 * 2 * 3.14)
        'Line (X1, Y1)-(X2, Y2), vbRed
        Me.Circle (X2, Y2), 200, vbRed
        
        Me.FontSize = 16
        Print i
    Next
    For i = 1 To Label3 - 3
        X1 = (Image1.Left + Image1.Width / 2) + 2000 * Cos(i / (Label3 - 3) * 2 * 3.14) 'cos(n)，n的值由0-2PI
        Y1 = (Image1.Top + Image1.Height / 2) + 2000 * Sin(i / (Label3 - 3) * 2 * 3.14)
        
        X2 = (Image1.Left + Image1.Width / 2) + 2300 * Cos(i / (Label3 - 3) * 2 * 3.14) 'cos(n)，n的值由0-2PI
        Y2 = (Image1.Top + Image1.Height / 2) + 2300 * Sin(i / (Label3 - 3) * 2 * 3.14)
        
        Line (X1, Y1)-(X2, Y2), vbRed
        Me.Circle (X2, Y2), 200, vbRed
        
        Me.FontSize = 16
        Print i + 3
    Next
End Sub

'第四題、搜尋並反白
Private Sub Command4_Click()
    Text2.SetFocus
    p = InStr(p, Text2, Text1)
    Print p
    If p = 0 Then
        Print "not found"
        p = 1
    Else
        Text2.SelStart = p - 1
        Text2.SelLength = Len(Text1)
        p = p + 1  '往後移1位，可以避免每次找到同一個
    End If
End Sub

Private Sub Form_Load()
    p = 1
End Sub
