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
	MsgBox, ������ �߻��Ͽ����ϴ�. (������ �����ϴ�.)
}
finally
{
	MsgBox, ��ũ�� ������ �Ϸ�Ǿ����ϴ�.
}
return


!3::
try
{
	MsgBox, 1
	MsgBox, 2
	throw, "������ ������ �߻����׽��ϴ�."
	MsgBox, 3
}
catch e
{
	MsgBox, ������ �߻��Ͽ����ϴ�. %e%
}
finally
{
	
}

return

