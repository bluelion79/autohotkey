#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


F4::
ExitApp


!1::
ifWinExist, NoxPlayer
{
	WinRestore, NoxPlayer
	WinActivate, NoxPlayer
	WinMove, NoxPlayer, , 0, 0, 600, 600
}
else
{
	MsgBox, �콺 ���α׷��� ���� �������ּ���.
	return
}

Sleep, 500

Click, 297, 581	; + ��ư
Sleep, 2000

Click, 161, 149 ; ���� ����
Sleep, 2000

Click, 493, 55 ; ���� ȭ��ǥ ��ư
Sleep, 1000

Click, 414, 540 ; Moon Filter ��ư
Sleep, 1000

Click, 491, 57 ; ���� ��ư
Sleep, 1000

Click, 491, 57 ; ���� ��ư
Sleep, 1000

return
