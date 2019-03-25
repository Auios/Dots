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
end type

declare sub updateMouse(m as Mouse ptr)
