; ^ = Ctrl
; + = shift
; ! = Alt

;- ***
;- *** general shortcuts.
;- ***

#include iswitchw-plus.ahk
#include fakenum.ahk

;- PrintScreen -> Context menu
;- Ctrl - PrtScr -> really print screen
RAlt::AppsKey

;- Alt-Shift-; -> date
!+;::
FormatTime, d,, yyyyMMdd-HHmm
SendInput %d%
Return

;- *** for use with excel.
#IfWinActive, Microsoft Excel
;- 
;- * copy and paste functions

;- ALt-Shift-LButton -> copy
!+LButton Up::SendInput {Click}^{c}

;- Alt-Shift-RButton -> paste value
!+RButton::SendInput {Click}^!vv{Enter}

;- Ctrl-Alt-RButton -> paste link
^!RButton::SendInput {Click}^!vl

;- Ctrl-Alt-Shift-rbutton -> paste
^!+RButton::SendInput {Click}^v



;- 
;- * switch sheets
;- Tilt left -> switch to left sheet
;- Tilt right -> opposite
WheelLeft::SendInput ^{PgUp}
WheelRight::SendInput ^{PgDn}
+WheelLeft::SendInput ^+{PgUp}
+WheelRight::SendInput ^+{PgDn}


;- 
;- * highlight functions
;- F3 -> format the selected cells as accounting format
F3::
SendInput /hfm!cacc!d0!s{Home}{Enter}{Enter}
return

!+v::
KeyWait Alt
KeyWait Shift
KeyWait v
SendInput ^c/hvsv{Enter}{Esc}
return

;- Shift-Alt-F -> highlight formula (orange)
!+f::SendInput /hfhdsfxg{Enter}/hh{left}{down}{Enter}^{home}
;- Shift-Alt-C -> highlight constants
!+c::SendInput /hfhdsoxg{Enter}/hh{left}{left}{down}{Enter}^{home}
;- Shift-Alt-B -> highlight both
!+b::SendInput /hfhdsoxg{Enter}/hh{left}{left}{down}{Enter}^{home}/hfhdsfxg{Enter}/hh{left}{down}{Enter}^{home}
;- Shift-Alt-U -> unhighlight everything
!+u::SendInput ^a^a^a/hhn^{home}

;- Shift-Alt-4 -> cell no color
!+4::SendInput /hhn
;- Shift-Alt-3 -> cell green
!+3::SendInput /hh{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Right}{Right}{Enter}
;- Shift-Alt-2 -> cell yellow
!+2::SendInput /hh{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Right}{Enter}
;- Shift-Alt-1 -> cell orange
!+1::SendInput /hh{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Enter}
;- Shift-Alt-0 -> cell white
!+0::SendInput /hh{Enter}

;- Shift-Alt-- -> tab 0.5 width
!+-::SendInput /how0.5{Enter}

;- Shift-Alt-+ -> tab 13 width
!++::SendInput /how13{Enter}

;- Shift-Alt-F4 -> tab no color
!+F4::SendInput /hotn
;- Shift-Alt-F3 -> tab green
!+F3::SendInput /hot{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Right}{Right}{Enter}
;- Shift-Alt-F2 -> tab yellow
!+F2::SendInput /hot{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Right}{Enter}
;- Shift-Alt-F1 -> tab orange
!+F1::SendInput /hot{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Enter}
;- Shift-Alt-F10 -> tab white
!+F10::SendInput /hot{Enter}
