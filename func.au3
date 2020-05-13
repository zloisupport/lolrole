#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:     ZloiSupport

 Script Function:
#ce ----------------------------------------------------------------------------

HotKeySet("{NUMPAD2}",SupportRole)
HotKeySet("{NUMPAD0}",ExitScript)
HotKeySet("{NUMPAD3}",MidLane)
HotKeySet("{NUMPAD1}",ADCRole)
HotKeySet("{NUMPAD4}",JUNGLELane)
HotKeySet("{NUMPAD5}",TopLane)


While 1
WEnd

Func WinMov()
   $HWND=WinWait("[TITLE:League of Legends]","",5)
   IF NOT $HWND Then
	  MsgBox(0,"Error", "Window not Found")
   Else
	  WinActivate($HWND)
	  WinMove($HWND,"",146, 53,1280, 720)
	  MouseClick("left",194, 601)
   EndIf
EndFunc

Func MidLane()
   WinMov()
   Send("MID lane")
   Send("{ENTER}")
EndFunc

Func TopLane()
   WinMov()
   Send("TOP lane")
   Send("{ENTER}")
EndFunc

Func JUNGLELane()
   WinMov()
   Send("JUNGLE")
   Send("{ENTER}")
EndFunc

Func SupportRole()
   WinMov()
   Send("Bot lane role(support)")
   Send("{ENTER}")
EndFunc

Func ADCRole()
   WinMov()
   Send("Bot lane role(adc)")
   Send("{ENTER}")
EndFunc

Func ExitScript()
   Exit
EndFunc
