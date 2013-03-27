; ^ = Ctrl
; + = shift
; ! = Alt

;- ***
;- *** general shortcuts.
;- ***

;- PrintScreen -> Context menu
;- Ctrl - PrtScr -> really print screen
PrintScreen::AppsKey
^PrintScreen::PrintScreen

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

;- Shift-Alt-F -> highlight formula (orange)
!*f::SendInput /hfhdsfxg{Enter}/hh{left}{down}{Enter}^{home}
;- Shift-Alt-C -> highlight constants
!*c::SendInput /hfhdsoxg{Enter}/hh{left}{left}{down}{Enter}^{home}
;- Shift-Alt-B -> highlight both
!*b::Sendinput /hfhdsoxg{Enter}/hh{left}{left}{down}{Enter}^{home}/hfhdsfxg{Enter}/hh{left}{down}{Enter}^{home}
;- Shift-Alt-U -> unhighlight everything
!*u::SendInput ^a^a^a/hhn^{home}

;- Shift-Alt-9 -> cell no color
!*9::SendInput /hhn
;- Shift-Alt-8 -> cell green
!*8::SendInput /hh{Up}{Up}{Up}{Left}{Enter}
;- Shift-Alt-7 -> cell yellow
!*7::SendInput /hh{Up}{Up}{Up}{Left}{Left}{Enter}
;- Shift-Alt-6 -> cell orange
!*6::SendInput /hh{Up}{Up}{Up}{Left}{Left}{Left}{Enter}
;- Shift-Alt-0 -> cell white
!*0::SendInput /hh{Enter}

;- Shift-Alt-F9 -> tab no color
!*F9::SendInput /hotn
;- Shift-Alt-F8 -> tab green
!*F8::SendInput /hot{Up}{Up}{Up}{Left}{Enter}
;- Shift-Alt-F7 -> tab yellow
!*F7::SendInput /hot{Up}{Up}{Up}{Left}{Left}{Enter}
;- Shift-Alt-F6 -> tab orange
!*F6::SendInput /hot{Up}{Up}{Up}{Left}{Left}{Left}{Enter}
;- Shift-Alt-F0 -> tab white
!*F10::SendInput /hot{Enter}
