#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


F4::
ExitApp


!F1::
goBookMark("북마크1")
return

!F2::
goBookMark("북마크2")
return

!F3::
goBookMark("북마크3")
return

goBookMark(key)
{
	try
	{
		bookmarkName := key
		
		Loop, Read, bookmark.txt
		{
			list := StrSplit(A_LoopReadLine, "=")
			if (list.MaxIndex() > 0)
			{
				key := list[1]
				val := list[2]
				
				if (key == bookmarkName)
				{
					app := "ahk_class PotPlayer"
					IfWinNotExist, % app
					{
						MsgBox, 미디어 재생기가 실행되어 있지 않습니다.
						return
					}
					
					IfWinNotActive, % app
					{
						WinRestore, % app
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
}

