#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Hùng

 Script Function:
	Thao tác trên file, folder, thao tác 1 của sổ, các thao tác cơ bản với chuột và bàn phím

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

;---1.Thư mục
;DirCreate(@ScriptDir & "\Test")
;$dir_parent = StringLeft(@ScriptDir,StringInStr(@ScriptDir,"\",0,-1)-1) ;lấy thư mục cha
;DirCreate($dir_parent & "\Test")
;DirCopy();
;DirRemove(@ScriptDir & "\Test")
;....

;2. Tập tin
$demoFile = @ScriptDir & "\demo.txt"
;ConsoleWrite(FileExists($demoFile) & @crlf) ;1: có tồn tại

;FileWrite($demoFile, "Hello 1")
;FileWriteLine($demoFile, "Enter Line")
;FileWriteLine($demoFile, "Enter Line")
;FileDelete($demoFile)
;FileClose($demoFile)
;FileMove()
;FileCopy()
;...

;3.--Window
AutoItSetOption("WinTitleMatchMode", 2) ; chế độ 1: khớp từ trái sang phải, 2: khớp bất kì với tên của cửa sổ, 3: chính xác tuyệt đối
ConsoleWrite(WinExists("demo") & @crlf)
;WinClose("demo")
;WinSetOnTop("demo","", 0)
;WinSetTrans("demo","", 150)
;WinWait("demo")
;...

;4.--Chuột và bàn phím
;#RequireAdmin //cấp quyền admin nếu cần
;MouseMove(200,200)
;$currentPos = MouseGetPos()
;ConsoleWrite("x: "& $currentPos[0] & "y: " & $currentPos[1])
;Send("1223")
;Send("{F5}")
;Send("#r")
;.....

