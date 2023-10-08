; To view Virtual Key Codes and Scan Codes, Open the main window of a running .ahk file. 
; Next, select “Key history and script info” from the top View menu. The left-most column displays 
; the Virtual Key Code for any pressed key while the second column displays the Scan Code—both in hexadecimal. 

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
    ; arrow keys
    p::up
    l::left
    m::down
    SC028::right ; ù

    ; home & end
    o::home
    ^::end

    ; page up & down
    i::PgUp
    $::PgDn

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
#If
