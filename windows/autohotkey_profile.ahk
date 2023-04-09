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
    ù::right

    ; home & end
    o::home
    ^::end

    é::Send ~{space}
    "::#
    '::{
    (::[
    -::|
    è::Send ``{space}
    _::\
    ç::Send ^{space}
    à::@
    )::]
    =::}
#If
