#SingleInstance, Force

F4::
ExitApp


!1::
Run, calc
return


!2::
Run, mspaint
return


!3::
Run, C:\Program Files\Internet Explorer\iexplore.exe "http://autohotkey.com"
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

!4::
Run, C:\Program Files\Internet Explorer\iexplore.exe "http://autohotkey.com"
Sleep, 8000

imgSearch("9.png", 100, 50, 50)
return
