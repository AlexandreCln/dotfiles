; To view Virtual Key Codes and Scan Codes, Open the main window of a running .ahk file. 
; Then, select View > “Key history and script info”. The column `VK` displays the Virtual Key Code
; for any pressed key, the column `SC` displays the Scan Code—both in hexadecimal. 

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
