#SingleInstance, Force ;이전 인스턴스를 없애고 최신 인스턴스 실행
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


F4:: ;오토핫키 종료
ExitApp

;Ctrl: ^
;Alt: !
;Shift: +
;Window: #

/*
F1::
MsgBox, Hello World!
return//

F2::
MsgBox, 안녕하세요.
return
*/

; Enter::Space ;엔터를 누르면 스페이스가 실행

!z:: ;Explorer

!x:: ;Evernote

!c:: ;Chrome

::qwe::
Send, By the way
return

!1::
Send, {a 100} ;a를 100번 찍어라
return
  
!2::
SendInput, {b 100}
return

!3::
SendMode, Input
Send, {c 100}
return

!4:: ;기능키 입력
Send, {Enter}
Send, {Space}
return

!5:: ;Enter 문자를 그대로 입력하라. 
SendRaw, {Enter}
return

!6::
Send, {Alt Down}fa{Alt Up} ;Alt를 누르고 'f','a'키를 차례대로 눌러서 하단 메뉴를 선택하는 명령어
return

!7:: ;Ctrl+V 혼합 적용 
Send, ^v
return

aaa:
Click, 200, 200
return

!8:: ;간단한 변수를 사용하자. 레이블 이용 방법
SetTimer, aaa, 2000
return

!9::
a := 1 ;변수를 사용한다. 
Send, % a
return

f(x)
{
	y := x * 2
	return y
}

!10::
Send, % f(100) ;함수를 이용하자.
return

sendCnt(cnt) ;%는 표현식을 구현할 때 사용.  
{
	Send, {a %cnt%}
}

!11::
sendCnt(100)
return

sendCharCnt(char, cnt)
{
	Send, {%char% %cnt%}
}

!12::
sendCharCnt("a", 5)
sendCharCnt("b", 5)

mClick(x, y)
{
	Click, %x%, %y%
}

!13::
mClick(100, 100)
return

!14::
MsgBox, Hello World!
return

!15::
MsgBox, 35, Yes or No, 골라주세요

IfMsgBox, Yes ;메시지 박스를 선택할 때 반응에 따라 다르게 메시지 출력
{
	Send, Yes!
}
IfMsgBox, No
{
	Send, No!!
}

return

!16::
ImageSearch, pX, pY, 0, 0, 1280, 720, *30 image\9.png ;기본적으로는 Relative 모드 여서 창이 움직여도 그대로 해당 이미지 좌표를 따라간다. 그리고 *30부분은 이미지 검색의 정확도를 나타내는 값이다. 30~50 정도가 적절. 조절해서 검색하자. 
MsgBox, % pX "/" pY

xx := pX + 30
yy := pY + 30

Click, %xx% %yy%
return

!17::
ImageSearch, pX, pY, 0, 0, 1280, 720, *30 image\9.png
MsgBox, % ErrorLevel	;0: 이미지 찾음
						;1: 이미지를 찾지 못함
						;2: 이미지 파일이 없음
return

;AutoHotKey의 내장 변수를 이용하여 화면의 해당도를 자동으로 정해서 이미지를 찾기

!18::
ImageSearch, pX, pY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *30 image\9.png
Click, %pX% %pY%
return

imgSearch(imgFile, acc, rX, rY)
{
	ImageSearch, pX, pY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *%acc% image\%imgFile%.png
	xx := pX + rX
	yy := pY + rY
	Click, %xx%, %yy%
}

!19::
imgSearch("9", 30, 25, 25)
return

!20::
correct := 10 ;정답

InputBox, answer, 숫자 맞히기 Up & Down, 숫자를 입력하세요., HIDE, 300, 150 ;사용자가 입력할 값

if (answer == correct)
{
	MsgBox, 정답입니다.
}

else if (answer < correct)
{
	MsgBox, Up!
}

else
{
	MsgBox, Down!
}

return

!21::
ImageSearch, pX, pY, 0, 0, A_ScreenWidth, A_ScreenHeight, image/9.png
; ErrorLevel: 0 이미지를 찾은 경우, ErrorLevel: 1 이미지를 찾지 못한 경우, ErrorLevel: 2 이미지 파일이 없는 경우 

if (ErrorLevel == 0)
{
	Click, %pX%, %Py%
}
else if (ErrorLevel == 1)
{
	MsgBox, 이미지를 찾지 못했습니다.
}
else
{
	MsgBox, 이미지 파일을 확인해주세요.
}

return

imgSearch(imgFile, acc, rX, rY)
{
		ImageSearch, pX, pY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *%acc% image\%imgFile%
		if (ErrorLevel == 0)
		{
			xx := pX + rX
			yy := pY + rY
			Click, %xx%, %yy%
		}
		else if (ErrorLevel == 1)
		{
			MsgBox, 이미지를 찾지 못했습니다.
		}
		else
		{
			MsgBox, 이미지 파일을 확인해주세요.
		}		
}
	
!22::
imgSearch("9.png", 30, 50, 50)
return


!23::
Loop, 10 ; 10번 반복문 수행, 숫자가 없으면 무한 반복
{
	MsgBox, 반복문 수행 중(%A_Index%) ;A_Index는 인덱스 값의 증가를 살펴볼 때 사용할 수 있음
}
return

!24::
Loop, ; 무한 반복문에서 일정 반복 후 빠져나가게 만드는 방법
{
	MsgBox, 반복문 수행 중(%A_Index%)
	
	if (A_Index > 5)
	{
		MsgBox, 5번 이상 반복하여 반복문을 종료합니다.
		break
	}
}
return

!25::
while (true)
{
	MsgBox, 반복문 수행 중(%A_Index%)
	
	if (A_Index > 5)
	{
		MsgBox, 5번 이상 반복하여 반복문을 종료합니다.
		break
	}
}
return

!26::
while (A_Index <=5)
{
	MsgBox, 반복문 수행 중(%A_Index%)
}
return

!27::
Loop, ;Up & Down 게임을 계속 실행하지 않고 정답을 맞출 때까지 반복하게 반드는 방법
correct := 10
{
	InputBox, answer, Up & Down, , 300, 150
	
	if (answer == correct)
	{
		MsgBox, Correct!
		break
	}
	else if (answer < correct)
	{
		MsgBox, Up!
	}
	else
	{
		MsgBox, Down!
	}
}
return

!28:: ; 외부 프로그램을 실행하자!
Run, C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE
return

!29::
Run, C:\Program Files\Google\Chrome\Application\chrome.exe "http://google.com"
Sleep, 5000
imgSearch("9.png", 100, 50, 50)

!30::
IfWinExist, test.ahk
{
	MsgBox, There exists
}
else
{
	MsgBox, No existes
}
return

!31:: ;Notepad가 존재하지 않으면 메모장을 실행하라. 
IfWinNotExist, 제목 없음 - Windows 메모장
{
	Run, notepad.exe
}
else
{
	WinRestore, 제목 없음 - Windows 메모장 ; 창이 최소화되어 있으면 활성화가 안 될 수도 있음. 이때 확실하게 활성화될 수 있기 위한 조치 
	WinActivate, 제목 없음 - Windows 메모장
	Sleep, 500
	WinMove, 제목 없음 - Windows 메모장,, 0, 0, 500, 200 ;창 크기 조정, 창 이동
	WinMaximize, 제목 없음 - Windows 메모장
	Sleep, 2000
	WinMinimize, 제목 없음 - Windows 메모장
}
return

!32::
FileCreateDir, fileCreated ; 폴더 만들기
FileAppend, 파일입출력테스트`n, fileCreated\14.txt ; 만든 폴더에 '파일입출력테스트' 글을 개행 문자를 넣어서 입력

FileRead, fileContents, fileCreated\14.txt ; 텍스트 파일의 내용을 변수에 넣기 
MsgBox, % fileContents ; 파일 내용이 담긴 변수를 메시지 박스에 표현하기 

return

!33::
FileReadLine, line, fileCreated\14.txt, 3 ; 텍스트 파일 내용 중에서 3번째 줄 내용 읽기 
MsgBox, % line
return

!34::
Loop,
{
	FileReadLine, line, fileCreated\14.txt, %A_Index%
	
	if (ErrorLevel) ; 1:참, 0;거짓 따라서 텍스트 내용을 읽을 수 없는 경우 에러가 발생하면서 참기 되면서 루프를 빠져 나간다. 
	{
		break
	}
	
	MsgBox, % line
}
return

!35::
try
{
	FileRead, fileContents, fileCreated\15.txt ; 오류가 발생하지 않는 경우 수행 구문 
	MsgBox, % fileContents ; 오류가 발생하지 않는 경우 수행 구문
}
catch e
{
	MsgBox, 오류가 발생하였습니다. (파일이 없습니다.) %e% ; 오류가 발생하면 처리되는 구문, 오류를 담는 변수는 %e%임. 
}
finally
{
	MsgBox, 매크로 수행이 완료되었습니다. ; 무조건 실행되는 구문입니다.
}
return

!36::
try
{
	MsgBox, 1
	MsgBox, 2
	throw, "강제로 오류를 발생시켰습니다." ; 강제로 오류를 발생시켜서 catch 구문을 호출하여 오류 메시지를 확인할 수 있음.
	MsgBox, 3
}
catch e
{
	MsgBox, 오류가 발생하였습니다. %e%
}
finally
{
	
}

!37::
temp := "Answer Test"
Gui, Add, Text, x30 y70 w270 h20, Hello World?
Gui, Add, Edit, vtemp x30 y90 w200 h20, %temp%

Gui, Add, Radio, x30 y120 w50 h20 vyes Checked, Yes.
Gui, Add, Radio, x100 y120 w50 h20 vno, No.

Gui, Add, Button, gStart x20 y150 w270 h20, 매크로 실행 ; 매크로 실행 버튼을 누르면 gStart에 의해 Start 구문으로 이동
Gui, Add, Buttion, gEnd x20 y170 w270 h20, 매크로 종료 ; 매크로 종료 버튼을 누르면 gEnd에 의해 End 구문으로 이동

Gui, Show, , 매크로
return

Start:
{
	Gui, Submit, nohide ; GUI 값을 변수에 업데이트
	MsgBox, % yes "/" no ; 라디오 버튼을 선택하면 해당 선택 값을 1로 업데이트
	
	if (yes == 1)
	{
		GuiControl, , temp, Hello World! ;변수 값을 GUI에 반영
	}
	else
	{
		GuiControl, , temp, Hell World! ; 변수 값을 GUI에 반영
	}
}
return

End:
{
	ExitApp
}
return

GuiClose: ; X버튼을 누르면 앱이 종료되도록 설정
{
	ExitApp
}

; 컴파일러 실행
; C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe

컴파일러를 통해 실행 파일을 만들면 AutoHotKey가 설치되지 않아도 실행할 수 있음.