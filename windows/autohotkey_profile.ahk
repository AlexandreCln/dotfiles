; To view Virtual Key Codes and Scan Codes, Open the main window of a running .ahk file. 
; Then, select View > “Key history and script info”. The column `VK` displays the Virtual Key Code
; for any pressed key, the column `SC` displays the Scan Code—both in hexadecimal. 

; Toggle Terminal with Alt+T
!t::
    if WinActive("ahk_class CASCADIA_HOSTING_WINDOW_CLASS")
    {
        WinMinimize
    }
    else if WinExist("ahk_class CASCADIA_HOSTING_WINDOW_CLASS")
    {
        WinActivate
    }
    else
    {
        Run wt.exe
    }
return

; Easy motions
global RAltDown
RAltDown = false

EnableRAltDown()
{
    RAltDown = true
}
DisableRAltDown()
{
    RAltDown = false
}

*RAlt::EnableRAltDown()
*RAlt up::DisableRAltDown()

#If (%RAltDown% = true)
    ; ARROW KEYS
    p::up
    l::left
    m::down
    SC028::right ; ù

    ; HOME & END
    o::home
    ^::end

    ; PAGE UP & DOWN
    i::PgUp
    $::PgDn

    ; ALT CHARS
    SC003::Send ~{space} ; é
    "::#
    '::{
    (::[
    -::|
    SC008::Send ``{space} ; è
    _::\
    SC00A::Send ^{space} ; ç
    SC00B::@ ; à
    )::]
    =::}
    e::€

    Backspace::Delete
#If

; Google search clipboard
#s::
{
 Send, ^c
 Sleep 50
 Run, https://www.google.com/search?q=%clipboard%
 Return
}

; Replace Win (#) + < with «
#<::
Send, «
return

; Replace Win (#) + Shift (+) + > with »
#+>::
Send, »
return

; Switch between windows of the same app
^SC029:: ; Ctrl+²
WinGetClass, OldClass, A
WinGet, ActiveProcessName, ProcessName, A
WinGet, WinClassCount, Count, ahk_exe %ActiveProcessName%
IF WinClassCount = 1
    Return
loop, 2 {
  WinSet, Bottom,, A
  WinActivate, ahk_exe %ActiveProcessName%
  WinGetClass, NewClass, A
  if (OldClass <> "CabinetWClass" or NewClass = "CabinetWClass")
    break
}
