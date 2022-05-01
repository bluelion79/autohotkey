#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

#include <Vis2>  ; Equivalent to #include .\lib\Vis2.ahk


F4::
ExitApp


!1::
text := OCR()
MsgBox, % text
return


!2::
text := OCR([0, 0, 200, 200])	; OCR([x, y, w, h])
MsgBox, % text
return


!3::
text := OCR("test.jpg")			; OCR(file)
MsgBox, % text
return


!4::
text := OCR("https://www.blog.google/static/blog/images/google-200x200.7714256da16f.png")
MsgBox, % text
return


!5::
text := OCR("���� ���� - �޸���")			; OCR(WinTitle)
MsgBox, % text
return


!0::
;srcText := "I can do it."
srcText := OCR(, "eng+kor")
StringReplace, srcText, srcText, %A_Space%, `%20, All

sl := "ko"	;auto(�ڵ�) / ko(�ѱ���) / en(����) / ja(�Ϻ���) / zh_CN(�߱��� ��ü) / zh-TW(�߱��� ��ü)
tl := "en"

;https://translate.google.com/#view=home&op=translate&sl=en&tl=ko&text=��������

url := "https://translate.google.com/#view=home&op=translate&sl=" sl "&tl=" tl "&text=" srcText

Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" %url%

return

