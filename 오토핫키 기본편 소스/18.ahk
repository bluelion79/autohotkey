#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


F4::
ExitApp


!1::
; String
str := "Auto Hot Key"

MsgBox, % StrLen(str)

MsgBox, % InStr(str, "ahk")
MsgBox, % InStr(str, "Auto")

MsgBox, % InStr(str, "auto", true)
MsgBox, % InStr(str, "auto", false)

MsgBox, % SubStr(str, 1, 4)
MsgBox, % SubStr(str, 1, 6)
return


!2::
/*
list := ["A", "B", "C"]
MsgBox, % list[0] ", " list[1] ", " list[2] ", " list[3] ", " list[4]

list.Insert("D")
MsgBox, % list[0] ", " list[1] ", " list[2] ", " list[3] ", " list[4]

list.Remove(2, 3)	; A, B, C, D
MsgBox, % list[0] ", " list[1] ", " list[2] ", " list[3] ", " list[4]
*/
str := "Auto Hot Key"

arr := StrSplit(str, " ")
MsgBox, % arr[1] ", " arr[2] ", " arr[3]

arr.Remove(3, 3)
MsgBox, % arr[1] ", " arr[2] ", " arr[3]

arr.Insert("King")
MsgBox, % arr[1] ", " arr[2] ", " arr[3]
return


!3::
; Date & Time
FormatTime, today, , yyyy-MM-dd
MsgBox, % today

FormatTime, now, , HH:mm:ss
MsgBox, % now

FormatTime, fullTime, , yyyy�� MM�� dd�� HH�� mm�� ss��
MsgBox, % fullTime

fullTime2 := A_YYYY "�� " A_MM "�� " A_DD "�� " A_Hour "�� " A_Min "�� " A_Sec "��"
MsgBox, % fullTime2
return


!4::
; �Ҹ� ���
SoundPlay, % A_ScriptDir "\media\applause2.wav"
MsgBox, test1

SoundPlay, % A_ScriptDir "\media\applause2.wav", wait
MsgBox, test2
return
