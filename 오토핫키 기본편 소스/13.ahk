#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


F4::
ExitApp


!1::
IfWinExist, 13.ahk
{
	MsgBox, 해당 창이 존재합니다.
}
else
{
	MsgBox, 해당 창이 존재하지 않습니다.
}
return


!2::
IfWinNotExist, 제목 없음 - 메모장
{
	Run, notepad.exe
}
else
{
	WinRestore, 제목 없음 - 메모장
	WinActivate, 제목 없음 - 메모장
	Sleep, 500
	;WinMove, 제목 없음 - 메모장, , 0, 0, 500, 200
	WinMaximize, 제목 없음 - 메모장
	Sleep, 2000
	WinMinimize, 제목 없음 - 메모장
}
return
