
/* ################################################################
 * 영신여자고등학교 2학년 00반 00번  김 준 오
 * 1. 프로그램명: 스마트 계산기
 * 2. 프로그램 설명: 스마트하게 세상 모든 문제를 풀어주는 계산기
 * 3. 프로그램 제작 목적:
 * 4. 향후 프로그램 업그레이드 계획
 * 5. 제작일자: 2022년 4월 4일 월요일
 * 6. 파일명: 20000_김준오_20220411_스마트계산기.ahk
 * ################################################################
 */

Gui, Font, S8 CDefault Bold, Verdana

Gui, Add, Text, x72 y29 w100 h30, A
Gui, Add, Edit, x72 y69 w110 h50 vA,

Gui, Add, Text, x322 y29 w100 h40, B
Gui, Add, Edit, x312 y79 w110 h50 vB,

Gui, Add, Button, x32 y189 w100 h30, 덧셈
Gui, Add, Button, x152 y189 w100 h30, 뺄셈
Gui, Add, Button, x272 y189 w100 h30, 곱셈
Gui, Add, Button, x362 y159 w100 h30, 나눗셈

Gui, Add, Text, x42 y249 w100 h30 vResult, Result

Gui, Show, w479 h379, Calculator
return

GuiClose:
ExitApp

Button덧셈:
Gui, Submit, NoHide
{
	
	;MsgBox %A% %B%
	
	if(!A || !B){
		MsgBox, 16, 입력 오류, 숫자만 입력 가능합니다.`n빈칸에 알맞은 숫자를 반드시 입력해야 합니다.
	}
	
	x = %A%
	y = %B%
	Result := x + y
	
	GuiControl,, Result, %A% + %B% = %Result%  
}
return

Button뺄셈:
Gui, Submit, NoHide
{
	;MsgBox %A% %B%
	
	if(!A || !B){
		MsgBox, 16, 입력 오류, 숫자만 입력 가능합니다.`n빈칸에 알맞은 숫자를 반드시 입력해야 합니다.
	}
	
	x = %A%
	y = %B%
	Result := x - y
	
	GuiControl,, Result, %A% - %B% = %Result%
}
return

Button곱셈:
Gui, Submit, NoHide
{
	;MsgBox %A% %B%
	
	if(!A || !B){
		MsgBox, 16, 입력 오류, 숫자만 입력 가능합니다.`n빈칸에 알맞은 숫자를 반드시 입력해야 합니다.
	}
	
	x = %A%
	y = %B%
	Result := x * y
	
	GuiControl,, Result, %A% * %B% = %Result%
}
return

Button나눗셈:
Gui, Submit, NoHide
{
	;MsgBox %A% %B%
	
	if(!A || !B){
		MsgBox, 16, 입력 오류, 숫자만 입력 가능합니다.`n빈칸에 알맞은 숫자를 반드시 입력해야 합니다.
	}
	
	x = %A%
	y = %B%
	Result := x // y
	
	GuiControl,, Result, %A% / %B% = %Result%
}
return