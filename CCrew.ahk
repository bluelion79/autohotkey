#SingleInstance, Force ;���� �ν��Ͻ��� ���ְ� �ֽ� �ν��Ͻ� ����
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


F4:: ;������Ű ����
ExitApp

;Ctrl: ^
;Alt: !
;Shift: +
;Window: #

/*
F1::
MsgBox, Hello World!
return//

F2::
MsgBox, �ȳ��ϼ���.
return
*/

; Enter::Space ;���͸� ������ �����̽��� ����

!z:: ;Explorer

!x:: ;Evernote

!c:: ;Chrome

::qwe::
Send, By the way
return

!1::
Send, {a 100} ;a�� 100�� ����
return
  
!2::
SendInput, {b 100}
return

!3::
SendMode, Input
Send, {c 100}
return

!4:: ;���Ű �Է�
Send, {Enter}
Send, {Space}
return

!5:: ;Enter ���ڸ� �״�� �Է��϶�. 
SendRaw, {Enter}
return

!6::
Send, {Alt Down}fa{Alt Up} ;Alt�� ������ 'f','a'Ű�� ���ʴ�� ������ �ϴ� �޴��� �����ϴ� ��ɾ�
return

!7:: ;Ctrl+V ȥ�� ���� 
Send, ^v
return

aaa:
Click, 200, 200
return

!8:: ;������ ������ �������. ���̺� �̿� ���
SetTimer, aaa, 2000
return

!9::
a := 1 ;������ ����Ѵ�. 
Send, % a
return

f(x)
{
	y := x * 2
	return y
}

!10::
Send, % f(100) ;�Լ��� �̿�����.
return

sendCnt(cnt) ;%�� ǥ������ ������ �� ���.  
{
	Send, {a %cnt%}
}

!11::
sendCnt(100)
return

sendCharCnt(char, cnt)
{
	Send, {%char% %cnt%}
}

!12::
sendCharCnt("a", 5)
sendCharCnt("b", 5)

mClick(x, y)
{
	Click, %x%, %y%
}

!13::
mClick(100, 100)
return

!14::
MsgBox, Hello World!
return

!15::
MsgBox, 35, Yes or No, ����ּ���

IfMsgBox, Yes ;�޽��� �ڽ��� ������ �� ������ ���� �ٸ��� �޽��� ���
{
	Send, Yes!
}
IfMsgBox, No
{
	Send, No!!
}

return

!16::
ImageSearch, pX, pY, 0, 0, 1280, 720, *30 image\9.png ;�⺻�����δ� Relative ��� ���� â�� �������� �״�� �ش� �̹��� ��ǥ�� ���󰣴�. �׸��� *30�κ��� �̹��� �˻��� ��Ȯ���� ��Ÿ���� ���̴�. 30~50 ������ ����. �����ؼ� �˻�����. 
MsgBox, % pX "/" pY

xx := pX + 30
yy := pY + 30

Click, %xx% %yy%
return

!17::
ImageSearch, pX, pY, 0, 0, 1280, 720, *30 image\9.png
MsgBox, % ErrorLevel	;0: �̹��� ã��
						;1: �̹����� ã�� ����
						;2: �̹��� ������ ����
return

;AutoHotKey�� ���� ������ �̿��Ͽ� ȭ���� �ش絵�� �ڵ����� ���ؼ� �̹����� ã��

!18::
ImageSearch, pX, pY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *30 image\9.png
Click, %pX% %pY%
return

imgSearch(imgFile, acc, rX, rY)
{
	ImageSearch, pX, pY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *%acc% image\%imgFile%.png
	xx := pX + rX
	yy := pY + rY
	Click, %xx%, %yy%
}

!19::
imgSearch("9", 30, 25, 25)
return

!20::
correct := 10 ;����

InputBox, answer, ���� ������ Up & Down, ���ڸ� �Է��ϼ���., HIDE, 300, 150 ;����ڰ� �Է��� ��

if (answer == correct)
{
	MsgBox, �����Դϴ�.
}

else if (answer < correct)
{
	MsgBox, Up!
}

else
{
	MsgBox, Down!
}

return

!21::
ImageSearch, pX, pY, 0, 0, A_ScreenWidth, A_ScreenHeight, image/9.png
; ErrorLevel: 0 �̹����� ã�� ���, ErrorLevel: 1 �̹����� ã�� ���� ���, ErrorLevel: 2 �̹��� ������ ���� ��� 

if (ErrorLevel == 0)
{
	Click, %pX%, %Py%
}
else if (ErrorLevel == 1)
{
	MsgBox, �̹����� ã�� ���߽��ϴ�.
}
else
{
	MsgBox, �̹��� ������ Ȯ�����ּ���.
}

return

imgSearch(imgFile, acc, rX, rY)
{
		ImageSearch, pX, pY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *%acc% image\%imgFile%
		if (ErrorLevel == 0)
		{
			xx := pX + rX
			yy := pY + rY
			Click, %xx%, %yy%
		}
		else if (ErrorLevel == 1)
		{
			MsgBox, �̹����� ã�� ���߽��ϴ�.
		}
		else
		{
			MsgBox, �̹��� ������ Ȯ�����ּ���.
		}		
}
	
!22::
imgSearch("9.png", 30, 50, 50)
return


!23::
Loop, 10 ; 10�� �ݺ��� ����, ���ڰ� ������ ���� �ݺ�
{
	MsgBox, �ݺ��� ���� ��(%A_Index%) ;A_Index�� �ε��� ���� ������ ���캼 �� ����� �� ����
}
return

!24::
Loop, ; ���� �ݺ������� ���� �ݺ� �� ���������� ����� ���
{
	MsgBox, �ݺ��� ���� ��(%A_Index%)
	
	if (A_Index > 5)
	{
		MsgBox, 5�� �̻� �ݺ��Ͽ� �ݺ����� �����մϴ�.
		break
	}
}
return

!25::
while (true)
{
	MsgBox, �ݺ��� ���� ��(%A_Index%)
	
	if (A_Index > 5)
	{
		MsgBox, 5�� �̻� �ݺ��Ͽ� �ݺ����� �����մϴ�.
		break
	}
}
return

!26::
while (A_Index <=5)
{
	MsgBox, �ݺ��� ���� ��(%A_Index%)
}
return

!27::
Loop, ;Up & Down ������ ��� �������� �ʰ� ������ ���� ������ �ݺ��ϰ� �ݵ�� ���
correct := 10
{
	InputBox, answer, Up & Down, , 300, 150
	
	if (answer == correct)
	{
		MsgBox, Correct!
		break
	}
	else if (answer < correct)
	{
		MsgBox, Up!
	}
	else
	{
		MsgBox, Down!
	}
}
return

!28:: ; �ܺ� ���α׷��� ��������!
Run, C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE
return

!29::
Run, C:\Program Files\Google\Chrome\Application\chrome.exe "http://google.com"
Sleep, 5000
imgSearch("9.png", 100, 50, 50)

!30::
IfWinExist, test.ahk
{
	MsgBox, There exists
}
else
{
	MsgBox, No existes
}
return

!31:: ;Notepad�� �������� ������ �޸����� �����϶�. 
IfWinNotExist, ���� ���� - Windows �޸���
{
	Run, notepad.exe
}
else
{
	WinRestore, ���� ���� - Windows �޸��� ; â�� �ּ�ȭ�Ǿ� ������ Ȱ��ȭ�� �� �� ���� ����. �̶� Ȯ���ϰ� Ȱ��ȭ�� �� �ֱ� ���� ��ġ 
	WinActivate, ���� ���� - Windows �޸���
	Sleep, 500
	WinMove, ���� ���� - Windows �޸���,, 0, 0, 500, 200 ;â ũ�� ����, â �̵�
	WinMaximize, ���� ���� - Windows �޸���
	Sleep, 2000
	WinMinimize, ���� ���� - Windows �޸���
}
return

!32::
FileCreateDir, fileCreated ; ���� �����
FileAppend, ����������׽�Ʈ`n, fileCreated\14.txt ; ���� ������ '����������׽�Ʈ' ���� ���� ���ڸ� �־ �Է�

FileRead, fileContents, fileCreated\14.txt ; �ؽ�Ʈ ������ ������ ������ �ֱ� 
MsgBox, % fileContents ; ���� ������ ��� ������ �޽��� �ڽ��� ǥ���ϱ� 

return

!33::
FileReadLine, line, fileCreated\14.txt, 3 ; �ؽ�Ʈ ���� ���� �߿��� 3��° �� ���� �б� 
MsgBox, % line
return

!34::
Loop,
{
	FileReadLine, line, fileCreated\14.txt, %A_Index%
	
	if (ErrorLevel) ; 1:��, 0;���� ���� �ؽ�Ʈ ������ ���� �� ���� ��� ������ �߻��ϸ鼭 ���� �Ǹ鼭 ������ ���� ������. 
	{
		break
	}
	
	MsgBox, % line
}
return

!35::
try
{
	FileRead, fileContents, fileCreated\15.txt ; ������ �߻����� �ʴ� ��� ���� ���� 
	MsgBox, % fileContents ; ������ �߻����� �ʴ� ��� ���� ����
}
catch e
{
	MsgBox, ������ �߻��Ͽ����ϴ�. (������ �����ϴ�.) %e% ; ������ �߻��ϸ� ó���Ǵ� ����, ������ ��� ������ %e%��. 
}
finally
{
	MsgBox, ��ũ�� ������ �Ϸ�Ǿ����ϴ�. ; ������ ����Ǵ� �����Դϴ�.
}
return

!36::
try
{
	MsgBox, 1
	MsgBox, 2
	throw, "������ ������ �߻����׽��ϴ�." ; ������ ������ �߻����Ѽ� catch ������ ȣ���Ͽ� ���� �޽����� Ȯ���� �� ����.
	MsgBox, 3
}
catch e
{
	MsgBox, ������ �߻��Ͽ����ϴ�. %e%
}
finally
{
	
}

!37::
temp := "Answer Test"
Gui, Add, Text, x30 y70 w270 h20, Hello World?
Gui, Add, Edit, vtemp x30 y90 w200 h20, %temp%

Gui, Add, Radio, x30 y120 w50 h20 vyes Checked, Yes.
Gui, Add, Radio, x100 y120 w50 h20 vno, No.

Gui, Add, Button, gStart x20 y150 w270 h20, ��ũ�� ���� ; ��ũ�� ���� ��ư�� ������ gStart�� ���� Start �������� �̵�
Gui, Add, Buttion, gEnd x20 y170 w270 h20, ��ũ�� ���� ; ��ũ�� ���� ��ư�� ������ gEnd�� ���� End �������� �̵�

Gui, Show, , ��ũ��
return

Start:
{
	Gui, Submit, nohide ; GUI ���� ������ ������Ʈ
	MsgBox, % yes "/" no ; ���� ��ư�� �����ϸ� �ش� ���� ���� 1�� ������Ʈ
	
	if (yes == 1)
	{
		GuiControl, , temp, Hello World! ;���� ���� GUI�� �ݿ�
	}
	else
	{
		GuiControl, , temp, Hell World! ; ���� ���� GUI�� �ݿ�
	}
}
return

End:
{
	ExitApp
}
return

GuiClose: ; X��ư�� ������ ���� ����ǵ��� ����
{
	ExitApp
}

; �����Ϸ� ����
; C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe

�����Ϸ��� ���� ���� ������ ����� AutoHotKey�� ��ġ���� �ʾƵ� ������ �� ����.