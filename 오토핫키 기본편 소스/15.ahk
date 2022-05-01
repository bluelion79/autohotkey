#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


F4::
ExitApp


!1::
FileRead, fileContents, file\15.txt
MsgBox, % fileContents
return


!2::
try
{
	FileRead, fileContents, file\14.txt
	MsgBox, % fileContents
}
catch e
{
	MsgBox, 오류가 발생하였습니다. (파일이 없습니다.)
}
finally
{
	MsgBox, 매크로 수행이 완료되었습니다.
}
return


!3::
try
{
	MsgBox, 1
	MsgBox, 2
	throw, "강제로 오류를 발생시켰습니다."
	MsgBox, 3
}
catch e
{
	MsgBox, 오류가 발생하였습니다. %e%
}
finally
{
	
}

return

