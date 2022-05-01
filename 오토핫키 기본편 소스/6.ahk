#SingleInstance, Force

F4::
ExitApp


!1::
Send, test

Sleep, 2000	; 1000 = 1√ 

Click, 200, 200
return


aaa:
Click, 200, 200
return

!2::
SetTimer, aaa, 2000
return


!3::
Send, abcdefg
return

