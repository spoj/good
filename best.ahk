/*

#IfWinActive, Microsoft Excel
WheelLeft::SendInput ^{PgUp}
XButton1::SendInput ^{PgUp}
WheelRight::SendInput ^{PgDn}
XButton2::SendInput ^{PgDn}
^WheelLeft::SendInput ^{c}
^WheelRight::SendInput ^v
^XButton1::SendInput ^{c}
^XButton2::SendInput ^v
^MButton::SendInput ^!vv{Enter}
MButton::SendInput {Alt}wwm

+WheelLeft::SendInput {Click}{Alt}aa
+WheelRight::SendInput {Click}{Alt}ad
+XButton1::SendInput {Click}{Alt}aa
+XButton2::SendInput {Click}{Alt}ad
+WheelDown::SendInput {Alt}as

#IfWinActive
^WheelLeft::SendInput ^{c}
^WheelRight::SendInput ^v
^XButton1::SendInput ^{c}
^XButton2::SendInput ^v

WheelLeft::Send {Browser_Back}
WheelRight::Send {Browser_Forward}
XButton1::Send {Browser_Back}
XButton2::Send {Browser_Forward}

*/

; ^ = Ctrl
; + = shift
; ! = Alt

;- *** for use with eaudit.
#IfWinActive, Engagement:

;- F3: Prepare for the current activity (need to have bottom navigation bar)
F3::
if (preparing = 1) {
  Return
} else {
  preparing = 1
  MouseGetPos, ox, oy
  MouseMove, 730, 750
  Click
  MouseMove, ox, oy
  SendInput {Enter}
  preparing = 0
  Return
}

;- F4: Save and prepare (need to have bottom navigation bar; left navigation side bar should be maximum width)
F4::
if (preparing = 1) {
  Return
} else {
  preparing = 1
  MouseGetPos, ox, oy
  Click, 490, 105
  Click, 730, 750
  MouseMove, ox, oy
  SendInput {Enter}
  preparing = 0
  Return
}

;- F5: Replace
F5::
click right
sleep 1000
loop 13 {
  Send {Down}
}
SendInput {Enter}
Click 780, 450
Return

;- ALt-Shift-LButton -> prepare item under cursor
!+LButton Up::
if (preparing = 1) {
  Return
} else {
  preparing = 1
  Click
  MouseGetPos, ox, oy
  Click, 730, 750
  MouseMove, ox, oy+24
  SendInput {Enter}
  preparing = 0
  Return
}

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
#^f::SendInput /hfhdsfxg{Enter}/hh{left}{down}{Enter}^{home}
;- Ctrl-Win-C -> highlight constants
#^c::SendInput /hfhdsoxg{Enter}/hh{left}{left}{down}{Enter}^{home}
;- Ctrl-Win-B -> highlight both
#^b::Sendinput /hfhdsoxg{Enter}/hh{left}{left}{down}{Enter}^{home}/hfhdsfxg{Enter}/hh{left}{down}{Enter}^{home}
;- Ctrl-Win-U -> unhighlight everything
#^u::SendInput ^a^a^a/hhn^{home}


/* #IfWinActive

#LButton::SendInput ^{PgUp}
#RButton::SendInput ^{PgDn}
+#LButton::SendInput ^+{PgUp}
+#RButton::SendInput ^+{PgDn}
*Capslock::Ctrl
*/
