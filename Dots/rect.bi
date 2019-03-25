#pragma once

#include "pnt.bi"

type Rect
    as Pnt position
    as Pnt size
end type

declare function createRect(x as integer, y as integer, w as integer, h as integer) as Rect
declare function rectGetNW(r as Rect ptr) as Rect
declare function rectGetNE(r as Rect ptr) as Rect
declare function rectGetSW(r as Rect ptr) as Rect
declare function rectGetSE(r as Rect ptr) as Rect
declare sub setRect(r as Rect ptr, x as integer, y as integer, w as integer, h as integer)
declare sub offsetRect(r as Rect ptr, dx as integer, dy as integer)
declare function rectIntersects(r1 as Rect ptr, r2 as Rect ptr) as boolean
declare function rectContains(r as Rect ptr, p as Pnt ptr) as boolean
declare function toString overload(r as Rect ptr) as string
