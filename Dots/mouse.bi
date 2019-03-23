#pragma once

#include "fbgfx.bi"

using fb

type Mouse
    as long state
    as long x, y
    as long dx, dy
    as long buttons
    as long wheel
    as long clip
    
    declare sub update()
end type

sub Mouse.update()
    this.state = getMouse(this.x, this.y, this.wheel, this.buttons, this.clip)
end sub
