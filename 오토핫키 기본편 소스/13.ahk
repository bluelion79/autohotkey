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
	MsgBox, �ش� â�� �����մϴ�.
}
else
{
	MsgBox, �ش� â�� �������� �ʽ��ϴ�.
}
return


!2::
IfWinNotExist, ���� ���� - �޸���
{
	Run, notepad.exe
}
else
{
	WinRestore, ���� ���� - �޸���
	WinActivate, ���� ���� - �޸���
	Sleep, 500
	;WinMove, ���� ���� - �޸���, , 0, 0, 500, 200
	WinMaximize, ���� ���� - �޸���
	Sleep, 2000
	WinMinimize, ���� ���� - �޸���
}
return
