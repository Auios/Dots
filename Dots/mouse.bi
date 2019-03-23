#pragma once

#include "fbgfx.bi"

using fb

type Mouse
    as long x, y
    as long dx, dy
    as long button
    as long wheel
    
    declare sub update(e as EVENT ptr)
end type

sub Mouse.update(e as EVENT ptr)
    this.x = e->x
    this.y = e->y
    this.dx = e->dx
    this.dy = e->dy
    this.button = e->button
    this.wheel = e->z
end sub
