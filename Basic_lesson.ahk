#SingleInstance, Force ;이전 인스턴스를 없애고 최신 인스턴스 실행
#WinActivateForce ;윈도우즈 액티브화

F4:: ;오토핫키 종료
ExitApp

;Ctrl: ^
;Alt: !
;Shift: +
;Window: #
;Key Matching: ::
;Comments: ;
;Comments: /*  */

;실습 예시 Enter::Space ;엔터를 누르면 스페이스가 실행
;한글이 깨지는 현상은 Tools - SciTE4AutoHotkey settings...를 선택하고 File codepage를 Korea Wansung(한글 완성형)으로 바꾸면 끝

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
Loop ;Up & Down 게임을 계속 실행하지 않고 정답을 맞출 때까지 반복하게 반드는 방법
{
	InputBox, answer, 숫자 맞히기 Up & Down, 숫자를 입력하세요., HIDE, 300, 150 ;사용자가 입력할 값
	
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
			
			if(run_time = "13:00:00") ; 1번 시간 설정
			{
						Sleep 2000
						Run, "ysqurantine.mp3"						
			}
			
			if(run_time = "15:00:00") ; 2번 시간 설정
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
Send, {a 100} ;a를 100번 찍어라
return