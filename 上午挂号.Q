[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=fc6c4291-0723-4bbb-9cad-c51a0914bd9e
Description=上午！挂号前一定去掉最后的注释！
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
LockMouse
Hwnd = Plugin.Window.Foreground()
//窗口属性设置为(窗口置前)
Call Plugin.Window.Top(Hwnd, 0)
//最大化窗口
Call Plugin.Window.Max(Hwnd)

//刷新页面需要留3min
Waiting = 1
While Waiting
	hh = Hour(Now)
	If hh >= 19 Then 	
		mm = Minute(Now)
		If mm >= 57 Then 
			Waiting = 0
		End If
	End If
Wend
KeyPress "F5", 1
Delay 15000
MouseWheel - 10 
Call Plugin.Pic.PrintScreen(521, 278, 1686, 1007, "\logs\PIC1.bmp")

Waiting = 1
GetCursorPos X, Y
While Waiting
	IfColor X, Y, "FFEBDD", 0 Then
    	Waiting = 0
	End If
Wend
LeftClick 1

Waiting = 1
While Waiting
	IfColor 391, 292, "F5F5F5", 0 Then
    	Waiting = 0
	End If
Wend
Call Plugin.Pic.PrintScreen(521, 278, 1686, 1007, "\logs\PIC2.bmp")

Finding = 1
XY = Plugin.Pic.FindMultiPic(521, 278, 1686, 1007, "\screenshots\083.bmp", 0, 0.7)
iZB = InStr(XY, "|")
X = CLng(Left(XY, iZB - 1))
If X > - 1  Then 
	Y = CLng(Right(XY, Len(XY) - iZB))
	Finding = 0	
Else
	XY = Plugin.Pic.FindMultiPic(521, 278, 1686, 1007, "\screenshots\084.bmp", 0, 0.7)
	iZB = InStr(XY, "|")
	X = CLng(Left(XY, iZB - 1))
	If X > - 1  Then 
		Y = CLng(Right(XY, Len(XY) - iZB))
		Finding = 0
	Else
		XY = Plugin.Pic.FindMultiPic(521, 278, 1686, 1007, "\screenshots\085.bmp", 0, 0.7)
		iZB = InStr(XY, "|")
		X = CLng(Left(XY, iZB - 1))
		If X > - 1  Then 
			Y = CLng(Right(XY, Len(XY) - iZB))
			Finding = 0
		Else
			XY = Plugin.Pic.FindMultiPic(521, 278, 1686, 1007, "\screenshots\082.bmp", 0, 0.7)
			iZB = InStr(XY, "|")
			X = CLng(Left(XY, iZB - 1))
			If X > - 1  Then 
				Y = CLng(Right(XY, Len(XY) - iZB))
				Finding = 0
			Else
				XY = Plugin.Pic.FindMultiPic(521, 278, 1686, 1007, "\screenshots\081.bmp", 0, 0.7)
				iZB = InStr(XY, "|")
				X = CLng(Left(XY, iZB - 1))
				If X > - 1  Then 
					Y = CLng(Right(XY, Len(XY) - iZB))
					Finding = 0
				Else 
					XY = Plugin.Pic.FindMultiPic(521, 278, 1686, 1007, "\screenshots\080.bmp", 0, 0.7)
					iZB = InStr(XY, "|")
					X = CLng(Left(XY, iZB - 1))
					If X > - 1  Then 
						Y = CLng(Right(XY, Len(XY) - iZB))
						Finding = 0	
					Else
						XY = Plugin.Pic.FindMultiPic(521, 278, 1686, 1007, "\screenshots\09.bmp", 0, 0.7)
						iZB = InStr(XY, "|")
						X = CLng(Left(XY, iZB - 1))
						If X > - 1  Then 
							Y = CLng(Right(XY, Len(XY) - iZB))
							Finding = 0
						Else
							XY = Plugin.Pic.FindMultiPic(521, 278, 1686, 1007, "\screenshots\10.bmp", 0, 0.7)
							iZB = InStr(XY, "|")
							X = CLng(Left(XY, iZB - 1))
							If X > - 1  Then 
								Y = CLng(Right(XY, Len(XY) - iZB))
								Finding = 0
							Else
								XY = Plugin.Pic.FindMultiPic(521, 278, 1686, 1007, "\screenshots\11.bmp", 0, 0.7)
								iZB = InStr(XY, "|")
								X = CLng(Left(XY, iZB - 1))
								If X > - 1  Then 
									Y = CLng(Right(XY, Len(XY) - iZB))
									Finding = 0
								End If
							End If
						End If
					End If
				End If
			End If
		End If
	End If
End If

If Finding Then 
	Beep 
	//窗口属性设置为(取消窗口置前)
	Call Plugin.Window.Top(Hwnd, 1)
	ExitScript
End If

MoveTo X, Y
LeftClick 1

Waiting = 1
While Waiting
	IfColor 875, 507, "7193FA", 0 Then
		Waiting = 0
	End If
Wend

MoveTo 1006, 645
LeftClick 2

MoveTo 1837,1009
LeftClick 1
Call Plugin.Pic.PrintScreen(521, 278, 1686, 1007, "\logs\PIC3.bmp")

Waiting = 1
While Waiting
	IfColor 973, 443, "333333", 0 Then
		Waiting = 0
	End If
Wend

MoveTo 1108, 645
LeftClick 1

//窗口属性设置为(取消窗口置前)
Call Plugin.Window.Top(Hwnd, 1)
UnlockMouse
