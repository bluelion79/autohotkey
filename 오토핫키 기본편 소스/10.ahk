#SingleInstance, Force

F4::
ExitApp


!1::
correct := 10	;정답

InputBox, answer, 숫자 맞히기 Up & Down, 숫자를 입력하세요., , 300, 150	;사용자가 입력할 값

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


!2::
ImageSearch, pX, pY, 0, 0, A_ScreenWidth, A_ScreenHeight, image/11.png
; ErrorLevel: 0(이미지 찾은 경우), 1(이미지를 찾지 못한 경우), 2(이미지 파일이 없는 경우)
if (ErrorLevel == 0)	;이미지 찾은 경우
{
	;MouseClick, Left, %xx%, %yy%, 1
	Click, %pX%, %pY%
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
	ImageSearch, pX, pY, 0, 0, A_ScreenWidth, A_ScreenHeight, *%acc% image/%imgFile%
	
	if (ErrorLevel == 0)	;이미지 찾은 경우
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
	
	return
}

!3::
imgSearch("9.png", 30, 50, 50)
imgSearch("10.png", 30, 50, 50)
imgSearch("11.png", 30, 50, 50)
return
