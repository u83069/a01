VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   9264
   ClientLeft      =   4416
   ClientTop       =   1488
   ClientWidth     =   15216
   BeginProperty Font 
      Name            =   "�s�ө���"
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
         Name            =   "�s�ө���"
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
      Top             =   2880
      Width           =   852
   End
   Begin VB.CommandButton Command3 
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "�s�ө���"
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
      Top             =   2280
      Width           =   852
   End
   Begin VB.CommandButton Command2 
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   13.8
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   9960
      TabIndex        =   5
      Top             =   1680
      Width           =   852
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "�s�ө���"
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
      Text            =   "Form1 - �ƻs.frx":0000
      Top             =   1800
      Width           =   9372
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "�s�ө���"
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
   Begin VB.Label Label4 
      Caption         =   "�A�n�ۤv�Ԥ@�ӫ��s"
      Height          =   852
      Left            =   6960
      TabIndex        =   8
      Top             =   600
      Width           =   1692
   End
   Begin VB.Label Label3 
      Caption         =   "Label3"
      Height          =   612
      Left            =   8760
      TabIndex        =   4
      Top             =   600
      Width           =   1332
   End
   Begin VB.Image Image1 
      Height          =   684
      Left            =   12120
      Picture         =   "Form1 - �ƻs.frx":0D03
      Top             =   6120
      Width           =   864
   End
   Begin VB.Image Image3 
      Height          =   3372
      Left            =   10800
      Picture         =   "Form1 - �ƻs.frx":3D5D
      Stretch         =   -1  'True
      Top             =   240
      Width           =   3372
   End
   Begin VB.Label Label2 
      Caption         =   "David-18 DNA���ǦC"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   13.8
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   600
      TabIndex        =   3
      Top             =   1320
      Width           =   4332
   End
   Begin VB.Label Label1 
      Caption         =   "���DNA���q"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   13.8
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   600
      TabIndex        =   2
      Top             =   120
      Width           =   4812
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim p As Integer '�ĥ|�D�ΨӰO����Цbtext2������m
Private Sub Command1_Click()
    '�Ĥ@�D�A�p����Ӽ�

End Sub

Private Sub Command2_Click()
    Command1_Click
    '�ĤG�D�A�e�X���A²�Ƭ�2D
    Me.Cls  '�M��form�W�����Ҧ��@�e
End Sub

Private Sub Command3_Click()
    Command1_Click
    '�ĤT�D�A�e�X���A²�Ƭ�2D�A�����e3��
    Me.Cls  '�M��form�W�����Ҧ��@�e
End Sub

'�ĥ|�D�A�j�M�äϥ�
Private Sub Command4_Click()
    Text2.SetFocus
End Sub

Private Sub Form_Load()
    p = 1
End Sub
