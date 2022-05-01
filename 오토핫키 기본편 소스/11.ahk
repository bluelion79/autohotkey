#SingleInstance, Force

F4::
ExitApp


!1::
Loop, 10
{
	MsgBox, 반복문 수행 중(%A_Index%)
}
return


!2::
Loop, 
{
	MsgBox, 반복문 수행 중(%A_Index%)
	
	if (A_Index > 5)
	{
		MsgBox, 5번 이상 반복하여 반복문을 종료합니다.
		break	;반복문을 종료(빠져나감)
	}
}
return


!3::
While (true)	; true / false
{
	MsgBox, 반복문 수행 중(%A_Index%)
	
	if (A_Index > 5)
	{
		MsgBox, 5번 이상 반복하여 반복문을 종료합니다.
		break	;반복문을 종료(빠져나감)
	}
}
return


!4::
While (A_Index <= 5)
{
	MsgBox, 반복문 수행 중(%A_Index%)
}
return


!5::
correct := 10	;정답

Loop,
{
	InputBox, answer, 숫자 맞히기 Up & Down, 숫자를 입력하세요., , 300, 150	;사용자가 입력할 값

	if (answer == correct)
	{
		MsgBox, 정답입니다.
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
