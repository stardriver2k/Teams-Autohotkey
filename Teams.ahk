LControl & LAlt::
#HotkeyInterval 200
WinGet, active_id, ID, A
WinActivate, ahk_exe Teams.exe
Send ^+m
WinActivate, ahk_id %active_id%
SoundBeep, 200, 100
return


F12:: ;phone call
clipboard := "" ; Empty the clipboard
Send, ^c
ClipWait, 2

clipboard := StrReplace(clipboard, " ") ; Remove Blank
clipboard := StrReplace(clipboard, ".") ; Remove .
clipboard := StrReplace(clipboard, "/") ; Remove /
clipboard := StrReplace(clipboard, "-") ; Remove - symbol
clipboard := StrReplace(clipboard, "(0)") ; Remove german specifique manner to include (0) 

;MsgBox, clipboard = %clipboard%
Run, tel:%clipboard%

return
