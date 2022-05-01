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

FormatTime, fullTime, , yyyy년 MM월 dd일 HH시 mm분 ss초
MsgBox, % fullTime

fullTime2 := A_YYYY "년 " A_MM "월 " A_DD "일 " A_Hour "시 " A_Min "분 " A_Sec "초"
MsgBox, % fullTime2
return


!4::
; 소리 재생
SoundPlay, % A_ScriptDir "\media\applause2.wav"
MsgBox, test1

SoundPlay, % A_ScriptDir "\media\applause2.wav", wait
MsgBox, test2
return
