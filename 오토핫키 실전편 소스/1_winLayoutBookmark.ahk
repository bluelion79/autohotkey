#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


F4::
ExitApp


!1::
app := "ahk_class Notepad"	; 메모장

IfWinExist, % app
{
	WinRestore, % app
	WinActivate, % app
	WinMove, % app, , 0, 0, 353, 711
}

app := "ahk_class MSPaintApp"	; 그림판

IfWinExist, % app
{
	WinRestore, % app
	WinActivate, % app
	WinMove, % app, , 339, 0, 517, 716
}

app := "ahk_class ApplicationFrameWindow"	; 계산기

IfWinExist, % app
{
	WinRestore, % app
	WinActivate, % app
	WinMove, % app, , 834, 199, 438, 516
}

/*
app := "ahk_class Notepad"	; 메모장2

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

; 중복 코드 제거 --> Refactoring
app := "ahk_class Notepad"	; 메모장2

IfWinNotExist, % app
{
	run, notepad.exe
	WinWait, % app
}

WinRestore, % app
WinActivateBottom, % app
WinMove, % app, , 840, 0, 439, 201

return
