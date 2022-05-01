#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


global xlFile := A_ScriptDir "\bookmark.xlsx"
global xl := ""
global wb := ""
global sht := ""


IfWinExist, ahk_class XLMAIN
{
	xl := ComObjActive("Excel.Application")
	
	WinRestore, ahk_class XLMAIN
	WinActivate, ahk_class XLMAIN
}
else
{
	xl := ComObjCreate("Excel.Application")
}

xl.Visible := True
wb := xl.Workbooks.Open(xlFile)
sht := wb.Worksheets("Sheet1")
return


goBookMarkFromExel(rowNum)
{
	try
	{
		app := "ahk_class PotPlayer"
		IfWinNotExist, % app
		{
			MsgBox, �̵�� ����Ⱑ ����Ǿ� ���� �ʽ��ϴ�.
			return
		}
		
		IfWinNotActive, % app
		{
			WinActivate, % app
		}
		
		val := sht.Range("A" rowNum).Text
		
		Send, g
		Send, % val
		Send, {Enter}
		Send, {Esc}
	}
	catch, e
	{
		MsgBox, % e
	}
}
return


!1::
;sht.Range("B1").Value := "abc"	; ���� �Է�
;temp := sht.Range("B1").Value
temp := sht.Range("B1").Text
MsgBox, % temp
return


!2::
goBookMarkFromExel(3)	;���ȣ �Է�
Sleep, 2000
goBookMarkFromExel(2)
Sleep, 1000
goBookMarkFromExel(1)
return


F4::
ExitApp


!F1::
boomarkName := "�ϸ�ũ1"

try
{
	Loop, Read, bookmark.txt
	{
		list := StrSplit(A_LoopReadLine, "=")
		if (list.MaxIndex() > 1)
		{
			key := list[1]
			val := list[2]
			
			if (key == boomarkName)
			{
				app := "ahk_class PotPlayer"
				IfWinNotExist, % app
				{
					MsgBox, �̵�� ����Ⱑ ����Ǿ� ���� �ʽ��ϴ�.
					return
				}
				
				IfWinNotActive, % app
				{
					WinActivate, % app
				}
				
				Send, g
				Send, % val
				Send, {Enter}
				Send, {Esc}
			}
		}
	}
}
catch, e
{
	MsgBox, % e
}
return


; �Լ�ȭ --> Refactoring
goBookMark(key)
{
	try
	{
		boomarkName := key
		
		Loop, Read, bookmark.txt
		{
			list := StrSplit(A_LoopReadLine, "=")
			if (list.MaxIndex() > 1)
			{
				key := list[1]
				val := list[2]
				
				if (key == boomarkName)
				{
					app := "ahk_class PotPlayer"
					IfWinNotExist, % app
					{
						MsgBox, �̵�� ����Ⱑ ����Ǿ� ���� �ʽ��ϴ�.
						return
					}
					
					IfWinNotActive, % app
					{
						WinActivate, % app
					}
					
					Send, g
					Send, % val
					Send, {Enter}
					Send, {Esc}
				}
			}
		}
	}
	catch, e
	{
		MsgBox, % e
	}
}
return


!F2::
goBookMark("�ϸ�ũ2")
return


!F3::
goBookMark("�ϸ�ũ3")
return
