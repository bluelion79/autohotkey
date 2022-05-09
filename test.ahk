
Gui Font, s9, Segoe UI
Gui Add, Button, x7 y18 w161 h70, 시작
Gui Add, Button, x8 y96 w161 h70, 끝

Gui Show, w177 h174, Window
Return

Button시작:
{
    MsgBox 시험을 시작합니다.
}
Return

Button끝:
{
    MsgBox 시험이 끝났습니다.
    ExitApp
}
Return

GuiClose:
    ExitApp
