#SingleInstance, Force

F4::
ExitApp


!1::
correct := 10	;����

InputBox, answer, ���� ������ Up & Down, ���ڸ� �Է��ϼ���., , 300, 150	;����ڰ� �Է��� ��

if (answer == correct)
{
	MsgBox, �����Դϴ�.
}
else if (answer < correct)
{
	MsgBox, Up!
}
else
{
	MsgBox, Down!
}

return


!2::
ImageSearch, pX, pY, 0, 0, A_ScreenWidth, A_ScreenHeight, image/11.png
; ErrorLevel: 0(�̹��� ã�� ���), 1(�̹����� ã�� ���� ���), 2(�̹��� ������ ���� ���)
if (ErrorLevel == 0)	;�̹��� ã�� ���
{
	;MouseClick, Left, %xx%, %yy%, 1
	Click, %pX%, %pY%
}
else if (ErrorLevel == 1)
{
	MsgBox, �̹����� ã�� ���߽��ϴ�.
}
else
{
	MsgBox, �̹��� ������ Ȯ�����ּ���.
}
return


imgSearch(imgFile, acc, rX, rY)
{
	ImageSearch, pX, pY, 0, 0, A_ScreenWidth, A_ScreenHeight, *%acc% image/%imgFile%
	
	if (ErrorLevel == 0)	;�̹��� ã�� ���
	{
		xx := pX + rX
		yy := pY + rY
		
		Click, %xx%, %yy%
	}
	else if (ErrorLevel == 1)
	{
		MsgBox, �̹����� ã�� ���߽��ϴ�.
	}
	else
	{
		MsgBox, �̹��� ������ Ȯ�����ּ���.
	}
	
	return
}

!3::
imgSearch("9.png", 30, 50, 50)
imgSearch("10.png", 30, 50, 50)
imgSearch("11.png", 30, 50, 50)
return
