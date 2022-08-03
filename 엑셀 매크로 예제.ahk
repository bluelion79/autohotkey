#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

/*
	* 명령어의 순차적 구성 : 
	xl . 어느워크시트의 . 무슨주소에서의 .무엇을 . 해달라 
	
	* 시트 지정 방법 :
	Sheets = 앞에서 몇 번 째의 시트(숫자로 로드 Sheets(1) 첫 번째 시트를 로드)
	WorkSheets="특정 이름의 시트" (시트 이름을 통해 로드. WorkSheets("aa") aa라는 이름의 시트를 로드)
	ActiveSheet=현재 시트
	
	* 가장 많이 필요할 것 같은 명령어 : 
	 - UsedRange 구하기
	 - 셀 값 변경하기
	 - 셀 값 읽어오기
	 - Offset 사용(특정 행을 기준으로 몇 번째 행 몇 번째 열인지)
	 - 필터링
	 - 필터링 후 보이는 셀 값만 선택하기, 복사-붙여넣기

	* 경험상 팁
	 - 새로운 시트로 보이는 셀만 복사하여 옮기는 이유.
*/

Global xl ; 중요함

Path:= A_ScriptDir . "\엑셀 매크로 예제.xlsx"
IfNotExist,%Path%
	Path:=""

; 실행----------
xl := OpenExcel(Path,True)
;~ xl := OpenExcel(False) 안 보이게 실행
if(xl=false)
{
	msgbox, 취소하셨습니다.
	return
}
;------실행




; UsedRange -----------
UsedRange	:=	xl.ActiveSheet.UsedRange.Address
;~ UsedRange	:=	xl.Sheets(1).UsedRange.Address  ; 표현이 다르고 쓰기 나름입니다.
;~ UsedRange	:=	xl.WorkSheets("aa").UsedRange.Address
MsgBox, 사용한 셀의 영역은 %UsedRange% 입니당.
; ----------- UsedRange



; 셀 값 변경 및 읽어오기 ---
Msgbox, A1 셀 값을 변경해볼까용? 3 번 바껴요!
Loop,3
{
	xl.Sheets(1).Range("A1").value := "변했죠? : " . A_Index
	Sleep,2000
}
Msgbox, 이제 E7번의 값을 읽어보겠습니다
MsgBox, % "E7의 값은 = " . xl.Sheets(1).Range("E7").value . "  입니다!"
; --- 셀 값 변경 및 읽어오기



; Offset 사용 >> 루프 사용 쉽게 하기
;   Offset(아래로, 옆으로) 라고 기억하세요!
Msgbox,C4 셀을 기준으로 아래쪽으로 네 칸 까지의 값을 읽되`n 2 번째 껏은 건너뛸게요!
AText:=""
Loop,4
{
	if(A_Index=2)
	{
		AText .= "건너뜀!`n"
		continue
	}
	AText .= xl.Sheets(1).Range("C4").Offset(A_Index-1,0).value . "`n"
}
msgbox,% AText
; Offset 사용 끝




; 필터링 사용하기
MsgBox, UsedRange 의 5번째 열에서 ""나""로 필터링을 걸어볼게요 !
xl.sheets(1).Range(UsedRange).AutoFilter(5, "나")
;~ xl.sheets(1).Range(UsedRange).AutoFilter(Column,"=" . Text . "*", xlAnd) ; xlAnd := 1, 찾고자 하는 '문자' 가 앞 쪽에 붙어있는걸 찾을 때 쓰는 자세한 옵션이에요.
; 필터링 사용 끝




; 보이는 셀만 복사
MsgBox,필터링이 끝난 표에서 화면에 보이는 셀만 복사하구`n 새로운 시트로 붙여넣겠습니다~
xlCellTypeVisible := 12
xl.Worksheets.Add(,xl.sheets(1)) ; 새 시트를 sheet1 뒷 편에 생성합니다
;~ xl.Sheets(1).activate ; 액티브 중인 시트를 바꿀 수도 있어요! 새 시트가 생성되면, 만들어진 시트가 액티브 시트(활성중인 시트)가 되거든요.
xl.Sheets(1).Range(UsedRange).SpecialCells(xlCellTypeVisible).Copy(xl.sheets(2).range("A1"))

;보이는 셀만 복사 끝

Msgbox, 잠시 새로만든 시트는 지우고..
xl.sheets(2).Delete()


MsgBox, 이제 끌게요~!


CloseExcel(xl)


/*
	* 필터링 후 새로운 시트로 복사하는 이유는
	
	데이터가 엑셀에 아직 남아있기 때문입니다
	그래서 필터링한 곳에서부터 뭘 어떤 작업이든 하려하면, 셀 범위의 주소가 들어가게 되고 
	얘는 필터링 했건 말건 모든 값을 챙겨오거든요.
	차라리 다른 시트에 복사해서 작업하고 하는게 속 편합니다.
	
	* 세세한 옵션들은 Excel VBA MSDN을 참조해서 [해석](ㅠㅠㅜㅠㅠㅠ) 해서 적용하면 됩니다.
*/


Return


OpenExcel(Path="",ViewOff=False)
{
	if(path="")
	{
		FileSelectFile, Path, 3, , Open a file, Excel Documents (*.xls; *.xlsx)
		if Path =
		{
			return false
		}
	}
	
	xl := ComObjCreate("Excel.Application")
	xl.Workbooks.Open(Path)
	
	xl.Visible := ViewOff
	xl.DisplayAlerts	:= False
	xl.EnableEvents 	:= False
	return xl
}

CloseExcel(xl, Saving=False)
{
	if isobject(xl)
	{
		xl.EnableEvents := True
		xl.ActiveWorkbook.saved := Saving
		xl.Quit()
	}
}