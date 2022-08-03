XL := ComObjCreate("Excel.Application")
XL.WorkBooks.Add
XL.Visible := 1
WinMaximize AHK_Class XLMAIN
XL.Sheets("Sheet1").Select
XL.ActiveSheet.Name := "영업실적"
XL.Sheets.Add
XL.Sheets(1).Move(ComObjMissing(), XL.Sheets(2))
XL.Sheets("Sheet2").Name := "판매정보"
XL.Sheets.Add(ComObjMissing(),XL.Sheets(XL.Sheets.Count))
XL.Sheets("Sheet3").Name := "공급가액"
XL.Sheets("공급가액").Move(ComObjMissing(),XL.Sheets("영업실적"))
XL.Sheets.Add
XL.ActiveSheet.Move(ComObjMissing(),XL.Sheets(XL.Sheets.Count))
XL.Sheets(XL.Sheets.Count).Name := "기타"
XL.Sheets(1).Tab.ColorIndex := 1
XL.Sheets("판매정보").Tab.ColorIndex := 33
XL.Sheets(XL.Sheets.Count).Select
XL.ActiveSheet.Tab.ColorIndex := 44
XL.Sheets("공급가액").Select
XL.Sheets("공급가액").Range("A1:A2").Merge
XL.Sheets("공급가액").Range("A1").Formula := "구분"
XL.Sheets("공급가액").Range("A3").Formula := "컴퓨터"
XL.Sheets("공급가액").Range("A4").Formula := "핸드폰"
XL.Sheets("공급가액").Range("A5").Formula := "가구"
XL.Sheets("공급가액").Range("A6").Formula := "자동차"
XL.Sheets("공급가액").Range("A7").Formula := "음식"
XL.Sheets("공급가액").Range("A8").Formula := "문구"
XL.Sheets("공급가액").Range("A9").Formula := "미용"
XL.Sheets("공급가액").Range("A10").Formula := "책"
XL.Sheets("공급가액").Range("A11").Formula := "건강식품"
XL.Sheets("공급가액").Range("A12").Formula := "건강용품"
XL.Sheets("공급가액").Range("B1:M1").Merge
XL.Sheets("공급가액").Range("B1").Formula := "공급가액"
XL.Sheets("공급가액").Range("B2").Formula := "1월"
XL.Sheets("공급가액").Range("B2").AutoFill(XL.Range("B2:M2"), 2)
XL.Sheets("공급가액").Range("B3:M12").Formula := "=RANDBETWEEN(1000,10000)*10"
XL.Sheets("공급가액").Range("B3:M12").NumberFormat := "\#,##0"
XL.Sheets("공급가액").Select
행끝 := XL.Sheets("공급가액").UsedRange.Rows.Count
열끝 := XL.Sheets("공급가액").UsedRange.Columns.Count
XL.Sheets("공급가액").Cells(행끝,열끝).CurrentRegion.Select
XL.Selection.Copy
XL.Selection.PasteSpecial(-4163)
XL.Application.CutCopyMode := 0
XL.Selection.HorizontalAlignment := -4108
clipboard = A3:M%행끝%
XL.Range(clipboard).Sort(XL.Columns(1), 1)
XL.Sheets("공급가액").Range("A1").Select
XL.Selection.Font.Name := "HY목각파임B"
XL.Selection.Font.Size := 18
XL.Selection.Font.Color := -64249
XL.Selection.Font.UnderLine := 3
XL.Selection.Font.Italic := 1
XL.Selection.Font.Bold := 1
XL.Selection.VerticalAlignment := -4117
XL.Sheets("공급가액").Range("B1").Font.ColorIndex := 46
XL.Sheets("공급가액").Range("B1").Font.Size := 15
XL.Sheets("공급가액").Range("B1").Font.UnderLine := 2
XL.Sheets("공급가액").Range("1:1048576").Select
XL.Selection.FormatConditions.Add(13)
XL.Selection.FormatConditions(1).Borders(1).LineStyle := 8
XL.Selection.FormatConditions(1).Borders(2).LineStyle := 8
XL.Selection.FormatConditions(1).Borders(4).LineStyle := 8
XL.Selection.FormatConditions.Add(2, 4, "=MOD(ROW()-1,1)=0")
XL.selection.FormatConditions(2).Interior.ColorIndex := 2
XL.Selection.EntireColumn.AutoFit
XL.Selection.EntireRow.AutoFit
XL.Range("A1:M2").FormatConditions.Delete
XL.Sheets("공급가액").Range("A1:A2").Borders().LineStyle := 6
XL.Sheets("공급가액").Range("A1:A2").Borders().weight := 3
XL.Range("B2:M2").Borders.LineStyle := 9
XL.Range("B1:M1").Borders(2).weight := 3
XL.Range("B1:M1").Borders(3).weight := 3
XL.Sheets("공급가액").Range("A3:A12").Copy
XL.Sheets("기타").Range("B1").PasteSpecial
loop 11
{
행끝 := XL.Sheets("기타").UsedRange.Rows.Count
좌표 := 행끝+1
XL.Sheets("기타").Cells(좌표,2).PasteSpecial
}
XL.Application.CutCopyMode := 0
clipboard = =INDEX(공급가액!$B$3:$M$12,MOD(ROW(A1)-1,10)+1,QUOTIENT(ROW(A1)-1,10)+1)
XL.Sheets("기타").Range("C1").Formula := clipboard
XL.Sheets("기타").Select
XL.Range("C1").AutoFill(XL.Range("C1:C120"), 2)
Loop, 12
{
월 = %A_Index%월
Loop, 10
{
증감++
clipboard = A%증감%
XL.Sheets("기타").Range(clipboard).Formula := 월
continue
}
continue
}
XL.Sheets("판매정보").Select
clipboard = =INDEX(기타!$B$1:$B$120,MATCH(E2,기타!$C$1:$C$120,0))
XL.Sheets("판매정보").Range("C2").Formula := clipboard
XL.Range("C2").AutoFill(XL.Range("C2:C150"), 2)
clipboard = =INDEX(기타!$A$1:$A$120,MATCH(E2,기타!$C$1:$C$120,0))
XL.Sheets("판매정보").Range("D2").Formula := clipboard
XL.Range("D2").AutoFill(XL.Range("D2:D150"), 2)
clipboard = =INDEX(공급가액!$B$3:$M$12,RANDBETWEEN(1,10),RANDBETWEEN(1,12))
XL.Sheets("판매정보").Range("E2").Formula := clipboard
XL.Range("E2").AutoFill(XL.Range("E2:E150"), 1)
Loop 149
{
거래분류 =
(
카드
현금
모바일
)
Random, 가지수, 1, 3
Loop, Parse, 거래분류, `n
{
if (A_Index = 가지수)
최종결과물 = % A_LoopField
}
좌표 := A_Index+1
clipboard = B%좌표%
XL.Sheets("판매정보").Range(clipboard).Formula := 최종결과물
}
XL.Sheets("판매정보").Select
XL.Sheets("판매정보").Range("A1").Formula := "담당자"
XL.Sheets("판매정보").Range("B1").Formula := "거래분류"
XL.Sheets("판매정보").Range("C1").Formula := "물품"
XL.Sheets("판매정보").Range("D1").Formula := "거래일"
XL.Sheets("판매정보").Range("E1").Formula := "판매가"
XL.Sheets.Add
XL.ActiveSheet.Move(ComObjMissing(), XL.Sheets(XL.Sheets.Count))
XL.Sheets(XL.Sheets.Count).Name := "현금분"
XL.Sheets(XL.Sheets.Count).Select
XL.ActiveSheet.Tab.ColorIndex := 6
XL.Sheets("판매정보").Cells.Copy
XL.ActiveSheet.Paste
XL.Application.CutCopyMode := 0
XL.Range("A:A").Delete
XL.Sheets("현금분").Cells.Copy
XL.Selection.PasteSpecial(-4163)
XL.Application.CutCopyMode := 0
XL.Range("A:A").Select
While (XL.Selection.Find("카드", XL.ActiveCell, -4123, 2).EntireRow.Delete)
{
XL.Range("A:A").Select
}
XL.Range("A:A").Select
While (XL.Selection.Find("모바일", XL.ActiveCell, -4123, 2).EntireRow.Delete)
{
XL.Range("A:A").Select
}
Loop 149
{
Random, 영어, 97, 122
최종영문 := Chr(영어)
num := A_Index+1
clipboard = A%num%
XL.Sheets("판매정보").Range(clipboard).Formula := 최종영문
}
endRow := XL.Sheets("기타").UsedRange.Rows.Count
clipboard = A1:E%endRow%
XL.Range(clipboard).AutoFilter
XL.ActiveWindow.Zoom := 85
WinMaximize AHK_Class XLMAIN
XL.Sheets("영업실적").Select
XL.ActiveSheet.Shapes.AddTextBox(4, 0, 0, 110, 350)
XL.ActiveSheet.Shapes("TextBox 1").Select
XL.Selection.Characters.Text := "T E S T"
XL.Selection.Characters.Font.Size := 17
XL.Selection.Characters.Font.Color := 255
XL.Selection.Characters.Font.Name := "HY목각파임B"
XL.ActiveSheet.Shapes("TextBox 1").TextFrame.HorizontalAlignment := -4108
XL.ActiveSheet.Shapes("TextBox 1").TextFrame.VerticalAlignment := -4108
XL.Selection.ShapeRange.Fill.ForeColor.RGB := 24376537
XL.ActiveSheet.Shapes("TextBox 1").TextFrame2.TextRange.Characters.Text := "영 업 실 적"
XL.ActiveSheet.Shapes.AddShape(50, 120, 160, 200, 35).Select
XL.Selection.ShapeRange.ScaleWidth(0.8, 0, 0)
XL.Selection.ShapeRange.Fill.ForeColor.RGB := 24376537
XL.Selection.ShapeRange.Line.ForeColor.RGB := 734545
XL.ActiveSheet.Shapes.AddConnector(1, 300, 300, 300, 20).Select
XL.Selection.ShapeRange.ShapeStyle := 66
XL.Selection.ShapeRange.Line.EndArrowheadStyle := 6
XL.Sheets("공급가액").Select
XL.Range("A2:M12").Select
XL.ActiveSheet.Shapes.AddChart.Select
XL.ActiveChart.ChartType := 63
XL.ActiveChart.PlotArea.Select
XL.ActiveChart.SetElement(2)
XL.ActiveChart.ChartTitle.Text := "영업실적"
XL.ActiveSheet.Shapes("Chart 1").ScaleWidth(1.3, 0, 0)
XL.ActiveSheet.Shapes("Chart 1").ScaleHeight(1.3, 0, 0)
XL.WorkSheets("공급가액").ChartObjects(1).Cut
XL.Sheets("영업실적").Range("G2").PasteSpecial
XL.Sheets("영업실적").Select
FileDelete, %A_Desktop%\AHK실전편-영업보고서.xlsm
XL.ActiveWorkBook.SaveAs(A_Desktop  .  "\AHK실전편-영업보고서", 52)
XL.Quit