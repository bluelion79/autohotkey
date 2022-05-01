#SingleInstance, Force

F4::
ExitApp


!1::
a := 1
Send, % a
return

f(x)
{
	y := x * 2
	return y
}

!2::
Send, % f(100)
return


sendCnt(cnt)
{
	Send, {a %cnt%}
}

!3::
sendCnt(100)
return

!4::
sendCnt(10)
sendCnt(5)
return

sendCharCnt(char, cnt)
{
	Send, {%char% %cnt%}
}

!5::
sendCharCnt("a", 5)
sendCharCnt("b", 7)
return

mClick(x, y)
{
	Click, %x%, %y%
	Send, test
}

!6::
mClick(100, 500)
return
