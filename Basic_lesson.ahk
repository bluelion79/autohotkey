#SingleInstance, Force ;���� �ν��Ͻ��� ���ְ� �ֽ� �ν��Ͻ� ����
#WinActivateForce ;�������� ��Ƽ��ȭ

F4:: ;������Ű ����
ExitApp

;Ctrl: ^
;Alt: !
;Shift: +
;Window: #
;Key Matching: ::
;Comments: ;
;Comments: /*  */

;�ǽ� ���� Enter::Space ;���͸� ������ �����̽��� ����
;�ѱ��� ������ ������ Tools - SciTE4AutoHotkey settings...�� �����ϰ� File codepage�� Korea Wansung(�ѱ� �ϼ���)���� �ٲٸ� ��

;[1]
F1::
MsgBox, Hello World!
return

;[2]
F2::
MsgBox, 0, C.Crew, We go together.
return

;[3]
F3::
Gui, Add, Button, x182 y319 w10 h-20 , Button
Gui, Add, Button, x352 y319 w-10 h-60 , Button
Gui, Add, Button, x102 y279 w300 h70 , Button
Gui, Add, CheckBox, x22 y19 w100 h100 , CheckBox
Gui, Add, Radio, x162 y29 w100 h30 , Radio
Gui, Add, Picture, x222 y79 w220 h110 , C:\Program Files\AutoHotkey\SciTE\tools\SmartGUI\splash.gif
Gui, Add, UpDown, x152 y129 w50 h100 , UpDown
; Generated using SmartGUI Creator for SciTE
Gui, Show, w479 h379, C.Crew GUI
return

GuiClose:
ExitApp

;[4]
!1::
correct := 10
Loop ;Up & Down ������ ��� �������� �ʰ� ������ ���� ������ �ݺ��ϰ� �ݵ�� ���
{
	InputBox, answer, ���� ������ Up & Down, ���ڸ� �Է��ϼ���., HIDE, 300, 150 ;����ڰ� �Է��� ��
	
	if (answer == correct)
	{
		MsgBox, Correct!
		break
	}
	else if (answer < correct)
	{
		MsgBox, Up!
		continue
	}
	else
	{
		MsgBox, Down!
		continue
	}
}
return

;[5]
!2::
try
	{
		Loop
		{
			
			run_time = %A_Hour%:%A_Min%:%A_Sec%
			
			if(run_time = "13:00:00") ; 1�� �ð� ����
			{
						Sleep 2000
						Run, "ysqurantine.mp3"						
			}
			
			if(run_time = "15:00:00") ; 2�� �ð� ����
			{
						Sleep 2000
						Run, "ysqurantine.mp3"
			}
						
		}
	}
catch, e
	{
		MsgBox, % e
	}
return

;[6]
!3::
Send, {a 100} ;a�� 100�� ����
return