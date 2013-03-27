; ^ = Ctrl
; + = shift
; ! = Alt

;- *** general shortcuts.

;- PrintScreen mapped to context menu key for T430s. Printscreen can be accessed by Ctrl-Prtscr
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

;- Ctrl-Win-F -> highlight formula (orange)
!*f::SendInput /hfhdsfxg{Enter}/hh{left}{down}{Enter}^{home}
;- Ctrl-Win-C -> highlight constants
!*c::SendInput /hfhdsoxg{Enter}/hh{left}{left}{down}{Enter}^{home}
;- Ctrl-Win-B -> highlight both
!*b::Sendinput /hfhdsoxg{Enter}/hh{left}{left}{down}{Enter}^{home}/hfhdsfxg{Enter}/hh{left}{down}{Enter}^{home}
;- Ctrl-Win-U -> unhighlight everything
!*u::SendInput ^a^a^a/hhn^{home}

;- Ctrl-Win-9 -> no
!*9::SendInput /hhn
;- Ctrl-Win-8 -> green
!*8::SendInput /hh{Up}{Up}{Up}{Left}{Enter}
;- Ctrl-Win-7 -> yellow
!*7::SendInput /hh{Up}{Up}{Up}{Left}{Left}{Enter}
;- Ctrl-Win-6 -> orange
!*6::SendInput /hh{Up}{Up}{Up}{Left}{Left}{Left}{Enter}
;- Ctrl-Win-0 -> white
!*0::SendInput /hh{Enter}
