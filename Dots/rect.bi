#pragma once

#include "pnt.bi"

type Rect
    as Pnt topLeft
    as Pnt botRight
    
    declare constructor()
    declare constructor(x0 as integer, y0 as integer, x1 as integer, y1 as integer)
    declare sub set(x0 as integer, y0 as integer, x1 as integer, y1 as integer)
    declare function intersects(r as Rect) as boolean
    declare function inBoundary(p as Pnt) as boolean
end type
