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
text := OCR("제목 없음 - 메모장")			; OCR(WinTitle)
MsgBox, % text
return


!0::
;srcText := "I can do it."
srcText := OCR(, "eng+kor")
StringReplace, srcText, srcText, %A_Space%, `%20, All

sl := "ko"	;auto(자동) / ko(한국어) / en(영어) / ja(일본어) / zh_CN(중국어 간체) / zh-TW(중국어 번체)
tl := "en"

;https://translate.google.com/#view=home&op=translate&sl=en&tl=ko&text=번역내용

url := "https://translate.google.com/#view=home&op=translate&sl=" sl "&tl=" tl "&text=" srcText

Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" %url%

return

