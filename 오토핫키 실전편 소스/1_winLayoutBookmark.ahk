#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


F4::
ExitApp


!1::
app := "ahk_class Notepad"	; �޸���

IfWinExist, % app
{
	WinRestore, % app
	WinActivate, % app
	WinMove, % app, , 0, 0, 353, 711
}

app := "ahk_class MSPaintApp"	; �׸���

IfWinExist, % app
{
	WinRestore, % app
	WinActivate, % app
	WinMove, % app, , 339, 0, 517, 716
}

app := "ahk_class ApplicationFrameWindow"	; ����

IfWinExist, % app
{
	WinRestore, % app
	WinActivate, % app
	WinMove, % app, , 834, 199, 438, 516
}

/*
app := "ahk_class Notepad"	; �޸���2

IfWinExist, % app
{
	WinRestore, % app
	WinActivateBottom, % app
	WinMove, % app, , 840, 0, 439, 201
}
else
{
	run, notepad.exe
	WinWait, % app
	
	WinRestore, % app
	WinActivateBottom, % app
	WinMove, % app, , 840, 0, 439, 201
}
*/

; �ߺ� �ڵ� ���� --> Refactoring
app := "ahk_class Notepad"	; �޸���2

IfWinNotExist, % app
{
	run, notepad.exe
	WinWait, % app
}

WinRestore, % app
WinActivateBottom, % app
WinMove, % app, , 840, 0, 439, 201

return
