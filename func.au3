#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:     ZloiSupport

 Script Function:
#ce ----------------------------------------------------------------------------

HotKeySet("{NUMPAD0}",ExitScript)
HotKeySet("{NUMPAD1}",ADCRole)
HotKeySet("{NUMPAD2}",SupportRole)
HotKeySet("{NUMPAD3}",MidLane)
HotKeySet("{NUMPAD4}",JUNGLELane)
HotKeySet("{NUMPAD5}",TopLane)
HotKeySet("{NUMPAD8}",KillGame)
While 1
WEnd

Func WinMov()
  Global $HWND=WinWait("[TITLE:League of Legends]","",5)
   IF NOT $HWND Then
	  MsgBox(0,"Error", "Window not Found")
   Else
	  $aPos = WinGetPos($HWND)
	  WinActivate($HWND)
      if($aPos[3] == 576) Then
		    WinMove($HWND,"",184, 76,$aPos[2],$aPos[3])
			MouseClick("left",222, 624)
		 Else
			WinMove($HWND,"",43, 44,$aPos[2],$aPos[3])
		 	MouseClick("left",76, 731)
	  EndIf
   EndIf
EndFunc

Func MidLane()
   WinMov()
   Send("MID lane" & @LF & "Средняя линия")
   Send("{ENTER}")
EndFunc

Func TopLane()
   WinMov()
   Send("TOP lane" & @LF & "Вверхния линия")
   Send("{ENTER}")
EndFunc


Func KillGame()
  ProcessClose("LeagueClient.exe")
EndFunc

Func JUNGLELane()
   WinMov()
   Send("JUNGLE" & @LF & "Лесник")
   Send("{ENTER}")
EndFunc

Func SupportRole()
   WinMov()
   Send("Bot lane role(support)" & @LF & "Нижния линия ,роль Поддержки")
   Send("{ENTER}")
EndFunc

Func ADCRole()
   WinMov()
   Send("Bot lane role(adc)" & @LF & "Нижния линия ,роль Кэрии")
   Send("{ENTER}")
EndFunc

Func ExitScript()
   Exit
EndFunc
