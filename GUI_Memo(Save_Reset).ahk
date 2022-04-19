/* ################################################################
 * 저장과 초기화를 연습할 수 있는 간단한 메모장 프로그램
 * ################################################################
 */

#SingleInstance, Force ;이전 인스턴스를 없애고 최신 인스턴스 실행

Gui, Add, Text, x22 y9 w320 h40 , Keep your beautiful memories safe for good with us.
Gui, Add, Edit, r10 x12 y59 w330 h150 vTxtEdit, Write something below
Gui, Add, Button, x12 y219 w160 h60, Save
Gui, Add, Button, x182 y219 w160 h60, Reset

Gui, Show, w354 h294, My beautiful Memories
return

GuiClose:
ExitApp

ButtonSave: ;메모 내용을 텍스트 파일에 계속 추가하는 부분
Gui, Submit, NoHide

FormatTime, time, A_Now, yyyy-MM-dd hh:mm
FileAppend, %time%`n, memories.txt
FileAppend, %TxtEdit%`n, memories.txt
return

ButtonReset: ;입력하고 있는 메모 내용을 모두 지워주는 부분
guicontrol,, TxtEdit,
return