
Gui, Font, S8 CDefault Bold, Verdana

Gui, Add, Text, x72 y29 w100 h30, A
Gui, Add, Edit, x72 y69 w110 h50 vA,

Gui, Add, Text, x322 y29 w100 h40, B
Gui, Add, Edit, x312 y79 w110 h50 vB,

Gui, Add, Button, x32 y189 w100 h30, ����
Gui, Add, Button, x152 y189 w100 h30, ����
Gui, Add, Button, x272 y189 w100 h30, ����
Gui, Add, Button, x362 y159 w100 h30, ������

Gui, Add, Text, x42 y249 w100 h30 vResult, Result

Gui, Show, w479 h379, Calculator
return

GuiClose:
ExitApp

Button����:
Gui, Submit, NoHide
{
	
	;MsgBox %A% %B%
	
	if(!A || !B){
		MsgBox, 16, �Է� ����, ���ڸ� �Է� �����մϴ�.`n��ĭ�� �˸��� ���ڸ� �ݵ�� �Է��ؾ� �մϴ�.
	}
	
	x = %A%
	y = %B%
	Result := x + y
	
	GuiControl,, Result, %A% + %B% = %Result%  
}
return

Button����:
Gui, Submit, NoHide
{
	;MsgBox %A% %B%
	
	if(!A || !B){
		MsgBox, 16, �Է� ����, ���ڸ� �Է� �����մϴ�.`n��ĭ�� �˸��� ���ڸ� �ݵ�� �Է��ؾ� �մϴ�.
	}
	
	x = %A%
	y = %B%
	Result := x - y
	
	GuiControl,, Result, %A% - %B% = %Result%
}
return

Button����:
Gui, Submit, NoHide
{
	;MsgBox %A% %B%
	
	if(!A || !B){
		MsgBox, 16, �Է� ����, ���ڸ� �Է� �����մϴ�.`n��ĭ�� �˸��� ���ڸ� �ݵ�� �Է��ؾ� �մϴ�.
	}
	
	x = %A%
	y = %B%
	Result := x * y
	
	GuiControl,, Result, %A% * %B% = %Result%
}
return

Button������:
Gui, Submit, NoHide
{
	;MsgBox %A% %B%
	
	if(!A || !B){
		MsgBox, 16, �Է� ����, ���ڸ� �Է� �����մϴ�.`n��ĭ�� �˸��� ���ڸ� �ݵ�� �Է��ؾ� �մϴ�.
	}
	
	x = %A%
	y = %B%
	Result := x // y
	
	GuiControl,, Result, %A% / %B% = %Result%
}
return