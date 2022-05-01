#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


global curTime := ""
global team1 := ["A", 0]	; [팀명1, 점수1]
global team2 := ["B", 0]	; [팀명2, 점수2]
global history1 := []		; [시간1]
global history2 := []		; [시간2]
global history := ""		; 화면에 보여지리 골 기록


Gui +AlwaysOnTop
Gui, Color, White

Gui, Font, s20, Arial
Gui, Add, Text, vcurTime x230 y30 w270 h50 Center, %curTime%

Gui, Add, Edit, vteamName1 x30 y90 w200 h50 Center -vscroll -E0x200, % team1[1]
Gui, Add, Text, x340 y95 w50 h50 Center, 팀
Gui, Add, Edit, vteamName2 x500 y90 w200 h50 Center -vscroll -E0x200, % team2[1]

Gui, Add, Edit, vteamPoint1 ReadOnly number x30 y150 w200 h50 Center -vscroll -E0x200, % team1[2]
Gui, Add, Text, x340 y155 w50 h50 Center, VS
Gui, Add, Edit, vteamPoint2 ReadOnly number x500 y150 w200 h50 Center -vscroll -E0x200, % team2[2]

Gui, Font, s12, Arial

Gui, Add, Edit, vhistory ReadOnly x30 y210 w670 h230 Center, % history

Gui, Font

Gui, Add, Button, gStart x220 y460 w270 h20, 시작
Gui, Add, Button, gEnd x220 y480 w270 h20, 종료

Gui, Show, , Point Board

ControlFocus, Edit5, Point Board
getTime()
return


Start:
{
	Gui, Submit, nohide ; GUI 값을 변수에 업데이트
	
	team1 := [teamName1, 0] ; [팀명, 점수]
	team2 := [teamName2, 0] ; [팀명, 점수]
	
	history1 := []	; [시간]
	history2 := []	; [시간]
	history := ""
	
	GuiControl, , teamPoint1, % team1[2]	; 변수값을 GUI에 반영
	GuiControl, , teamPoint2, % team2[2]	; 변수값을 GUI에 반영
	GuiControl, , history, % history		; 변수값을 GUI에 반영
}
return


End:
{
	ExitApp
}


getTime()
{
	SetTimer, GetTime, 1000
	{
		FormatTime, curTime, , HH:mm:ss
		GuiControl, , curTime, %curTime%	;변수값을 GUI에 반영
	}
}


getPoint(team)
{
	SoundPlay, media\applause2.wav
	
	if (history1.MaxIndex() > 0 or history2.MaxIndex() > 0)
	{
		history := "`n" history	; `n: 줄바꿈 기호
	}
	
	if (team == 1)
	{
		team1[2] := team1[2] + 1
		history1.Insert(curTime)
		
		history := history1[history1.MaxIndex()] team1[1] history	; (최근 골 정보) (팀명) (과거 골 정보)
	}
	else if (team == 2)
	{
		team2[2] := team2[2] + 1
		history2.Insert(curTime)
		
		history := history2[history2.MaxIndex()] team2[1] history	; (최근 골 정보) (팀명) (과거 골 정보)
	}
	
	GuiControl, , teamPoint1, % team1[2]	;변수값을 GUI에 반영
	GuiControl, , teamPoint2, % team2[2]	;변수값을 GUI에 반영
	GuiControl, , history, % history	;변수값을 GUI에 반영
	return
}


cancelPoint()
{
	arrTemp := StrSplit(history, "`n")
	
	if (InStr(arrTemp[1], team1[1]))
	{
		team1[2] := team1[2] - 1
		history1.Remove(1, 1)
	}
	else if (Instr(arrTemp[1], team2[1]))
	{
		team2[2] := team2[2] - 1
		history2.Remove(1, 1)
	}
	
	; 14:24:36B`n14:24:32A
	history := SubStr(history, 10 + StrLen(team1[1]))	; 최근의 골 정보를 잘라냄(`n14:04:27팀명)
	
	GuiControl, , teamPoint1, % team1[2]	; 변수값을 GUI에 반영
	GuiControl, , teamPoint2, % team2[2]	; 변수값을 GUI에 반영
	GuiControl, , history, % history	; 변수값을 GUI에 반영
}


PGUP::	; 팀1의 점수 올리기
getPoint(1)
return


Up::	; 팀2의 점수 올리기
getPoint(2)
return


PGDN::
cancelPoint()	; 최근 골 취소
return


Down::
cancelPoint()	; 최근 골 취소
return



F4::
ExitApp


