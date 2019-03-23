#pragma once

#include "fbgfx.bi"

using fb

type Mouse
    as long state
    as long x, y   ' Current x,y
    as long px, py ' Previous x,y
    as long dx, dy ' Delta x,y
    as long buttons
    as long wheel
    as long clip
    
    declare sub update()
end type

sub Mouse.update()
    this.px = this.x
    this.py = this.y
    this.state = getMouse(this.x, this.y, this.wheel, this.buttons, this.clip)
    this.dx = this.x-this.px
    this.dy = this.y-this.py
end sub
