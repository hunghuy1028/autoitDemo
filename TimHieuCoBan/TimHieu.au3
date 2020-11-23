#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Hùng

 Script Describe:
	Tìm hiểu các cấu trúc cơ bản của autoIT

#ce ----------------------------------------------------------------------------

;1.-------Xuất thông báo------------
; Comment dùng dấu ;
;#include <MsgBoxConstants.au3>

;Dùng tham số
;MsgBox(64+4+256, "Hello", "World")

;Dùng thư viện có sẵn
;MsgBox($MB_ICONERROR, "Hello", "Hùng")

;2.----Biến----

$Xinchao = "Xin chào"
$hung = "Hùng"

ConsoleWrite($Xinchao&$Hung&@CRLF)

;3.----Mảng----
Dim $mang[5]
$mang[0] = 0

;4.---Macro---
;Lấy biến của hệ thống: bắt đầu bằng @
ConsoleWrite(@UserName)

;5----Input---

;$res = InputBox("Nhập số", "Description")
;ConsoleWrite($res & @crlf)

;6.If - elseif -end

;If $res = 1 Then
  ; MsgBox(0,0,"Hello")
;ElseIf $res = 2 Then
   ;MsgBox(0,0,"2")
;EndIf

;7.---Loop---

For $i = 0 To 5
   ConsoleWrite($i&@crlf)
Next

$k = 12
While ($k < 16):
   ConsoleWrite($k & @crlf)
   $k+=1
WEnd

;8.---Xử lí các chuỗi---

$MyString = "My name is Hung"

ConsoleWrite(StringLower($MyString & @Crlf))
ConsoleWrite(StringUpper($MyString & @Crlf))
ConsoleWrite(StringLeft($MyString, 2))
ConsoleWrite(StringTrimLeft($MyString, 4))
;.....


