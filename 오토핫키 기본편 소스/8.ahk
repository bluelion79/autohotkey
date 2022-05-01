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
MsgBox, , 안녕하세요, Hello World!
return

!4::
MsgBox, , 안녕하세요, Hello World!, 2
return

!5::
MsgBox, 16449, 제목, 내용, 5
return

!6::
MsgBox, 36, Yes or No, 골라주세요

IfMsgBox, Yes
{
	Send, 예스!
}
IfMsgBox, No
{
	Send, 노노!
}
return
