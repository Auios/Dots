#pragma once

#include "fbgfx.bi"

using fb

type Mouse
    as long state
    as long x, y   ' Current x,y
    as long dx, dy ' Delta x,y
    as long buttons
    as long wheel
    as long dWheel ' Delta wheel
    as long clip
    
    declare sub update()
end type

sub Mouse.update()
    dim as long px = this.x
    dim as long py = this.y
    dim as long pWheel = this.wheel
    this.state = getMouse(this.x, this.y, this.wheel, this.buttons, this.clip)
    this.dx = this.x-px
    this.dy = this.y-py
    this.dWheel = this.wheel - pWheel
end sub
