#include <File.au3>
ShellExecute("testingWord.docx" ,"","") ;khởi chạy ứng dụng trong cùng thư mục (ở đây demo ứng dụng word)
Sleep(10000) ; chờ ứng dụng khơi động (10 giây)

$fileTestPath = @WorkingDir & "\inputTest.txt" ;đường dẫn file test
$fileOutPutPath = @WorkingDir & "\output.csv" ; đường dẫn file output

$fileTest = FileOpen($fileTestPath) ; mở file test
$fileOutPut = FileOpen($fileOutPutPath, 2) ; mở file output với chế độ ghi đè
FileWriteLine($fileOutPut, "Left,Top,Right,Bottom,Color,Pixel Found") ; header cho file output

For $i= 1 To _FileCountLines($fileTest)
	$line = FileReadLine($fileTest, $i) ;đọc từng dòng
	$itemInArray = StringSplit($line, " "); tách các tham số trong từng dòng
	$search = PixelSearch($itemInArray[1],$itemInArray[2],$itemInArray[3], $itemInArray[4], $itemInArray[5]) ; tìm kiếm pixel nếu có
	If IsArray($search) Then
		FileWriteLine($fileOutPut, $itemInArray[1] & "," & $itemInArray[2] & "," & $itemInArray[3]& "," &$itemInArray[4]& "," &$itemInArray[5] & "," & "True")
		;điền dữ liệu True vào file
	Else
		FileWriteLine($fileOutPut, $itemInArray[1] & "," & $itemInArray[2] & "," & $itemInArray[3]& "," &$itemInArray[4]& "," &$itemInArray[5] & "," & "False")
		;điền dữ liệu False vào file
	EndIf
Next
WinClose("testingWord.docx")

FileClose($fileTest)