
Loop, 3
{
    MsgBox, Iteration number is %A_Index%.  ; A_Index will be 1, 2, then 3
    Sleep, 100
}



Loop
{
    if (A_Index > 25)
        break  ; Terminate the loop
    if (A_Index < 20)
        continue ; Skip the below and start a new iteration
    MsgBox, A_Index = %A_Index% ; This will display only the numbers 20 through 25
}

F1::

Loop, 3

{

  Sleep, 1000

  Send, 비밀의화원

}

Return

 

F2::

Count=3

Stop=2000

Loop, %Count%

{

  Send, 비밀의화원

  Sleep, Stop

}

Return



출처: https://secretgd.tistory.com/225 [비밀의화원]