/* ################################################################
 * ���ſ��ڰ���б� 2�г� 00�� 00��  �� �� ��
 * 1. ���α׷���: ����Ʈ ����
 * 2. ���α׷� ����: ����Ʈ�ϰ� ���� ��� ������ Ǯ���ִ� ����
 * 3. ���α׷� ���� ����:
 * 4. ���� ���α׷� ���׷��̵� ��ȹ
 * 5. ��������: 2022�� 4�� 4�� ������
 * ################################################################
 */

Gui, Add, Picture, x12 y9 w310 h130 , D:\Program Files\AutoHotkey\SciTE\tools\SmartGUI\splash.gif
Gui, Add, Text, x12 y149 w170 h30 , X ���� �Է��ϼ���.
Gui, Add, Edit, x192 y149 w130 h30 vxvalue , Edit
Gui, Add, Text, x12 y199 w170 h30 , Y ���� �Է��ϼ���.
Gui, Add, Edit, x192 y199 w130 h30 vyvalue, Edit
Gui, Add, Text, x12 y249 w310 h70 , X�� Y���� ����Ͽ� ���ϴ� ���� ��� �����Դϴ�.
Gui, Add, Button, x62 y329 w200 h50 , ����

Gui, Show, w340 h390, ����Ʈ ����
return

GuiClose:
{
	ExitApp
}
return

Button����:
{
	
	Gui, Submit, nohide ; Gui�� �ִ� ���� �� ��������
	
	; conclusion(male, female, stone, money)	
}
return

calculator(xvalue, yvalue) 
{
	send, %male% and %female% live in a faraway land.`n
}