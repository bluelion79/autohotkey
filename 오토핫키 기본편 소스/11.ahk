#SingleInstance, Force

F4::
ExitApp


!1::
Loop, 10
{
	MsgBox, �ݺ��� ���� ��(%A_Index%)
}
return


!2::
Loop, 
{
	MsgBox, �ݺ��� ���� ��(%A_Index%)
	
	if (A_Index > 5)
	{
		MsgBox, 5�� �̻� �ݺ��Ͽ� �ݺ����� �����մϴ�.
		break	;�ݺ����� ����(��������)
	}
}
return


!3::
While (true)	; true / false
{
	MsgBox, �ݺ��� ���� ��(%A_Index%)
	
	if (A_Index > 5)
	{
		MsgBox, 5�� �̻� �ݺ��Ͽ� �ݺ����� �����մϴ�.
		break	;�ݺ����� ����(��������)
	}
}
return


!4::
While (A_Index <= 5)
{
	MsgBox, �ݺ��� ���� ��(%A_Index%)
}
return


!5::
correct := 10	;����

Loop,
{
	InputBox, answer, ���� ������ Up & Down, ���ڸ� �Է��ϼ���., , 300, 150	;����ڰ� �Է��� ��

	if (answer == correct)
	{
		MsgBox, �����Դϴ�.
		break
	}
	else if (answer < correct)
	{
		MsgBox, Up!
	}
	else
	{
		MsgBox, Down!
	}
}

return
