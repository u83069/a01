VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   10224
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   13824
   LinkTopic       =   "Form1"
   ScaleHeight     =   10224
   ScaleWidth      =   13824
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command3 
      Height          =   492
      Index           =   0
      Left            =   480
      Style           =   1  '圖片外觀
      TabIndex        =   7
      Top             =   4080
      Visible         =   0   'False
      Width           =   492
   End
   Begin VB.CommandButton Command2 
      Height          =   492
      Index           =   0
      Left            =   480
      Style           =   1  '圖片外觀
      TabIndex        =   6
      Top             =   2520
      Visible         =   0   'False
      Width           =   492
   End
   Begin VB.TextBox Text3 
      Height          =   492
      Left            =   1440
      TabIndex        =   2
      Top             =   1680
      Width           =   5292
   End
   Begin VB.TextBox Text2 
      Height          =   492
      Left            =   1440
      TabIndex        =   1
      Top             =   1080
      Width           =   5292
   End
   Begin VB.TextBox Text1 
      Height          =   492
      Left            =   1440
      TabIndex        =   0
      Text            =   "ATCGATCGATCGATCGAATTCCGG"
      Top             =   480
      Width           =   5292
   End
   Begin VB.Label Label4 
      Caption         =   "你要自己加一個按鈕"
      Height          =   612
      Left            =   7680
      TabIndex        =   8
      Top             =   360
      Width           =   2772
   End
   Begin VB.Label Label3 
      Caption         =   "Amino Acid"
      Height          =   372
      Left            =   240
      TabIndex        =   5
      Top             =   1680
      Width           =   1092
   End
   Begin VB.Label Label2 
      Caption         =   "mRNA"
      Height          =   372
      Left            =   240
      TabIndex        =   4
      Top             =   1080
      Width           =   732
   End
   Begin VB.Label Label1 
      Caption         =   "David-18 DNA"
      Height          =   372
      Left            =   240
      TabIndex        =   3
      Top             =   480
      Width           =   1092
   End
   Begin VB.Image Image1 
      Height          =   8400
      Left            =   240
      Picture         =   "Form1 - 複製.frx":0000
      Stretch         =   -1  'True
      Top             =   4200
      Width           =   13440
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    '第一題，給定一DNA片段，請產生mRNA片段
    
    '第二題，從text2的mRNA片段，產生amino acid串列，3個為一組()包起來
    
    '第三題，給定一dna片段text1，請劃出雙股結構
    For i = 1 To Command2.UBound   '刪除前次複製的物件陣列
        Unload Command2(i)
    Next
    For i = 1 To Len(Text1)   '重新產生物件陣列，上排的DNA序列
        Load Command2(i)
        Command2(i).Left = Command2(i - 1).Left + Command2(i - 1).Width
        Command2(i).Caption = Mid(Text1, i, 1)
        Command2(i).Visible = True
    Next
    
    '第四題，螺旋
    
End Sub

Private Sub Form_Load()
    Command3(0).Top = Command2(0).Top + Command2(0).Height * 5
End Sub

