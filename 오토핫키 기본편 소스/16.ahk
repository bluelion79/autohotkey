#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


temp := "Select Radio Button"

Gui, Add, Text, x30 y70 w270 h20, Hello World?
Gui, Add, Edit, vtemp x30 y90 w200 h20, %temp%

Gui, Add, Radio, x30 y120 w50 h20 vyes Checked, Yes.
Gui, Add, Radio, x100 y120 w50 h20 vno, No.

Gui, Add, Button, gStart x20 y150 w270 h20, 매크로 실행
Gui, Add, Button, gEnd x20 y170 w270 h20, 매크로 종료

Gui, Show, , 매크로
return


Start:
{
	Gui, Submit, nohide	;GUI 값을 변수에 업데이트
	MsgBox, % yes " / " no
	
	if (yes == 1)
	{
		GuiControl, , temp, Hello World!	;변수값을 GUI에 반영
	}
	else
	{
		GuiControl, , temp, Hell World!		;변수값을 GUI에 반영
	}
}
return


End:
{
	ExitApp
}
return


GuiClose:
{
	ExitApp
}


F4::
ExitApp

