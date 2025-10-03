VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Main 
   Caption         =   "Surface - Groundwater Linkage Program  :: V. 1.0.0b"
   ClientHeight    =   8700
   ClientLeft      =   3135
   ClientTop       =   1290
   ClientWidth     =   8640
   Icon            =   "Main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   8700
   ScaleWidth      =   8640
   Begin VB.TextBox Text11 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      Height          =   375
      Left            =   120
      TabIndex        =   40
      Top             =   8280
      Width           =   6375
   End
   Begin VB.CommandButton Command9 
      Caption         =   "MODFLOW-RCH"
      Height          =   615
      Left            =   6720
      TabIndex        =   39
      Top             =   6600
      Width           =   1815
   End
   Begin VB.CommandButton Command8 
      Caption         =   "Read SWAT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   14.25
         Charset         =   222
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   6600
      TabIndex        =   38
      Top             =   7320
      Width           =   1935
   End
   Begin VB.TextBox Text10 
      Height          =   405
      Left            =   7200
      TabIndex        =   37
      Text            =   "2"
      Top             =   6000
      Width           =   615
   End
   Begin VB.TextBox Text8 
      Height          =   375
      Left            =   7200
      TabIndex        =   34
      Text            =   "2"
      Top             =   5280
      Width           =   615
   End
   Begin VB.CommandButton Command6 
      Caption         =   "run SW"
      Height          =   615
      Left            =   5400
      TabIndex        =   29
      Top             =   4320
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   1
      Left            =   6360
      TabIndex        =   28
      Top             =   1920
      Width           =   2055
   End
   Begin VB.CommandButton Command5 
      Caption         =   "run GW"
      Height          =   615
      Left            =   4320
      TabIndex        =   24
      Top             =   4320
      Width           =   855
   End
   Begin VB.TextBox Text4 
      Alignment       =   1  'Right Justify
      Height          =   285
      Left            =   4320
      TabIndex        =   23
      Text            =   "5"
      Top             =   5280
      Width           =   735
   End
   Begin VB.TextBox Text5 
      Alignment       =   1  'Right Justify
      Height          =   285
      Left            =   4320
      TabIndex        =   21
      Text            =   "5"
      Top             =   5760
      Width           =   735
   End
   Begin VB.CommandButton Command4 
      Caption         =   "check Coupling"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   222
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   6480
      TabIndex        =   19
      Top             =   4320
      Width           =   2055
   End
   Begin VB.PictureBox MSChart1 
      Height          =   1335
      Left            =   4320
      ScaleHeight     =   1275
      ScaleWidth      =   2115
      TabIndex        =   18
      Top             =   6720
      Width           =   2175
   End
   Begin VB.TextBox Text2 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Index           =   1
      Left            =   360
      TabIndex        =   17
      Top             =   1920
      Width           =   5535
   End
   Begin VB.Frame Inputfr 
      Caption         =   "Input"
      Height          =   2655
      Left            =   120
      TabIndex        =   12
      Top             =   0
      Width           =   8415
      Begin VB.Timer Timer1 
         Left            =   4440
         Top             =   240
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Index           =   0
         Left            =   6240
         TabIndex        =   27
         Top             =   720
         Width           =   2055
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Browse SWAT2005"
         Height          =   375
         Index           =   1
         Left            =   6240
         TabIndex        =   25
         Top             =   1440
         Width           =   2055
      End
      Begin MSComDlg.CommonDialog Commondl 
         Left            =   3600
         Top             =   240
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.TextBox Text2 
         Height          =   375
         IMEMode         =   3  'DISABLE
         Index           =   0
         Left            =   120
         TabIndex        =   14
         Top             =   720
         Width           =   5535
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Browse MODFLOW"
         Height          =   375
         Index           =   0
         Left            =   6240
         TabIndex        =   13
         Top             =   240
         Width           =   2055
      End
      Begin VB.Label Label2 
         Caption         =   "Surface water Model"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   222
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   375
         Index           =   2
         Left            =   120
         TabIndex        =   16
         Top             =   1560
         Width           =   2535
      End
      Begin VB.Label Label2 
         Caption         =   "Groundwater Model"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   222
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   375
         Index           =   0
         Left            =   120
         TabIndex        =   15
         Top             =   360
         Width           =   1815
      End
   End
   Begin VB.TextBox Text12 
      Height          =   1995
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   11
      Top             =   6120
      Width           =   3975
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Check Input"
      Height          =   495
      Left            =   1440
      TabIndex        =   10
      Top             =   6960
      Width           =   975
   End
   Begin VB.TextBox Text6 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   222
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1200
      TabIndex        =   9
      Text            =   "0"
      Top             =   5400
      Width           =   855
   End
   Begin VB.TextBox Text7 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000013&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   222
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000001&
      Height          =   495
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   7
      Text            =   "Waiting For Source file.."
      Top             =   6600
      Width           =   2895
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   222
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   2040
      TabIndex        =   6
      Top             =   4440
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H000000FF&
      Caption         =   "Run Simulation"
      DragIcon        =   "Main.frx":0442
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   14.25
         Charset         =   222
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   480
      MaskColor       =   &H000000FF&
      TabIndex        =   4
      Top             =   7200
      Width           =   2775
   End
   Begin VB.Frame Outputfr 
      Caption         =   "Output"
      Height          =   1335
      Left            =   120
      TabIndex        =   0
      Top             =   2760
      Width           =   8415
      Begin VB.TextBox Text1 
         Height          =   375
         Index           =   2
         Left            =   6240
         TabIndex        =   33
         Top             =   720
         Width           =   2055
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Browse Save File"
         Height          =   375
         Index           =   2
         Left            =   6240
         TabIndex        =   26
         Top             =   240
         Width           =   2055
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Index           =   2
         Left            =   120
         TabIndex        =   2
         Top             =   720
         Width           =   5655
      End
      Begin VB.Label Label2 
         Caption         =   "Report text file"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   222
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   3
         Top             =   360
         Width           =   2055
      End
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Read SWAT"
      Height          =   495
      Left            =   480
      TabIndex        =   30
      Top             =   6960
      Width           =   735
   End
   Begin VB.Label Label11 
      Caption         =   "Outlet of Watershed (basin no.)"
      Height          =   495
      Left            =   5520
      TabIndex        =   36
      Top             =   6000
      Width           =   1575
   End
   Begin VB.Label Label10 
      Caption         =   "MODFLOW grid size (sq.km.)"
      Height          =   615
      Left            =   5520
      TabIndex        =   35
      Top             =   5280
      Width           =   1215
   End
   Begin VB.Label Label9 
      Caption         =   "%"
      Height          =   255
      Left            =   5160
      TabIndex        =   32
      Top             =   5760
      Width           =   375
   End
   Begin VB.Label Label8 
      Caption         =   "%"
      Height          =   255
      Left            =   5160
      TabIndex        =   31
      Top             =   5280
      Width           =   375
   End
   Begin VB.Label Label7 
      Caption         =   "SW Sreamflow Tolerance"
      Height          =   255
      Left            =   2400
      TabIndex        =   22
      Top             =   5280
      Width           =   2055
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Coupling Time"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   222
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   375
      Left            =   0
      TabIndex        =   20
      Top             =   0
      Width           =   1815
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   8760
      Y1              =   5040
      Y2              =   5040
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "Coupled time step"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   222
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   8
      Top             =   5400
      Width           =   855
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "Coupling Time"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   222
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   4440
      Width           =   1815
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "GW Level Tolerance"
      Height          =   255
      Left            =   2280
      TabIndex        =   1
      Top             =   5760
      Width           =   1695
   End
End
Attribute VB_Name = "Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Frame1_DragDrop(Source As Control, X As Single, Y As Single)

End Sub

Private Sub Command1_Click(index As Integer)
If index = 0 Then
Commondl.DialogTitle = "Define  MODFLOW  main file"
Commondl.FileName = "*.mfn"
Commondl.Filter = "Modflow Name File"
Commondl.ShowOpen

Else
    If index = 1 Then
    Commondl.DialogTitle = "Define  SWAT2005  folder"
    Commondl.FileName = "*.cio"
    Commondl.Filter = "SWAT main file"
    Commondl.ShowOpen
    Else
        Commondl.DialogTitle = "Define Report Text file"
        Commondl.FileName = "*.txt"
        Commondl.Filter = "Text file"
        Commondl.ShowSave
    End If
      
End If
Text2(index).Text = Commondl.FileName
Text1(index).Text = Commondl.FileTitle
End Sub
Private Sub Command1_close()

End Sub

Private Sub Command2_Click()

'PieChart
'Dim percent As Integer
'Dim x As Integer
'percent = percent + x
'If percent > 100 Or percent < 0 Then
'x = (x * -1)
'percent = percent + x
'End If
'pie.Column = 1
'pie.Data = percent

'pie.Column = 2
'pie.Data = 100 - percent
'Pie




Dim str, str2 As String
Dim node As Double
Dim tstep, tstepst, val1 As Single
Dim Pst, Lngth, eod, I, J, Endtime As Integer

Dim u, interv, dratio As Single
Dim ical As Single
Dim u_1, u0, u1, um1, ug As Single
Dim DTn, ATn, Tn, k, a, b As Single
Const pi As Single = 3.14159
Text7.Text = "In processing"
Me.MousePointer = vbHourglass

Open Text2(0) For Input As #10
Open Text2(1) For Output As #5
Open App.Path & "\Temp.txt" For Output As #3
Print #5, "Tn,Dtn"
Text9.Text = "Tn # DTn" & Chr(13) & Chr(10)

Do While Not EOF(10)
Line Input #10, str
Lngth = Len(str)
Pst = InStr(str, ",")
tstep = Val(str)
str2 = Mid(str, Pst + 1, Lngth - Pst)
val1 = Val(str2)
I = I + 1
Loop
Text4.Text = I
Text7.Text = tstep
Text6.Text = tstep / (I - 1)
interv = tstep / (I - 1)
Close #10



dratio = Text3.Text
Tn = 0.01
interv = Text6.Text
J = 0
DTn = 0
ATn = 0

Do
    k = 1 / interv ^ 2 + 2 * pi * dratio / Tn / interv
    a = 1 / interv ^ 2 - 2 * pi * dratio / Tn / interv
    b = 4 * pi ^ 2 / Tn - 2 / interv ^ 2
 
    u0 = 0
    u_1 = 0
    ug = 0
    node = eod

I = Val(Text8.Text)
Endtime = Val(Text4.Text)
Open Text2(0) For Input As #6
Do While (Not EOF(6))
        u_1 = u0
        u0 = u1
        Line Input #6, str
        Lngth = Len(str)
        Pst = InStr(str, ",")
        tstep = Val(str)
        str2 = Mid(str, Pst + 1, Lngth - Pst)
        val1 = Val(str2)
        ug = val1
        u1 = (-ug - a * u_1 - b * u0) / k
        If Abs(u1) > DTn Then DTn = Abs(u1)
        J = J + 1
Loop
Close #6
Print #5, Tn & "," & DTn
    ATn = 4 * DTn * pi ^ 2 / Tn
    Text9.Text = Text9.Text & Tn & " # " & DTn & Chr(13) & Chr(10)
    
    If (Tn >= 0.01) And (Tn < 1) Then Tn = Tn + 0.01
    If (Tn > 1) And (Tn < 10) Then Tn = Tn + 0.1
    If Tn >= 10 Then Tn = Tn + 1

Loop Until Tn > 30
Close #3
Close #5

Me.MousePointer = vbDefault
Text7.Text = "Accomplish!"
End Sub

Private Sub Command3_Click()
Dim str, str2 As String
Dim node As Double

Dim tstep, tstepst, val1 As Single
Dim Pst, Lngth, eod, I, J, Endtime As Integer
Text7.Text = "In processing.. "
''Text2(0) = App.Path & "\data\baiyoke.csv"
''Text2(1) = App.Path & "\data\test.csv"
Open Text2(0) For Input As #1

Do While Not EOF(1)
Line Input #1, str
Lngth = Len(str)
Pst = InStr(str, ",")
tstep = Val(str)
str2 = Mid(str, Pst + 1, Lngth - Pst)
val1 = Val(str2)
I = I + 1
Loop
Text4.Text = I
Text7.Text = tstep
Text6.Text = tstep / (I - 1)
Close #1
Close #5
Text7.Text = "Checking is OK"
Me.MousePointer = vbDefault
End Sub

Private Sub Command4_Click()
Dim basin, Mon, yr, rch As Single

swpath = Left(Text2(1), Len(Text2(1)) - Len(Text1(1)))
Text9 = swpath & "output.sub"
Open Text9 For Input As 2

yr = 1993
I = 1

While Not Mid(temp, 1, 6) = "BIGSUB"
    Line Input #2, temp
Wend


While Not EOF(2)
        If Val(Mid(temp, 21, 4)) = 1 And Val(Mid(temp, 7, 4)) = 1 Then yr = yr + 1
        basin = Val(Mid(temp, 7, 4)) 'Basin
        Mon = Val(Mid(temp, 20, 5)) 'Month
        Perco = Val(Mid(temp, 85, 10)) 'PERCO
        Wyld = Val(Mid(temp, 115, 10)) 'WYLD
        Area = Val(Mid(temp, 25, 10)) 'Area
        If Val(Mid(temp, 7, 4)) = 1 Then Text12 = Text12 & yr & ":" & Mon & Chr(13) & Chr(10)
        Line Input #2, temp
Wend

Text3 = "1993 -" & yr


Close #2

'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
modpath = Left(Text2(0), Len(Text2(0)) - Len(Text1(0)))
modfile = Left(Text2(0), (Len(Text2(0)) - 4))

Text9 = modfile & ".rch"

Open modfile & ".rch" For Input As 2

step = 1

For m = 1 To 2
Line Input #2, temp
Next


While Not EOF(2)

    Line Input #2, temp
       
    If temp = "1 -1" Then step = step + 1
    
Wend

Close #2
Text6 = step

End Sub

Private Sub Command5_Click()
Dim b As Double

Open "modflow.bat" For Output As 1
Print #1, "Echo off"
Print #1, "PATH C:\Program Files\GMS50\models"
Print #1, Left(Text2(0), 2)
Print #1, "cd " & Left(Text2(0), Len(Text2(0)) - Len(Text1(0)))
'Open Text2(0) For Input As #10
'Open Text2(1) For Output As #5
'Open App.Path & "\Temp.txt" For Output As #3
'Print #5, Tn & "," & DTn
'Text9.Text = "Tn # DTn" & Chr(13) & Chr(10)

Print #1, "mf2k " & Text1(0)
Print #1, "pause"
'Print "Cls"
Close #1
'b = Shell(Left(Text2(0), Len(Text2(0)) - Len(Text1(0))) & "modflow.bat", vbHide)
b = Shell(Left(Text2(0), Len(Text2(0)) - Len(Text1(0))) & "modflow.bat")

End Sub

Private Sub Command6_Click()
Dim b As Double

Open "swat.bat" For Output As 1
Print #1, "Echo off"
Print #1, "PATH C:\AVSWATX\AvSwatPr"
Print #1, Left(Text2(1), 2)
Print #1, "cd " & Left(Text2(1), Len(Text2(1)) - Len(Text1(1)))
'Open Text2(0) For Input As #10
'Open Text2(1) For Output As #5
'Open App.Path & "\Temp.txt" For Output As #3
'Print #5, Tn & "," & DTn
'Text9.Text = "Tn # DTn" & Chr(13) & Chr(10)
Print #1, "swat2003"
Print #1, "pause"
'Print "Cls"
Close #1
'b = Shell(Left(Text2(0), Len(Text2(0)) - Len(Text1(0))) & "swat.bat", vbHide)
b = Shell(Left(Text2(1), Len(Text2(1)) - Len(Text1(1))) & "swat.bat")

End Sub

Private Sub Command7_Click()

swpath = Left(Text2(1), Len(Text2(1)) - Len(Text1(1)))
Text9 = swpath & "swat.bat"
Open Text9 For Input As 2

Do Until EOF(2)
     Line Input #2, Nextline
     Text9 = Text9 + Nextline + Chr(13) + Chr(10)
Loop
Close #2


Open "swat.bat" For Output As 1
Print #1, Text9
Close #1

End Sub

Private Sub Command8_Click()
Dim rcharge(23, 22) As Double
Dim basin, Mon, yr, rch As Single
Dim tt As Boolean
Text11.Text = "Running"


'Open "swat.bat" For Output As 1
'Print #1, "Echo off"
'Print #1, "PATH C:\AVSWATX\AvSwatPr"
'Print #1, Left(Text2(1), 2)
'Print #1, "cd " & Left(Text2(1), Len(Text2(1)) - Len(Text1(1)))
'Print #1, "swat2003"
'Print #1, "pause"
'Close #1
'b = Shell(Left(Text2(0), Len(Text2(0)) - Len(Text1(0))) & "swat.bat", vbHide)
'b = Shell(Left(Text2(1), Len(Text2(1)) - Len(Text1(1))) & "swat.bat")

'xxxxxxxxxxxxxxxxxx Recharge from SWAT rch.txt xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

swpath = Left(Text2(1), Len(Text2(1)) - Len(Text1(1)))
Text9 = swpath & "output.sub"
Open Text9 For Input As 2

savepath = Left(Text2(2), Len(Text2(2)) - Len(Text1(2)))
Open savepath & "rch.txt" For Output As 3

yr = 1993
I = 1

While Not Mid(temp, 1, 6) = "BIGSUB"
    Line Input #2, temp
Wend


While Not EOF(2)
        If Val(Mid(temp, 21, 4)) = 1 And Val(Mid(temp, 7, 4)) = 1 Then yr = yr + 1
        basin = Val(Mid(temp, 7, 4)) 'Basin
        Mon = Val(Mid(temp, 20, 5)) 'Month
        Perco = Val(Mid(temp, 85, 10)) 'PERCO
        Wyld = Val(Mid(temp, 115, 10)) 'WYLD
        Area = Val(Mid(temp, 25, 10)) 'Area
        If Val(Mid(temp, 21, 4)) < 13 Then
           If Not (Val(Mid(temp, 20, 5)) = 10 And yr = 2003) Then Print #3, basin, yr, Mon, Perco
        End If
        Line Input #2, temp
Wend

Close #2
Close #3
'Text9.Text = ""
'For I = 1 To 2
  'For J = 4 To 6
  '  Text9.Text = Text9.Text & I & "-Basin " & J & "-Month Recharge (mm) : " & Outswat(I, J, 1) & Chr(13) & Chr(10)
'Next
'Next

'xxxxxxxxxxxxxxxxxx MODFLOW CONCLUSION gw-out.txt xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

modpath = Left(Text2(0), Len(Text2(0)) - Len(Text1(0)))
modfile = Left(Text2(0), (Len(Text2(0)) - 4))

Open modfile & ".out" For Input As 2
Open savepath & "gw-out.txt" For Output As 3

Print #3, " Stress", "STOI(m3)", "CONI", "WELI", "RIVI", "RECI", "STOO", "CONO", "WELO", "RIVO", "RECO"

n = 1

While Not EOF(2)
        Line Input #2, temp
        If Mid(temp, 3, 17) = "VOLUMETRIC BUDGET" Then
            For I = 1 To 8
            Line Input #2, temp
            Next
            yr = yr + 1
            STOI = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            CONI = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            WELI = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            RIVI = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            RECI = Val(Mid(temp, 23, 17))
                        
            For I = 1 To 6
            Line Input #2, temp
            Next
            yr = yr + 1
            STOO = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            CONO = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            WELO = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            RIVO = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            RECO = Val(Mid(temp, 23, 17))
            Print #3, n, STOI, CONI, WELI, RIVI, RECI, STOO, CONO, WELO, RIVO, RECO
            n = n + 1
        End If
Wend

Close #2
Close #3
'xxxxxxxxxxxxxxxxxxxxxxxxx Recharge in stress Period  *.txt save file xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

Open savepath & "rch.txt" For Input As 2
Open Text2(2) For Output As 3

For I = 1 To 22
 For J = 1 To 22
    rcharge(I, J) = 0
 Next
Next

tt = True
I = 1
stress = 1

While Not EOF(2)

        Input #2, basin, yr, Mon, rch
        
        If Mon = 10 And tt = True Then
          stress = stress + 1
          tt = False
        End If
        
        If Mon = 4 And tt = False Then
          stress = stress + 1
          tt = True
        End If
                
        rcharge(basin, stress) = rch + rcharge(basin, stress)
        
Wend

Close #2

Print #3, "Basin", "Stress", "Recharge(mm/day)"
For I = 1 To 22
 For J = 1 To 22
    rcharge(I, J) = rcharge(I, J) / 182.5
    Print #3, I, J, rcharge(I, J)
 Next
Next

Close #3

'xxxxxxxxxxxxxxxxxxxxxxxxx Change recharge in MODFLOW *.ttt and Copy to *.rc2 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

modpath = Left(Text2(0), Len(Text2(0)) - Len(Text1(0)))
modfile = Left(Text2(0), (Len(Text2(0)) - 4))


rcharge(23, 1) = 0.0076
rcharge(23, 2) = 0.00228
rcharge(23, 3) = 0.00332
rcharge(23, 4) = 0.00252
rcharge(23, 5) = 0.00912
rcharge(23, 6) = 0.00433
rcharge(23, 7) = 0.00638
rcharge(23, 8) = 0.0148
rcharge(23, 9) = 0.00445
rcharge(23, 10) = 0.00576
rcharge(23, 11) = 0.00835
rcharge(23, 12) = 0.011232877
rcharge(23, 13) = 0.00662
rcharge(23, 14) = 0.0724
rcharge(23, 15) = 0.0043
rcharge(23, 16) = 0.00645
rcharge(23, 17) = 0.0185
rcharge(23, 18) = 0.0155
rcharge(23, 19) = 0.0164
rcharge(23, 20) = 0.00191
rcharge(23, 21) = 0
rcharge(23, 22) = 0


Open modfile & ".rch" For Input As 2
Open modfile & ".ttt" For Output As 3
Open modfile & ".rc2" For Output As 4


step = 1

For m = 1 To 2
Line Input #2, temp
Print #3, temp
Print #4, temp
Next


While Not EOF(2)

    Line Input #2, temp
    Print #4, temp
    temp = " " & temp
    Text9 = Replace$(temp, " 1.0 ", " " & rcharge(1, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 2.0 ", " " & rcharge(2, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 3.0 ", " " & rcharge(3, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 4.0 ", " " & rcharge(4, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 5.0 ", " " & rcharge(5, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 6.0 ", " " & rcharge(6, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 7.0 ", " " & rcharge(7, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 8.0 ", " " & rcharge(8, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 9.0 ", " " & rcharge(9, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 10.0 ", " " & rcharge(10, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 11.0 ", " " & rcharge(11, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 12.0 ", " " & rcharge(12, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 13.0 ", " " & rcharge(13, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 14.0 ", " " & rcharge(14, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 15.0 ", " " & rcharge(15, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 16.0 ", " " & rcharge(16, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 17.0 ", " " & rcharge(17, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 18.0 ", " " & rcharge(18, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 19.0 ", " " & rcharge(19, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 20.0 ", " " & rcharge(20, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 21.0 ", " " & rcharge(21, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 22.0 ", " " & rcharge(22, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 0.0 ", " " & rcharge(23, step) & " ")
    temp = Text9
    
        Text9 = Replace$(temp, " 1.0 ", " " & rcharge(1, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 2.0 ", " " & rcharge(2, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 3.0 ", " " & rcharge(3, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 4.0 ", " " & rcharge(4, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 5.0 ", " " & rcharge(5, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 6.0 ", " " & rcharge(6, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 7.0 ", " " & rcharge(7, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 8.0 ", " " & rcharge(8, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 9.0 ", " " & rcharge(9, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 10.0 ", " " & rcharge(10, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 11.0 ", " " & rcharge(11, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 12.0 ", " " & rcharge(12, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 13.0 ", " " & rcharge(13, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 14.0 ", " " & rcharge(14, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 15.0 ", " " & rcharge(15, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 16.0 ", " " & rcharge(16, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 17.0 ", " " & rcharge(17, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 18.0 ", " " & rcharge(18, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 19.0 ", " " & rcharge(19, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 20.0 ", " " & rcharge(20, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 21.0 ", " " & rcharge(21, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 22.0 ", " " & rcharge(22, step) & " ")
    temp = Text9
    Text9 = Replace$(temp, " 0.0 ", " " & rcharge(23, step) & " ")
    temp = Text9
    
    
    temp = Mid(temp, 2, Len(temp) - 1)
    Print #3, temp
    If temp = "1 -1" Then step = step + 1
    Text9 = step
    
Wend


Close #2
Close #3
Close #4

Text11 = "#### Finished ####"
End Sub

Private Sub Command9_Click()

modpath = Left(Text2(0), Len(Text2(0)) - Len(Text1(0)))
modfile = Left(Text2(0), (Len(Text2(0)) - 4))

Open modfile & ".out" For Input As 2
Open savepath & "gw-out.txt" For Output As 3

Print #3, " Stress", "STOI(m3)", "CONI", "WELI", "RIVI", "RECI", "STOO", "CONO", "WELO", "RIVO", "RECO"

n = 1

While Not EOF(2)
        Line Input #2, temp
        If Mid(temp, 3, 17) = "VOLUMETRIC BUDGET" Then
            For I = 1 To 8
            Line Input #2, temp
            Next
            yr = yr + 1
            STOI = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            CONI = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            WELI = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            RIVI = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            RECI = Val(Mid(temp, 23, 17))
                        
            For I = 1 To 6
            Line Input #2, temp
            Next
            yr = yr + 1
            STOO = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            CONO = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            WELO = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            RIVO = Val(Mid(temp, 23, 17))
            Line Input #2, temp
            RECO = Val(Mid(temp, 23, 17))
            Print #3, n, STOI, CONI, WELI, RIVI, RECI, STOO, CONO, WELO, RIVO, RECO
            n = n + 1
        End If
Wend

Close #2
Close #3

End Sub

Private Sub Label3_Click()
Dim u, interv, dratio As Single
Dim ical As Single
Dim u_1, u0, u1, um1, ug0 As Single
Dim DTn, ATn, Tn, k, a, b As Single



Const pi = 3.14159


Me.MousePointer = vbHourglass
Text7.Text = "In processing.."

dratio = Text3.Text
Tn = 0.01
interv = Text6.Text

Do

    k = 1 / interv ^ 2 + 2 * pi * dratio / Tn / interv
    a = 1 / interv ^ 2 - 2 * pi * dratio / Tn / interv
    b = 4 * pi ^ 2 / Tn - 2 / interv ^ 2
    
    ical = 0
    u0 = 0
    u_1 = 0
    ug0 = 0
    node = eod
 
    
    Do
    u1 = (-ug - a * u_1 - b * u0) / k
    If Abs(u1) > DTn Then DTn = Abs(u1)
    Loop Until I = node

    ATn = 4 * DTn * pi ^ 2 / Tn
    
Print #2, Tn & "," & DTn & "," & ATn
    If (Tn >= 0.01) And (Tn < 1) Then Tn = Tn + 0.01
    If (Tn > 1) And (Tn < 10) Then Tn = Tn + 0.1
    If Tn >= 10 Then Tn = Tn + 1
Loop Until Tn > 30
Close #2

End Sub

