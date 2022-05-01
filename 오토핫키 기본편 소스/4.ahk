#SingleInstance, Force

F4::
ExitApp


!1::
Send, test
return

!2::
Send, {a 100}
return

!3::
SendInput, {b 100}
return

!4::
SendMode, Input
Send, {c 100}
return

!5::
Send, {Enter}
Send, {Space}
return

!6::
SendRaw, {Enter}
return

!7::
Send, ^v
return

!8::
Send, {Alt Down}fa{Alt Up}
return
