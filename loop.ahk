/* #####################################
 * �ݺ����� Loop�� ������ �� �ִ� �ڵ��Դϴ�.
 * ########################################
 */

F1::

Loop, 3
{
    MsgBox, Iteration number is %A_Index%.  ; A_Index will be 1, 2, then 3
    Sleep, 100
}
return

F2::

Loop
{
    if (A_Index > 25)
        break  ; Terminate the loop
    if (A_Index < 20)
        continue ; Skip the below and start a new iteration
    MsgBox, A_Index = %A_Index% ; This will display only the numbers 20 through 25
}
return

F3::

Loop, 3
{
  Sleep, 1000
  MsgBox, Text
}
Return

F4::

Count=3
Stop=2000

Loop, %Count%
{
  MsgBox, Text
  Sleep, Stop
}
Return

; ��ó: https://secretgd.tistory.com/225 [�����ȭ��]