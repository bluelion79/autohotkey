Gui, Add, Text, x1 y0 center w144 h15, - Memo -
gui, add, button, x130 y0 w15 h15 gGuiClose, x
Gui, Add, edit, x5 y20 w137 h130 vEdit1, 
gui, Add, button, x5 y155 w64 h25 gBtt1, ����
gui, Add, button, x70 y155 w64 h25 gBtt2, �ʱ�ȭ
gui, -caption
gui, show, x200 y200 w146 h190, -Memo-

return

GuiClose: 
exitapp
return

Btt1:
Gui, Submit, NoHide
FileAppend, %Edit1%, save.txt    ;; **�߿� ������ �߰��ϴ� �����Դϴ�
return

Btt2:
guicontrol,, Edit1,       ;; �ǵ�, �ڿ� �ƹ��͵� ������ �������
return