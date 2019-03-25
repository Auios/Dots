#include "mouse.bi"

sub updateMouse(m as Mouse ptr)
    with *m
        dim as long px = .x
        dim as long py = .y
        dim as long pw = .wheel
        .state = getMouse(.x, .y, .wheel, .buttons, .clip)
        .dx = .x-px
        .dy = .y-py
        .dWheel = .wheel - pw
    end with
end sub
