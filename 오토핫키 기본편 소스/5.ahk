#SingleInstance, Force

F4::
ExitApp


!1::
MouseClick, Left, 150, 150, 2
return

!2::
MouseClick, Right, 150, 150, 1
return

!3::
;MouseClick, Left, 150, 150, 1, 0	; ���� ����
MouseClick, Left, 150, 150, 1, 100	; ���� ����
return

!4::
MouseMove, 150, 150, 50
;MouseMove, 150, 150, 50, R
return

!5::
MouseClick, Left, 51, 275, 1
return

!6::
;Click, 51, 275	; MouseClick, Left, 51, 275, 1 �� ����
;Click, 51, 275, 2	; MouseClick, Left, 51, 275, 2 �� ����
;Click, 51, 275, 0	; MouseMove, 51, 275 �� ����
Send, {Click 51, 275}	; MouseClick, Left, 200, 200, 1 �� ����
return

!7::
MouseClickDrag, Left, 150, 100, 150, 250, 50
return

!8::
CoordMode, Mouse, Relative
Click, 150, 150

Sleep, 1000 ; 1��=1000

CoordMode, Mouse, Screen
Click, 150, 150

return

!9::
MouseGetPos, xx, yy
Send, %xx% , %yy%
return

