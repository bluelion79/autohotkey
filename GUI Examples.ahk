#SingleInstance force
#NoEnv
;----------------------------------------------------------------------------------- set gui
Gui, Add, GroupBox, w490 h123 cED006D  vGroup1, 1. CheckBox and Radio
Gui, Add, Checkbox, xs+5 yp+25 vCheck1 gCheck1Action, 체크박스 1
Gui, Add, Checkbox, x+20 yp vCheck2 gCheck2Action, 체크박스 2
Gui, Add, Checkbox, x+20 yp Right vCheck3 Checked, 체크박스 3 (오른쪽 위치, 구동 시 체크상태)
Gui, Add, Radio, xs+5 y+15 gRadioGroup1 vRadioGroup1, 라디오 1-1 (기본)
Gui, Add, Radio, x+20 yp gRadioGroup1, 라디오 1-2
Gui, Add, Radio, x+20 yp gRadioGroup1 Right , 라디오 1-3 (오른쪽)
Gui, Add, Text, xs+5 y+10 c1266FF, ---------------------------------그룹 나누기------------------------------------
Gui, Add, Radio, xs+5 yp+20 gRadioGroup2 vRadioGroup2, 라디오 2-1 (기본)
Gui, Add, Radio, x+20 yp gRadioGroup2, 라디오 2-2
Gui, Add, Radio, x+20 yp gRadioGroup2 Right, 라디오 2-3 (오른쪽)
Gui, Add, Button, x+15 yp gBT1, 선택 결과 확인

Gui, Add, GroupBox, xs y+15 w490 h155 cED006D  vGroup2, 2. DropDownList, Combobox, ListBox
Gui, Add, Text, xs+5 yp+30 c1266FF, DropDownList:
Gui, Add, DropDownList, x+30 yp-4 vDrop1 gDrop1Action, Select BG color||Red|Green|Blue|Black|Yellow
Gui, Add, DropDownList, x+30 yp vDrop2, Select City||서울|뉴욕|런던|파리|로마|이스탄불
Gui, Add, Text, xs+5 yp+35 c1266FF, Combobox:
Gui, Add, ComboBox, x+46 yp-4 vCombo1, Red|Green|Blue|Black|Yellow
Gui, Add, Button, x+30 yp-2 gBT2, 보기
Gui, Add, Text, xs+5 y+5 cpurple, < 기타 purple, white 등 기본컬러 또는 RGB 6자리 코드(000000=black) 입력, [보기] 뙇 >
Gui, Add, Text, xs+5 yp+30 c1266FF, ListBox:
Gui, Add, ListBox, x+66 yp-4 vList1, Red|Green|Blue|Black|Yellow
Gui, Add, Button, x+30 yp+17 gBT3, 보기
Gui, Add, Button, x+72 yp gBT4, 선택 결과 확인

Gui, Add, GroupBox, xs y+15 w490 h97 cED006D vGroup3, 3. Progress and Slider
Gui, Add, Text, xs+5 yp+30 c1266FF, Slider:
Gui, Add, Slider, x+40 yp-4 w320 Tickinterval10 gSlider1 altsubmit vSlider1
Gui, Add, Text, x+8 yp+6 c1266FF Left vNslider, 먼저 선택
Gui, Add, Text, xs+5 yp+40 c1266FF, Progress:
Gui, Add, Progress, x+20 yp-4 w320 h20 c1266FF BackgroundC6C6C6 Range0-100 vProgress1
Gui, Add, Text, x+10 yp+6 c1266FF w20 Left vNprogress, 100
Gui, Add, Button, x+15 yp-7 gBT5, 시작
Gui, Show,, [쉬운 오토핫키 강좌] 10. Gui 활용 - Add와 ControlType
return
GuiClose:
exitapp
;----------------------------------------------------------------------------------- subroutine 1
Check1Action:
Gui, Submit, NoHide
if Check1=1
	GuiControl,, Group1, vGroup1: gCheck1Action- (1)번 체크
else
	GuiControl,, Group1, vGroup1: gCheck1Action- (1)번 체크 해제
return
Check2Action:
Gui, Submit, NoHide
if Check2=1
	GuiControl,, Group1, vGroup1: gCheck2Action- (2)번 체크
else
	GuiControl,, Group1, vGroup1: gCheck2Action- (2)번 체크 해제
return
RadioGroup1:
Gui, Submit, NoHide
GuiControl,, Group1, gRadioGroup1- 1그룹의 %RadioGroup1%번 radio 선택
return
RadioGroup2:
Gui, Submit, NoHide
GuiControl,, Group1, gRadioGroup2- 2그룹의 %RadioGroup2%번 radio 선택
return
BT1:
Gui, Submit, NoHide
GuiControl,, Group1, 선택결과: Check1(%Check1%), Check2(%Check2%), Check3(%Check3%), RadioGroup1(%RadioGroup1%), RadioGroup2(%RadioGroup2%)
return
;----------------------------------------------------------------------------------- subroutine 2-1
Drop1Action:
Gui, Submit, NoHide							; Gui의 값을 이용하기 위해서는 필수적인 명령줄입니다.
;MsgBox % Drop1 ",  " Drop2				; 활성화 해서 확인해 보세요
GuiControl,, Group2, vGroup2: gDrop1Action - %Drop1% 을 선택했군요...
if (Drop1="Red") {
	textcolor=yellow
} else if (Drop1="Green") {
	textcolor=white
} else if (Drop1="Blue") {
	textcolor=red
} else if (Drop1="Black") {
	textcolor=yellow
} else if (Drop1="Yellow") {
	textcolor=black
} else {
	MsgBox 아무 것도 선택 안했어요
	return
}
Gui, 2: Font, s10 bold
Gui, 2: Color, %Drop1%			; 바탕색
Gui, 2: Add, Text, c%textcolor%, 바탕색,글자색 확인 (2초 후 사라짐)			; 글자색
Gui, 2: Show, w250 h100, Gui 2
sleep, 2000
Gui, 2: Destroy		; gui 폭발!!
return
2GuiClose:
Gui, 2: Destroy
return
;----------------------------------------------------------------------------------- subroutine 2-2
BT2:
Gui, Submit, NoHide
if (Combo1="Red") {
	textcolor=yellow
} else if (Combo1="Green") {
	textcolor=white
} else if (Combo1="Blue") {
	textcolor=red
} else if (Combo1="Black") {
	textcolor=yellow
} else if (Combo1="Yellow") {
	textcolor=black
}
Gui, 3: Font, s10 bold
Gui, 3: Color, %Combo1%
Gui, 3: Add, Text, c%textcolor%, 바탕색,글자색 확인 (2초 후 사라짐)
Gui, 3: Show, w250 h100, Gui 3
sleep, 2000
Gui, 3: Destroy
return
3GuiClose:
Gui, 3: Destroy
return
;----------------------------------------------------------------------------------- subroutine 2-3
BT3:
Gui, Submit, NoHide
if (List1="Red") {
	textcolor=yellow
} else if (List1="Green") {
	textcolor=white
} else if (List1="Blue") {
	textcolor=red
} else if (List1="Black") {
	textcolor=yellow
} else if (List1="Yellow") {
	textcolor=black
} else {
	MsgBox 아무 것도 선택 안했어요
	return
}
Gui, 4: Font, s10 bold
Gui, 4: Color, %List1%
Gui, 4: Add, Text, c%textcolor%, 바탕색,글자색 확인 (2초 후 사라짐)
Gui, 4: Show, w250 h100, Gui 2
sleep, 2000
Gui, 4: Destroy
return
4GuiClose:
Gui, 4: Destroy
return
BT4:
Gui, Submit, NoHide
GuiControl,, Group2, 선택결과: Drop1(%Drop1%), Drop2(%Drop2%), Combo(%Combo1%), List(%List1%)
return
;----------------------------------------------------------------------------------- subroutine 3
Slider1:
Gui, Submit, NoHide
GuiControl,, Nslider, %Slider1%
return

BT5:
Gui, Submit, NoHide
N:=0
GuiControl,, Group3, vGroup3: 진행중....
Loop
{
	N++
	if (N>Slider1) {
		break
	}
	GuiControl,, Progress1, %N%
	GuiControl,, Nprogress, %N%
	sleep, 50
}
GuiControl,, Group3, vGroup3: 끄~~읕
return