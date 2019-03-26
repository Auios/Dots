#pragma once

#include "pnt.bi"

type Rect
    as Pnt position
    as Pnt size
end type

declare function rect_create(x as integer, y as integer, w as integer, h as integer) as Rect
declare function rect_getNW(r as Rect ptr) as Rect
declare function rect_getNE(r as Rect ptr) as Rect
declare function rect_getSW(r as Rect ptr) as Rect
declare function rect_getSE(r as Rect ptr) as Rect
'declare sub setRect(r as Rect ptr, x as integer, y as integer, w as integer, h as integer)
declare sub rect_offset(r as Rect ptr, dx as integer, dy as integer)
declare function rect_intersects(r1 as Rect ptr, r2 as Rect ptr) as boolean
declare function rect_contains(r as Rect ptr, p as Pnt ptr) as boolean
declare function toString overload(r as Rect ptr) as string

#MACRO rect_set(_r, _x, _y, _w, _h)
setPnt((_r)->position,(_x),(_y)):setPnt((_r)->size,(_w),(_h))
#ENDMACRO