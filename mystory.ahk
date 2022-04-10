
#SingleInstance, Force ;이전 인스턴스를 없애고 최신 인스턴스 실행
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

/*
Ctrl: ^
Alt: !
Shift: +
Window: #
*/

Gui, Add, Text, x12 y59 w100 h20 , 여자 주인공 이름
Gui, Add, Text, x12 y99 w90 h20 , 가진 돌의 갯수
Gui, Add, Text, x12 y139 w70 h20 , 가진 돈(원)
Gui, Add, Text, x12 y179 w60 h20 , 건강 상태
Gui, Add, Radio, x212 y209 w-240 h-260 , Radio
Gui, Add, Radio, x122 y179 w50 h20 vyes Checked, 좋음
Gui, Add, Radio, x202 y179 w50 h20 vno, 나쁨
Gui, Add, Text, x12 y19 w100 h20 , 남자 주인공 이름
Gui, Add, Edit, x122 y19 w110 h20 vmale, 이름 입력
Gui, Add, Edit, x122 y59 w110 h20 vfemale, 이름 입력
Gui, Add, Edit, x122 y99 w130 h20 vstone, 가진 돌의 갯수 입력
Gui, Add, Edit, x122 y139 w130 h20 vmoney, 가진 돈 액수 입력
Gui, Add, Button, x12 y219 w90 h30 , 시작
Gui, Add, Button, x158 y219 w100 h30 , 취소
Gui, Show, w268 h266, The Circle of Life
return

GuiClose:
{
	ExitApp
}
return

Button시작:
{
	
	Gui, Submit, nohide ; Gui에 있는 변수 값 가져오기

	IfWinNotExist, 제목 없음 - Windows 메모장
	{
		Run, notepad.exe		
	}
	else
	{
		WinRestore, 제목 없음 - Windows 메모장 ; 최소화되어 있는 창을 다시 살리기 
		WinActivate, 제목 없음 - Windows 메모장		
	}
	
	Sleep, 1000
	Send, ^a
	Sleep, 1000
	Send, {Del}
	Sleep, 1000
	
	intro(male, female, stone, money)
	Sleep, 500
	
	send, %male% and %female% live a good life.`n
	
	if(yes = 1)
	{
		if (money >= 100) 
		{
			body1(male, female, stone, money)
		} else 
		{
			body2(male, female, stone, money)
		}
	} else
	{
		send, But, %male% is sick now. So %male% and %female% go to hospital.`n
		send, %male% and %female% go to hospital.`n
		send, %male% and %female% are getting better day by day.`n
	}
	Sleep, 500
	
	conclusion(male, female, stone, money)	
}
return

/*
Send, {!}autohotkey             - 나열하듯 타이핑 치듯 출력됨. 촤르륵.
Sendraw, !autohotkey          - 나열하듯 타이핑 치듯 출력됨. 촤르륵.
Sendinput, {!}autohotkey      - 한방에 도장 찍히듯 뙇뙇뙇 출력됨. 촤르륵이 아니고 쾅쾅쾅. 찍는 느낌.
*/


intro(male, female, stone, money) 
{
	send, %male% and %female% live in a faraway land.`n
}

body1(male, female, stone, money) 
{
  send, %male% and %female% have %money%원 and plan to take a trip.`n
}

body2(male, female, stone, money) 
{
  send, %male% and %female% plan to come up with an idea to make money.`n

	Loop, 3
	{
		send, %A_Index% day goes by.`n
	}	
  
  send, Fortunately, %male% and %female% find %stone% magic stone(s).`n
  send, %male% and %female% now have %stone% stone(s).`n
  body1(male, female, stone, money)
}

conclusion(male, female, stone, money) {
  send, %male% and %female% will live joyfully forever.
}

Button취소:
{
	ExitApp
}
return
