#SingleInstance, Force

F4::
ExitApp


!1::
MsgBox, Hello World!
return

!2::
MsgBox, , , Hello World!
return

!3::
MsgBox, , �ȳ��ϼ���, Hello World!
return

!4::
MsgBox, , �ȳ��ϼ���, Hello World!, 2
return

!5::
MsgBox, 16449, ����, ����, 5
return

!6::
MsgBox, 36, Yes or No, ����ּ���

IfMsgBox, Yes
{
	Send, ����!
}
IfMsgBox, No
{
	Send, ���!
}
return
