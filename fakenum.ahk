#UseHook On
#6:: ; windows key + the '6' key toggles the fake numlock
SetNumLockState, % (NumToggle := !NumToggle) ? "on" : "off"
Gui, 99:+ToolWindow
IfEqual, NumToggle, 0, Gui, 99:Destroy
Else Gui, 99: Show, NoActivate X-1 Y-1, Dummy Fake Numpad
SoundBeep, % 6+NumToggle "00", 25 ; audio cue for numlock
return

#IfWinExist, Dummy Fake Numpad
; note that for remaps like this, modifiers (ctrl, alt, shift) are
; taken into account automagically
SC032::Numpad0
SC008::Numpad7
SC009::Numpad8
SC00A::Numpad9
SC016::Numpad4
SC017::Numpad5
SC018::Numpad6
SC024::Numpad1
SC025::Numpad2
SC026::Numpad3
SC039::NumpadEnter
SC027::NumpadAdd
SC028::NumpadSub
SC019::NumpadMult
SC01A::NumpadDiv
SC033::,
SC034::NumpadDot
#IfWinExist,
#IfWinActive, Excalibur
SC032::Numpad0
SC008::Numpad7
SC009::Numpad8
SC00A::Numpad9
SC016::Numpad4
SC017::Numpad5
SC018::Numpad6
SC024::Numpad1
SC025::Numpad2
SC026::Numpad3
SC039::NumpadEnter
SC027::NumpadAdd
SC028::NumpadSub
SC019::NumpadMult
SC01A::NumpadDiv
SC033::,
SC034::NumpadDot
#IfWinActive,
#UseHook Off
