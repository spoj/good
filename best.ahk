; ^ = Ctrl
; + = shift
; ! = Alt

;- ***
;- *** general shortcuts.
;- ***
#IfWinActive,

#include iswitchw-plus.ahk

;- PrintScreen -> Context menu
;- Ctrl - PrtScr -> really print screen
RAlt::AppsKey

;- Alt-Shift-; -> date
!+;::
FormatTime, d,, yyyyMMdd-HHmm
Send %d%
Return

;- *** for use with excel.
#IfWinActive, Microsoft Excel
;- 
;- * copy and paste functions

;- ALt-Shift-LButton -> copy
!+LButton Up::Send {Click}^{c}

;- Alt-Shift-RButton -> paste value
!+RButton::Send {Click}^!vv{Enter}

;- Ctrl-Alt-RButton -> paste link
^!RButton::Send {Click}^!vl

;- Ctrl-Alt-Shift-rbutton -> paste
^!+RButton::Send {Click}^v



;- 
;- * switch sheets
;- Tilt left -> switch to left sheet
;- Tilt right -> opposite
WheelLeft::Send ^{PgUp}
WheelRight::Send ^{PgDn}
+WheelLeft::Send ^+{PgUp}
+WheelRight::Send ^+{PgDn}


;- 
;- * highlight functions
;- F3 -> format the selected cells as accounting format
F3::
Send /hfm!cacc!d0!s{Home}{Enter}{Enter}
return

!+v::Send ^c/hvsv{Enter}{Esc}

;- Shift-Alt-F -> highlight formula (orange)
!+f::Send /hfhdsfxg{Enter}/hh{left}{down}{Enter}^{home}
;- Shift-Alt-C -> highlight constants
!+c::Send /hfhdsoxg{Enter}/hh{left}{left}{down}{Enter}^{home}
;- Shift-Alt-B -> highlight both
!+b::Sendinput /hfhdsoxg{Enter}/hh{left}{left}{down}{Enter}^{home}/hfhdsfxg{Enter}/hh{left}{down}{Enter}^{home}
;- Shift-Alt-U -> unhighlight everything
!+u::Send ^a^a^a/hhn^{home}

;- Shift-Alt-4 -> cell no color
!+4::Send /hhn
;- Shift-Alt-3 -> cell green
!+3::Send /hh{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Right}{Right}{Enter}
;- Shift-Alt-2 -> cell yellow
!+2::Send /hh{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Right}{Enter}
;- Shift-Alt-1 -> cell orange
!+1::Send /hh{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Enter}
;- Shift-Alt-0 -> cell white
!+0::Send /hh{Enter}

;- Shift-Alt-- -> tab 0.5 width
!+-::Send /how0.5{Enter}

;- Shift-Alt-+ -> tab 13 width
!++::Send /how13{Enter}

;- Shift-Alt-F4 -> tab no color
!+F4::Send /hotn
;- Shift-Alt-F3 -> tab green
!+F3::Send /hot{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Right}{Right}{Enter}
;- Shift-Alt-F2 -> tab yellow
!+F2::Send /hot{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Right}{Enter}
;- Shift-Alt-F1 -> tab orange
!+F1::Send /hot{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Enter}
;- Shift-Alt-F10 -> tab white
!+F10::Send /hot{Enter}

