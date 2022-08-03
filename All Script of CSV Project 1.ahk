Gui, Add, ListView, x0 y0 r7 w365 Grid, 순번|담당자|거래분류|물품|거래일|판매가
Gui, Add, Button, x10 y150 w110 h40 g값추출, Excel 값 추출
Gui, Add, Button, x127 y150 w110 h40 g값가져오기, Excel 값 가져오기
Gui, Add, Button, x244 y150 w110 h40 g값갱신, Excel 값 갱신
Gui, Add, Button, x10 y200 w110 h40 g추가, CSV 끝 행에 추가
Gui, Add, Button, x127 y200 w110 h40 g수정, CSV 행 수정
Gui, Add, Button, x244 y200 w110 h40 g삭제, CSV 행 삭제
Gui, Show, h250 w364 Center, 판매정보
목록:
LV_Delete()
Loop, Read, %A_Desktop%\판매정보.csv
{
If A_Index = 1
Continue
조정 := A_Index-1
순번 = %조정%
Loop, Parse, A_LoopReadLine, CSV
{
If A_Index = 1
담당자 = %A_LoopField%
If A_Index = 2
거래분류 = %A_LoopField%
If A_Index = 3
물품 = %A_LoopField%
If A_Index = 4
거래일 = %A_LoopField%
If A_Index = 5
판매가 = %A_LoopField%
}
LV_ModifyCol(1, "40 center")
LV_ModifyCol(2, "50 center")
LV_ModifyCol(3, "60 center")
LV_ModifyCol(4, "80 center")
LV_ModifyCol(5, "50 center")
LV_ModifyCol(6, "60 center")
LV_Add("", 순번, 담당자, 거래분류, 물품, 거래일, 판매가)
}
Return
GuiClose:
ExitApp
Return
값추출:
Gui, 값추출창: +AlwaysOnTop
Gui, 값추출창: Add, Text, xm Section w80, 추출할 문자
Gui, 값추출창: Add, Edit, ys-4 w220 v추출값
Gui, 값추출창: Add, Button, xm w311, 추출
Gui, 값추출창: Show, , 값추출창
Return
값추출창Button추출:
Gui, 값추출창: Submit
Gui, 값추출창: Destroy
검색어 := 추출값
IfExist, 추출결과.txt
{
FileOpen("추출결과.txt", "w")
}
파일경로 := A_Desktop . "\AHK실전편-영업보고서.xlsm"
XL := ComObjCreate("Excel.Application")
XL.WorkBooks.Open(파일경로, 3, 0)
XL.Visible := 0
XL.Sheets("판매정보").Activate
XL.Cells.Copy
XL.Selection.PasteSpecial(-4163)
XL.Application.CutCopyMode := 0
XL.ActiveWorkBook.Save
첫주소 := XL.WorkSheets("판매정보").Range("1:500").Find(검색어)
시작값 := 첫주소.Address
If (시작값 != "")
{
첫주소.EntireRow.Select
XL.Selection.Copy
FileAppend, %clipboard%, 추출결과.txt
clipboard := ""
Loop
{
첫주소 := XL.WorkSheets("판매정보").Range("1:500").FindNext(첫주소)
다음값 := 첫주소.Address
If (다음값 == 시작값)
{
Break
}
Else
{
첫주소.EntireRow.Select
XL.Selection.Copy
FileAppend, %clipboard%, 추출결과.txt
clipboard := ""
}
}
}
XL.ActiveWorkBook.Close(1)
XL.Quit
추출개수 := 0
판매정보 =
Loop, Read, %A_WorkingDir%\추출결과.txt
{
판매정보 .= A_LoopReadLine "`n"
추출개수 := A_Index
}
MsgBox, [ 판매정보 ]에서 %추출개수% 개의 [ %검색어% ]를 추출함. `n%판매정보%
Return
값추출창GuiClose:
Gui, 값추출창: Destroy
Return
값가져오기:
IfExist, %A_Desktop%\판매정보.CSV
{
FileDelete, %A_Desktop%\판매정보.CSV
}
파일경로 := A_Desktop . "\AHK실전편-영업보고서.xlsm"
XL := ComObjCreate("Excel.Application")
XL.WorkBooks.Open(파일경로, 3, 0)
XL.Visible := 0
XL.Sheets("판매정보").Activate
XL.Cells.Copy
XL.Cells.Select
XL.Selection.PasteSpecial(-4163)
XL.Application.CutCopyMode := 0
XL.ActiveWorkBook.Save
XL.ActiveWorkBook.SaveAs(A_Desktop  .  "\판매정보", 62)
XL.ActiveWorkBook.Close(1)
XL.Quit
MsgBox, Excel의 [ 판매정보 ] Sheet를 바탕화면에 CSV로 변환하였습니다.
GoSub, 목록
Return
값갱신:
IfExist, %A_Desktop%\판매정보.CSV
{
파일경로 := A_Desktop  .  "\AHK실전편-영업보고서.xlsm"
XL := ComObjCreate("Excel.Application")
XL.WorkBooks.Open(파일경로)
XL.Visible := 0
Sleep 500
XL.Application.DisplayAlerts := 0
XL.WorkSheets("판매정보").Delete()
XL.Application.DisplayAlerts := 1
Sleep 500
XLSM호출파일명 := XL.ActiveWorkBook.Name
CSV파일 := A_Desktop  .  "\판매정보.CSV"
XL.WorkBooks.Open(CSV파일)
CSV호출파일명 := XL.ActiveWorkBook.Name
StringTrimRight, 색인, CSV호출파일명, 4
XL.Cells.Copy
XL.Windows(XLSM호출파일명).Activate
XL.Sheets.Add(ComObjMissing(), XL.Sheets(XL.Sheets.Count)).Name := 색인
XL.WorkSheets(색인).Range("A1").PasteSpecial
XL.Application.CutCopyMode := 0
XL.Windows(CSV호출파일명).Activate
XL.ActiveWindow.Close
XL.ActiveWorkBook.Save
XL.ActiveWorkBook.Close
XL.Quit
MsgBox, Excel의 [ 판매정보 ] Sheet의 정보를 갱신했습니다.
}
IfNotExist, %A_Desktop%\판매정보.CSV
{
MsgBox, [ 판매정보.CSV ]가 바탕화면에 없으므로 CSV를 생성하세요!
}
Return
추가:
IfExist, %A_Desktop%\판매정보.CSV
{
Gui, 추가창: +AlwaysOnTop
Gui, 추가창: Add, Text, xm Section w80, 순번
Gui, 추가창: Add, Edit, ys-4 w220 ReadOnly v추가1
Gui, 추가창: Add, Text, xm Section w80, 담당자
Gui, 추가창: Add, Edit, ys-4 w220 v추가2
Gui, 추가창: Add, Text, xm Section w80, 거래분류
Gui, 추가창: Add, Edit, ys-4 w220 v추가3
Gui, 추가창: Add, Text, xm Section w80, 물품
Gui, 추가창: Add, Edit, ys-4 w220 v추가4
Gui, 추가창: Add, Text, xm Section w80, 거래일
Gui, 추가창: Add, Edit, ys-4 w220 v추가5
Gui, 추가창: Add, Text, xm Section w80, 판매가
Gui, 추가창: Add, Edit, ys-4 w220 v추가6
Gui, 추가창: Add, Button, xm w311, 추가
Gui, 추가창: Show, , 추가창
GoSub, 목록
Return
추가창Button추가:
Gui, 추가창: Submit
Gui, 추가창: Destroy
Gui, 1: Default
추가값 = %추가2% `, %추가3% `, %추가4% `, %추가5% `, %추가6% `n
FileAppend, %추가값%, %A_Desktop%\판매정보.CSV
GoSub, 목록
Return
추가창GuiClose:
Gui, 추가창: Destroy
Gui, 1: Default
Return   
}
IfNotExist, %A_Desktop%\판매정보.CSV
{
MsgBox, [ 판매정보.CSV ]가 바탕화면에 없으니 CSV를 생성하세요!
}
Return
수정:
If !(선택된행 := LV_GetNext()) 
{
MsgBox, 0, %A_ThisLabel%, 선택된 행이 없습니다!
Return
}
LV_GetText(순번값, 선택된행, 1)
LV_GetText(담당자값, 선택된행, 2)
LV_GetText(거래분류값, 선택된행, 3)
LV_GetText(물품값, 선택된행, 4)
LV_GetText(거래일값, 선택된행, 5)
LV_GetText(판매가값, 선택된행, 6)
Gui, 수정창: +AlwaysOnTop
Gui, 수정창: Add, Text, xm Section w80, 순번
Gui, 수정창: Add, Edit, ys-4 w220 ReadOnly v수정1, %순번값%
Gui, 수정창: Add, Text, xm Section w80, 담당자
Gui, 수정창: Add, Edit, ys-4 w220 v수정2, %담당자값%
Gui, 수정창: Add, Text, xm Section w80, 거래분류
Gui, 수정창: Add, Edit, ys-4 w220 v수정3, %거래분류값%
Gui, 수정창: Add, Text, xm Section w80, 물품
Gui, 수정창: Add, Edit, ys-4 w220 v수정4, %물품값%
Gui, 수정창: Add, Text, xm Section w80, 거래일
Gui, 수정창: Add, Edit, ys-4 w220 v수정5, %거래일값%
Gui, 수정창: Add, Text, xm Section w80, 판매가
Gui, 수정창: Add, Edit, ys-4 w220 v수정6, %판매가값%
Gui, 수정창: Add, Button, xm w311, 수정
Gui, 수정창: Show, , 수정창
GoSub, 목록
Return
수정창Button수정:
Gui, 수정창: Submit
Gui, 수정창: Destroy
Gui, 1: Default
행번호 := 순번값+1
Loop, Read, %A_Desktop%\판매정보.CSV, %A_Desktop%\정보수정1.CSV
{
If A_Index >= %행번호%
Continue
FileAppend, %A_LoopReadLine%`n
}
Loop, Read, %A_Desktop%\판매정보.CSV, %A_Desktop%\정보수정2.CSV
{
If A_Index <= %행번호%
Continue
FileAppend, %A_LoopReadLine%`n
}
수정값 = %수정2% `, %수정3% `, %수정4% `, %수정5% `, %수정6% `n
FileAppend, %수정값%, %A_Desktop%\정보수정1.CSV
FileRead, 정보1, %A_Desktop%\정보수정1.CSV
FileRead, 정보2, %A_Desktop%\정보수정2.CSV
StringReplace, 정보1, 정보1, `r, , All
StringReplace, 정보2, 정보2, `r, , All
정보3 := 정보1 . 정보2
FileAppend, %정보3%, 정보종합.CSV
FileMove, 정보종합.CSV, %A_Desktop%\판매정보.CSV, 1
FileDelete, %A_Desktop%\정보수정1.CSV
FileDelete, %A_Desktop%\정보수정2.CSV
GoSub, 목록
Return
수정창GuiClose:
Gui, 수정창: Destroy
Gui, 1: Default
Return
삭제:
If !(선택된행 := LV_GetNext()) 
{
MsgBox, 0, %A_ThisLabel%, 선택된 행이 없습니다!
Return
}
행번호 := LV_GetNext(0)+1
Loop, Read, %A_Desktop%\판매정보.CSV, %A_Desktop%\정보삭제.CSV
{
If A_Index = %행번호%
Continue
FileAppend, %A_LoopReadLine%`n
}
 FileMove, %A_Desktop%\정보삭제.CSV, %A_Desktop%\판매정보.CSV, 1
GoSub, 목록
Return