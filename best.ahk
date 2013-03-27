; ^ = Ctrl
; + = shift
; ! = Alt

;- ***
;- *** general shortcuts.
;- ***

#include iswitchw.ahk

;- PrintScreen -> Context menu
;- Ctrl - PrtScr -> really print screen
PrintScreen::AppsKey
^PrintScreen::PrintScreen

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

!+v::Send ^c^!vv{Enter}{Esc}

;- Shift-Alt-F -> highlight formula (orange)
!+f::Send /hfhdsfxg{Enter}/hh{left}{down}{Enter}^{home}
;- Shift-Alt-C -> highlight constants
!+c::Send /hfhdsoxg{Enter}/hh{left}{left}{down}{Enter}^{home}
;- Shift-Alt-B -> highlight both
!+b::Sendinput /hfhdsoxg{Enter}/hh{left}{left}{down}{Enter}^{home}/hfhdsfxg{Enter}/hh{left}{down}{Enter}^{home}
;- Shift-Alt-U -> unhighlight everything
!+u::Send ^a^a^a/hhn^{home}

;- Shift-Alt-9 -> cell no color
!+9::Send /hhn
;- Shift-Alt-8 -> cell green
!+8::Send /hh{Up}{Up}{Up}{Left}{Enter}
;- Shift-Alt-7 -> cell yellow
!+7::Send /hh{Up}{Up}{Up}{Left}{Left}{Enter}
;- Shift-Alt-6 -> cell orange
!+6::Send /hh{Up}{Up}{Up}{Left}{Left}{Left}{Enter}
;- Shift-Alt-0 -> cell white
!+0::Send /hh{Enter}

;- Shift-Alt-F9 -> tab no color
!+F9::Send /hotn
;- Shift-Alt-F8 -> tab green
!+F8::Send /hot{Up}{Up}{Up}{Left}{Enter}
;- Shift-Alt-F7 -> tab yellow
!+F7::Send /hot{Up}{Up}{Up}{Left}{Left}{Enter}
;- Shift-Alt-F6 -> tab orange
!+F6::Send /hot{Up}{Up}{Up}{Left}{Left}{Left}{Enter}
;- Shift-Alt-F0 -> tab white
!+F10::Send /hot{Enter}
