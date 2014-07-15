; ^ = Ctrl
; + = shift
; ! = Alt

;- *** general shortcuts.
;- 
;- Alt-Shift-; -> date
;- 
!+;::
FormatTime, d,, yyyyMMdd-HHmm
SendInput %d%
Return

;- *** for use with excel.
;- 
#IfWinActive, Microsoft Excel

;- * copy and paste functions
;- 

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
;- 
;- Tilt left -> switch to left sheet
;- Tilt right -> opposite
WheelLeft::SendInput ^{PgUp}
WheelRight::SendInput ^{PgDn}
+WheelLeft::SendInput ^+{PgUp}
+WheelRight::SendInput ^+{PgDn}


;- 
;- * Format functions
;- 
;- F5 -> format as merged text
F5::
KeyWait F5
SendInput {Tab}+{Tab}/hmu^1a!m!hj{Enter}!v{Home}{Enter}{Enter}
return

;-
;- F3 -> format the selected cells as accounting format
F3::
SendInput {Tab}+{Tab}^1n!cacc!d0!s{Home}{Enter}{Enter}
return

!+v::
KeyWait Alt
KeyWait Shift
KeyWait v
SendInput ^c/hvsv{Enter}{Esc}
return

;- 
;- * Format functions
;- 
;- Shift-Alt-F -> highlight formula (orange)
!+f::SendInput {Tab}+{Tab}/hfhdsfxg{Enter}/hh{left}{down}{Enter}^{home}
;- Shift-Alt-C -> highlight constants
!+c::SendInput {Tab}+{Tab}/hfhdsoxg{Enter}/hh{left}{left}{down}{Enter}^{home}
;- Shift-Alt-B -> highlight both
!+b::SendInput {Tab}+{Tab}/hfhdsoxg{Enter}/hh{left}{left}{down}{Enter}^{home}/hfhdsfxg{Enter}/hh{left}{down}{Enter}^{home}
;- Shift-Alt-U -> unhighlight everything
!+u::SendInput {Tab}+{Tab}^a^a^a/hhn^{home}

;- Shift-Alt-4 -> cell no color
!+4::SendInput {Tab}+{Tab}^1b^{PgDn}{Tab}{Enter}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}
;- Shift-Alt-3 -> cell green
!+3::SendInput {Tab}+{Tab}^1b^{PgDn}{Tab}{Tab}{Up}{Up}{Right}{Right}{Right}{Right}{Enter}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}
;- Shift-Alt-2 -> cell yellow
!+2::SendInput {Tab}+{Tab}^1b^{PgDn}{Tab}{Tab}{Up}{Up}{Right}{Right}{Right}{Enter}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}
;- Shift-Alt-1 -> cell orange
!+1::SendInput {Tab}+{Tab}^1b^{PgDn}{Tab}{Tab}{Up}{Up}{Right}{Right}{Enter}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}

;- Shift-Alt-- -> column 0.5 width
!+-::SendInput {Tab}+{Tab}/how0.5{Enter}

;- Shift-Alt-+ -> column 13 width
!++::SendInput {Tab}+{Tab}/how13{Enter}

;- Shift-Alt-F4 -> tab no color
!+F4::SendInput {Tab}+{Tab}/hotn
;- Shift-Alt-F3 -> tab green
!+F3::SendInput {Tab}+{Tab}/hot{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Right}{Right}{Enter}
;- Shift-Alt-F2 -> tab yellow
!+F2::SendInput {Tab}+{Tab}/hot{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Right}{Enter}
;- Shift-Alt-F1 -> tab orange
!+F1::SendInput {Tab}+{Tab}/hot{Down}{Down}{Down}{Down}{Down}{Down}{Right}{Right}{Enter}
;- Shift-Alt-F10 -> tab white
!+F10::SendInput {Tab}+{Tab}/hot{Enter}
