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

Gui, Add, Button, gStart x20 y150 w270 h20, ��ũ�� ����
Gui, Add, Button, gEnd x20 y170 w270 h20, ��ũ�� ����

Gui, Show, , ��ũ��
return


Start:
{
	Gui, Submit, nohide	;GUI ���� ������ ������Ʈ
	MsgBox, % yes " / " no
	
	if (yes == 1)
	{
		GuiControl, , temp, Hello World!	;�������� GUI�� �ݿ�
	}
	else
	{
		GuiControl, , temp, Hell World!		;�������� GUI�� �ݿ�
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

