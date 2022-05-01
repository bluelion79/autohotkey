#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


global curTime := ""
global team1 := ["A", 0]	; [����1, ����1]
global team2 := ["B", 0]	; [����2, ����2]
global history1 := []		; [�ð�1]
global history2 := []		; [�ð�2]
global history := ""		; ȭ�鿡 �������� �� ���


Gui +AlwaysOnTop
Gui, Color, White

Gui, Font, s20, Arial
Gui, Add, Text, vcurTime x230 y30 w270 h50 Center, %curTime%

Gui, Add, Edit, vteamName1 x30 y90 w200 h50 Center -vscroll -E0x200, % team1[1]
Gui, Add, Text, x340 y95 w50 h50 Center, ��
Gui, Add, Edit, vteamName2 x500 y90 w200 h50 Center -vscroll -E0x200, % team2[1]

Gui, Add, Edit, vteamPoint1 ReadOnly number x30 y150 w200 h50 Center -vscroll -E0x200, % team1[2]
Gui, Add, Text, x340 y155 w50 h50 Center, VS
Gui, Add, Edit, vteamPoint2 ReadOnly number x500 y150 w200 h50 Center -vscroll -E0x200, % team2[2]

Gui, Font, s12, Arial

Gui, Add, Edit, vhistory ReadOnly x30 y210 w670 h230 Center, % history

Gui, Font

Gui, Add, Button, gStart x220 y460 w270 h20, ����
Gui, Add, Button, gEnd x220 y480 w270 h20, ����

Gui, Show, , Point Board

ControlFocus, Edit5, Point Board
getTime()
return


Start:
{
	Gui, Submit, nohide ; GUI ���� ������ ������Ʈ
	
	team1 := [teamName1, 0] ; [����, ����]
	team2 := [teamName2, 0] ; [����, ����]
	
	history1 := []	; [�ð�]
	history2 := []	; [�ð�]
	history := ""
	
	GuiControl, , teamPoint1, % team1[2]	; �������� GUI�� �ݿ�
	GuiControl, , teamPoint2, % team2[2]	; �������� GUI�� �ݿ�
	GuiControl, , history, % history		; �������� GUI�� �ݿ�
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
		GuiControl, , curTime, %curTime%	;�������� GUI�� �ݿ�
	}
}


getPoint(team)
{
	SoundPlay, media\applause2.wav
	
	if (history1.MaxIndex() > 0 or history2.MaxIndex() > 0)
	{
		history := "`n" history	; `n: �ٹٲ� ��ȣ
	}
	
	if (team == 1)
	{
		team1[2] := team1[2] + 1
		history1.Insert(curTime)
		
		history := history1[history1.MaxIndex()] team1[1] history	; (�ֱ� �� ����) (����) (���� �� ����)
	}
	else if (team == 2)
	{
		team2[2] := team2[2] + 1
		history2.Insert(curTime)
		
		history := history2[history2.MaxIndex()] team2[1] history	; (�ֱ� �� ����) (����) (���� �� ����)
	}
	
	GuiControl, , teamPoint1, % team1[2]	;�������� GUI�� �ݿ�
	GuiControl, , teamPoint2, % team2[2]	;�������� GUI�� �ݿ�
	GuiControl, , history, % history	;�������� GUI�� �ݿ�
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
	history := SubStr(history, 10 + StrLen(team1[1]))	; �ֱ��� �� ������ �߶�(`n14:04:27����)
	
	GuiControl, , teamPoint1, % team1[2]	; �������� GUI�� �ݿ�
	GuiControl, , teamPoint2, % team2[2]	; �������� GUI�� �ݿ�
	GuiControl, , history, % history	; �������� GUI�� �ݿ�
}


PGUP::	; ��1�� ���� �ø���
getPoint(1)
return


Up::	; ��2�� ���� �ø���
getPoint(2)
return


PGDN::
cancelPoint()	; �ֱ� �� ���
return


Down::
cancelPoint()	; �ֱ� �� ���
return



F4::
ExitApp


