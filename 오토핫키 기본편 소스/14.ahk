#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


F4::
ExitApp


!1::
FileCreateDir, file
FileAppend, 파일입출력테스트`n, file\14.txt
return


!2::
FileRead, fileContents, file\14.txt
MsgBox, % fileContents
return


!3::
FileReadLine, line, file\14.txt, 1
MsgBox, % line

FileReadLine, line, file\14.txt, 3
MsgBox, % line
return


!4::
Loop,
{
	FileReadLine, line, file\14.txt, %A_Index%
	
	if (ErrorLevel)	; 1:참, 0:거짓
	{
		break
	}
	
	MsgBox, % line
}
return
