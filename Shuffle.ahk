#shuffle.ahk

#SingleInstance Force
#NoEnv

Gui, Add, Text, x30 y35 w150 h20, Content1 ;
Gui, Add, Edit, x30 y65 w150 h100 vcontent1, 1st items ;
Gui, Add, Text, x200 y35 w150 h20, Content2 ;
Gui, Add, Edit, x200 y65 w150 h100 vcontent2, 2nd items ;
Gui, Add, Text, x370 y35 w150 h20, Content3 ;
Gui, Add, Edit, x370 y65 w150 h100 vcontent3, 3rd items ;
Gui, Add, Text, x540 y35 w150 h20, Common ;
Gui, Add, Edit, x540 y65 w150 h100 vcommon, Common items ;

Gui, Add, Text, x30 y170 w200 h20, Result ;
Gui, Add, Edit, x30 y195 w650 h100 vresult, Result ;

Gui, Add, Radio, x30 y300 w400 h20 vrdoMethod Checked, Normal shuffle Cotent1 + Content2 +  Content3 + Common ;
Gui, Add, Radio, x30 y325 w400 h20 , Max shuffle Cotent1 x Content2 x Content3 + Common ;

Gui, Add, Text, x450 y303 w70 h20, Total count ;
Gui, Add, Edit, x530 y300 w50 h20 vcnt, 10 ;

Gui, Add, Button, x450 y325 w100 h20, Generate ;
Gui, Show

CoordMode, Pixel 
CoordMode, Mouse 

return

ButtonGenerate:
{
	Gui, Submit, nohide
	
	FormatTime, current, , yyyyMMddhhmmss
	fname = %A_ScriptDir%\result%current%.txt
	IF FileExist(fname)
		FileDelete, %fname%
		
	result := ""
	con1 := StrSplit(content1,"`n")
	con2 := StrSplit(content2,"`n")
	con3 := StrSplit(content3,"`n")
	cmm :=StrSplit(common,"`n")
	cmmtot =
	Loop % cmm.MaxIndex()
	{
		tcmm := cmm[A_Index]
		cmmtot = %cmmtot% %tcmm% %A_Space%
	}
	
	if cnt is space
		cnt :=0
	
	if( rdoMethod = 1) ; for normal case
	{
		idxa = 1
		idxb = 1
		idxc = 1
		Loop % cnt
		{
			temp1 := con1[idxa]
			temp2 := con2[idxb]
			temp3 := con3[idxc]
			temp = %temp1% %temp2% %temp3% %cmmtot%
;			temp = %temp1% %A_Space% %temp2% %A_Space% %temp3% %A_Space% %cmmtot%
			result = %result%%temp%`r`n
			idxb += 1
			if idxb > % con2.MaxIndex()
				idxb = 1
			idxc += 1
			if idxc > % con3.MaxIndex()
				idxc = 1
			idxa +=1
			if idxa > % con1.MaxIndex()
				idxa= 1
			
		}
		GuiControl,Text,result, %result%
	}
	else if	rdoMethod = 2
	{
		idxc = 1
		Loop % con3.MaxIndex()
		{
			idxb=1
			Loop % con2.MaxIndex()
			{
				idxa = 1
				Loop % con1.MaxIndex()
				{
					temp1 := con1[idxa]
					temp2 := con2[idxb]
					temp3 := con3[idxc]
					temp = %temp1% %temp2% %temp3% %cmmtot%
;					temp = %temp1% %A_Space% %temp2% %A_Space% %temp3% %A_Space% %cmmtot%
					result = %result%%temp%`r`n
					idxa +=1
					if idxa > % con1.MaxIndex()
						break
				}
				idxb += 1
				if idxb > % con2.MaxIndex()
					break
			}
			idxc += 1
			if idxc > % con3.MaxIndex()
				break
		}
		GuiControl,Text,result, %result%

	}
	else 
	{
	}
	FileAppend, %result% , %fname%
	File.Close()
}
return

ESC::ExitApp
return

GUIClose:
ExitApp
return