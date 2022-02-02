#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Headlamp Claim (LTF)
	^1:: ; Invoke with Ctrl + 1
	Send, {CtrlDown}n{CtrlUp}
	Send, BDWSC {Enter}
	Send, {CtrlDown}r{CtrlUp}
	Send, {ShiftDown}{f4}{ShiftUp}
	Sleep, 10000
	Send, {Click 205 170 2} ; Double click on most recent download
	Loop, 3
	{
		Send, {Tab}
		Sleep, 250
	}
	Send, {Enter}
	Sleep 2000
	Send, {Click 144 676}{CtrlDown}v{CtrlUp} ; Click on No. column in Lines
	Sleep, 1000
	Send, {Tab}{AltDown}{down}{AltUp}{Enter}
	Sleep, 1000
	Loop, 7
	{
		Send, {tab}
		Sleep, 250
	}
	; Enter issue description
	Send, l{Tab}
	Send, t{Tab}
	Send, f{Tab}
	Loop, 4
	{
		Send, {Tab}
		Sleep, 250
	}
	Send, repl{Tab}
	Sleep, 250
	Send, {Click 788 946} ; Click on recieved item checkbox
	Send, {Tab}
	Sleep, 250
	Send, {Tab}
	Sleep, 250
	Send, {Enter}
	Sleep, 1000
	Loop, 3
	{
		Send, {Tab}
		Sleep, 250
	}
	Loop, 2
	{
		Send, 1{Tab} ; Quantity
		Sleep, 250
	}
Return

; Generic Return (Prompt)
	^2:: ; Invoke with Ctrl + 2
	InputBox, ReturnCodeOne, Return Reason Codes, Enter return reason code one., , 300, 150
	if ErrorLevel
    	Return
	InputBox, ReturnCodeTwo , Return Reason Codes, Enter return reason code two., , 300, 150
	if ErrorLevel
    	Return
	InputBox, ReturnCodeThree , Return Reason Codes, Enter return reason code three., , 300, 150
	if ErrorLevel
    	Return
	Send, {CtrlDown}n{CtrlUp}
	Send, BDWSC {Enter}
	Send, {CtrlDown}r{CtrlUp}
	Send, {ShiftDown}{f4}{ShiftUp}
	Sleep, 10000
	Send, {Click 205 170 2} ; Double click on most recent download
	Loop, 3
	{
		Send, {Tab}
		Sleep, 250
	}
	Send, {Enter}
	Sleep 2000
	Send, {Click 144 676}{CtrlDown}v{CtrlUp} ; Click on No. column in Lines
	Sleep, 1000
	Send, {Tab}{AltDown}{down}{AltUp}{Enter}
	Sleep, 1000
	Loop, 7
	{
		Send, {tab}
		Sleep, 250
	}
	; Enter issue description
	Send, %ReturnCodeOne%{Tab}
	Send, %ReturnCodeTwo%{Tab}
	Send, %ReturnCodeThree%{Tab}
	Loop, 4
	{
		Send, {Tab}
		Sleep, 250
	}
	Send, repl{Tab}
	Sleep, 250
	Send, {CtrlDown}{Enter}{CtrlUp}
	Sleep, 1000
	Loop, 3
	{
		Send, {tab}
		Sleep, 250
	}
	Send, 1
	Send, {tab}
	Sleep, 250
	Send, 1
Return

; Skin Return (GGG)
	^3:: ; Invoke with Ctrl + 3
	Send, {CtrlDown}n{CtrlUp}
	Send, BDWSC {Enter}
	Send, {CtrlDown}r{CtrlUp}
	Send, {ShiftDown}{f4}{ShiftUp}
	Sleep, 10000
	Send, {Click 205 170 2} ; Double click on most recent download
	Loop, 3
	{
		Send, {Tab}
		Sleep, 250
	}
	Send, {Enter}
	Sleep 2000
	Send, {Click 144 676}{CtrlDown}v{CtrlUp} ; Click on No. column in Lines
	Sleep, 1000
	Send, {Tab}{AltDown}{down}{AltUp}{Enter}
	Sleep, 1000
	Loop, 7
	{
		Send, {tab}
		Sleep, 250
	}
	; Enter issue description
	Send, g{Tab}
	Send, g{Tab}
	Send, g{Tab}
	Loop, 4
	{
		Send, {Tab}
		Sleep, 250
	}
	Send, repl{Tab}
	Sleep, 250
	Send, {CtrlDown}{Enter}{CtrlUp}
	Sleep, 1000
	Loop, 3
	{
		Send, {tab}
		Sleep, 250
	}
	Send, 1
	Send, {tab}
	Sleep, 250
	Send, 1
Return

; Dealer Credit
	^4:: ; Invoke with Ctrl + 4
	InputBox, DealerCode, Dealer Account Number, Enter dealer account number., , 300, 150
	if ErrorLevel
    	Return
	InputBox, ReturnCodeOne, Return Reason Codes, Enter return reason code one., , 300, 150
	if ErrorLevel
    	Return
	InputBox, ReturnCodeTwo , Return Reason Codes, Enter return reason code two., , 300, 150
	if ErrorLevel
    	Return
	InputBox, ReturnCodeThree , Return Reason Codes, Enter return reason code three., , 300, 150
	if ErrorLevel
    	Return	
	Send, {CtrlDown}n{CtrlUp}
	Send, %DealerCode%{Enter}
	Send, {CtrlDown}r{CtrlUp}
	Send, {ShiftDown}{f4}{ShiftUp}
	Sleep, 10000
	Send, {Click 205 170 2} ; Double click on most recent download
	Loop, 3
	{
		Send, {Tab}
		Sleep, 250
	}
	Send, {Enter}
	Sleep 2000
	Send, {Click 144 676}{CtrlDown}v{CtrlUp} ; Click on No. column in Lines, paste SKU
	Sleep, 1000
	Send, {Tab}{AltDown}{down}{AltUp}{Enter}
	Sleep, 1000
	Loop, 7
	{
		Send, {tab}
		Sleep, 250
	}
	; Enter issue description
	Send, %ReturnCodeOne%{Tab}
	Send, %ReturnCodeTwo%{Tab}
	Send, %ReturnCodeThree%{Tab}
	Loop, 4
	{
		Send, {Tab}
		Sleep, 250
	}
	Send, cred{Tab}
	Sleep, 250
	Send, {Click 788 946} ; Click on recieved item checkbox
	Send, {Tab}
	Sleep, 250
	Send, {Tab}
	Sleep, 250
	Send, {Enter}
	Sleep, 1000
	Loop, 3
	{
		Send, {Tab}
		Sleep, 250
	}
	Loop, 2
	{
		Send, 1{Tab} ; Quantity
		Sleep, 250
	}
Return

; Start Sales Return Order
	^5:: ; Invoke with Ctrl + 3
	Send, {CtrlDown}n{CtrlUp}
	Send, BDWSC {Enter}
	Send, {CtrlDown}r{CtrlUp}
	Send, {ShiftDown}{f4}{ShiftUp}
	Sleep, 10000
	Send, {Click 205 170 2} ; Double click on most recent download
	Loop, 3
	{
		Send, {Tab}
		Sleep, 250
	}
	Send, {Enter}
	Sleep 2000
return

^Esc::ExitApp  ; Exit script with Ctrl + Escape