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
	MsgBox, 녹스 프로그램을 먼저 실행해주세요.
	return
}

Sleep, 500

Click, 297, 581	; + 버튼
Sleep, 2000

Click, 161, 149 ; 사진 선택
Sleep, 2000

Click, 493, 55 ; 우측 화살표 버튼
Sleep, 1000

Click, 414, 540 ; Moon Filter 버튼
Sleep, 1000

Click, 491, 57 ; 다음 버튼
Sleep, 1000

Click, 491, 57 ; 공유 버튼
Sleep, 1000

return
