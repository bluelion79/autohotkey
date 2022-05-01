#SingleInstance, Force

F4::
ExitApp


!1::
ImageSearch, pX, pY, 0, 0, 1280, 720, *30 image\9.png
MsgBox, % pX "/" pY
return

!2::
ImageSearch, pX, pY, 0, 0, 1280, 720, *30 image\9.png
xx := pX + 30
yy := pY + 30
Click, %xx% %yy%
return

!3::
ImageSearch, pX, pY, 0, 0, 1280, 720, *30 image\900.png
MsgBox, % ErrorLevel	;0: 이미지를 찾음
						;1: 이미지를 찾지 못함
						;2: 이미지 파일이 없음
return

!4::
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

!5::
;imgSearch("9", 30, 25, 25)
imgSearch("9", 30, 500, 100)
return
