VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9936
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   13824
   LinkTopic       =   "Form1"
   ScaleHeight     =   9936
   ScaleWidth      =   13824
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command3 
      Height          =   492
      Index           =   0
      Left            =   480
      Style           =   1  '圖片外觀
      TabIndex        =   8
      Top             =   4080
      Visible         =   0   'False
      Width           =   492
   End
   Begin VB.CommandButton Command2 
      Height          =   492
      Index           =   0
      Left            =   480
      Style           =   1  '圖片外觀
      TabIndex        =   7
      Top             =   2520
      Visible         =   0   'False
      Width           =   492
   End
   Begin VB.TextBox Text3 
      Height          =   492
      Left            =   1440
      TabIndex        =   3
      Top             =   1680
      Width           =   5292
   End
   Begin VB.CommandButton Command1 
      Caption         =   "David 18"
      Height          =   492
      Left            =   6960
      TabIndex        =   2
      Top             =   480
      Width           =   1572
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
   Begin VB.Label Label3 
      Caption         =   "Amino Acid"
      Height          =   372
      Left            =   240
      TabIndex        =   6
      Top             =   1680
      Width           =   1092
   End
   Begin VB.Label Label2 
      Caption         =   "mRNA"
      Height          =   372
      Left            =   240
      TabIndex        =   5
      Top             =   1080
      Width           =   732
   End
   Begin VB.Label Label1 
      Caption         =   "David-18 DNA"
      Height          =   372
      Left            =   240
      TabIndex        =   4
      Top             =   480
      Width           =   1092
   End
   Begin VB.Image Image1 
      Height          =   8400
      Left            =   0
      Picture         =   "Form1.frx":0000
      Stretch         =   -1  'True
      Top             =   3240
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
    For i = 1 To Len(Text1)
        If Mid(Text1, i, 1) = "A" Then
            Text2 = Text2 & "U"
        ElseIf Mid(Text1, i, 1) = "T" Then
            Text2 = Text2 & "A"
        ElseIf Mid(Text1, i, 1) = "C" Then
            Text2 = Text2 & "G"
        ElseIf Mid(Text1, i, 1) = "G" Then
            Text2 = Text2 & "C"
        Else
            MsgBox "X men"
        End If
    Next
    
    '第二題，從text2的mRNA片段，產生amino acid串列，3個為一組()包起來
    For i = 1 To Len(Text2)
        If i Mod 3 = 1 Then
            Text3 = Text3 & "("
        End If
        If Mid(Text2, i, 1) = "A" Then
            Text3 = Text3 & "U"
        ElseIf Mid(Text2, i, 1) = "U" Then
            Text3 = Text3 & "A"
        ElseIf Mid(Text2, i, 1) = "C" Then
            Text3 = Text3 & "G"
        ElseIf Mid(Text2, i, 1) = "G" Then
            Text3 = Text3 & "C"
        Else
            MsgBox "X men"
        End If
        If i Mod 3 = 0 Then
            Text3 = Text3 & ")"
        End If
    Next
    
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
    For i = 1 To Command3.UBound   '下排DNA序列
        Unload Command3(i)
    Next
    For i = 1 To Len(Text1)
        Load Command3(i)
        Command3(i).Left = Command3(i - 1).Left + Command3(i - 1).Width
        If Mid(Text1, i, 1) = "A" Then   '根據上排產生下排DNA序列
            Command3(i).Caption = "T"
            Command3(i).BackColor = QBColor(10)  '塗色
            Command2(i).BackColor = QBColor(11)
        ElseIf Mid(Text1, i, 1) = "T" Then
            Command3(i).Caption = "A"
            Command3(i).BackColor = QBColor(11)
            Command2(i).BackColor = QBColor(10)
        ElseIf Mid(Text1, i, 1) = "C" Then
            Command3(i).Caption = "G"
            Command3(i).BackColor = QBColor(12)
            Command2(i).BackColor = QBColor(14)
        ElseIf Mid(Text1, i, 1) = "G" Then
            Command3(i).Caption = "C"
            Command3(i).BackColor = QBColor(14)
            Command2(i).BackColor = QBColor(12)
        Else
            MsgBox "X men"
        End If
        Command3(i).Visible = True
    Next
    Cls
    For i = 1 To Len(Text1)  '畫紅線
        Line (Command2(i).Left + Command2(i).Width / 2, Command2(i).Top + Command2(i).Height)-(Command3(i).Left + Command3(i).Width / 2, Command3(i).Top), vbRed
    Next

    '第四題，螺旋
    For i = 1 To Command2.UBound
        m = i Mod 10
        If m = 0 Then
            Command2(i).Top = Command2(0).Top
        ElseIf m <= 5 Then
            Command2(i).Top = Command2(i - 1).Top + Command2(i - 1).Height
        Else
            Command2(i).Top = Command2(i - 1).Top - Command2(i - 1).Height
        End If

        If m = 0 Then
            Command3(i).Top = Command3(0).Top
        ElseIf m <= 5 Then
            Command3(i).Top = Command3(i - 1).Top - Command3(i - 1).Height
        Else
            Command3(i).Top = Command3(i - 1).Top + Command3(i - 1).Height
        End If
    Next
    Cls
    For i = 1 To Len(Text1)
        Line (Command2(i).Left + Command2(i).Width / 2, Command2(i).Top + Command2(i).Height)-(Command3(i).Left + Command3(i).Width / 2, Command3(i).Top), vbRed
    Next
End Sub

Private Sub Form_Load()
    Command3(0).Top = Command2(0).Top + Command2(0).Height * 5
End Sub

